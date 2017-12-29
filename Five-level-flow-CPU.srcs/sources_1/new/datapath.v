`include "defines.vh"
module datapath (
	input wire clk,
	input wire rst,
	//fetch stage
	output wire[31:0] pcF,
	input wire[31:0] instrF,
	//decode stage
	input wire pcsrcD,
	input wire branchD,
	input wire [1:0] jumpD,
	input wire invalidD,
	input wire [7:0] eqcontrolD,
	output wire equalD,
	output wire[5:0] opD,
	output wire[5:0] functD,
	output wire[4:0] rs,
	output wire[4:0] rt,
	output wire[4:0] rd,
	//execute stage
	input wire memtoregE,
	input wire alusrcE,
	input wire [1:0] regdstE,
	input wire regwriteE,
	input wire[7:0] alucontrolE,
	output wire flushE,
	output wire overflowclear,
	output stallE,
	//mem stage
	input wire [1:0] hiloweM,
	input wire memtoregM,
	input wire regwriteM,
	input wire cp0writeM,
	output wire[31:0] aluoutM,
	output wire[31:0] writedataM,
	input wire[31:0] readdataM,
	//writeback stage
	input wire memtoregW,
	input wire regwriteW,
	input wire cp0writeW,
	input wire[1:0] hiloweW,
	input lw_format,
	output flushW, 
	input wire is_in_delayslot
);

//fetch stage
wire stallF;
//FD
wire [31:0] pcnextFD, pcnextbrFD, pcplus4F, pcbranchD;
//decode stage
wire [31:0] pcplus4D, instrD;
wire forwardaD, forwardbD;
wire [4:0] rsD, rtD, rdD, saD;
wire stallD;
wire [31:0] signimmD, signimmshD;
wire [31:0] srcaD, srca2D, srcbD, srcb2D;
//
wire syscallD,breakD,eretD;
// execute stage
wire stallE;
wire [1:0] forwardaE, forwardbE, forwardhiE, forwardloE;
wire [1:0] foward_j_rsD;
wire [4:0] rsE, rtE, rdE, saE;
wire [4:0] writeregE;
wire [31:0] signimmE;
wire [31:0] srcaE, srca2E, srcbE, srcb2E, srcb3E;
wire [31:0] aluoutE;
wire [63:0] hilo_alu_outE;
//mem stage
wire [4:0] writeregM;
//writeback stage
wire [4:0] writeregW;
wire [31:0] aluoutW, readdataW, resultW;
wire [39:0] asciiInstr;
wire flushW;

wire cancleDiv;
assign cancleDiv = 0 ;
//add the exception 
wire [7:0] exceptF,exceptD,exceptE,exceptM;


wire		div_ready;
wire 		div_start;
wire [31:0] hi_aluout;
wire [31:0] lo_aluout;
wire [31:0] hi_divout;
wire [31:0] lo_divout;
wire choseDiv;
wire Forwardcp0E;
wire [`RegBus] cp0DataE,cp0Data2E;
wire [4:0]writeCp0D,writeCp0E,writeCp0M,writeCp0W;
wire stallM;
wire flushM;
wire flushF;
wire [31:0] newpcW;
wire flushD;
//hazard detection

wire[4:0] waddr_i;
wire[4:0] raddr_i;
	//data write in the cp0_reg
wire[`RegBus] data_i;
	//hardware interput
wire[5:0] int_i;
	//unknown
wire[`RegBus] excepttype_i;
wire[`RegBus] current_inst_addr_i;

	//judege if in the delayslot
wire is_in_delayslot_i;
	//unknown
wire[`RegBus] bad_addr_i;
//output of the cp0_reg
wire[`RegBus] data_o,count_o,compare_o,status_o,cause_o,epc_o, config_o,prid_o,badvaddr;
wire timer_int_o;
wire [31:0] excepttypeW;
wire [31:0] pcplus8W;
//writeback stage
wire [63:0] hilo_alu_outW;



hazard h(
	//fetch stage
	stallF,
	flushF,
	//decode stage
	flushD,
	jumpD,
	rsD,rtD,
	branchD,
	eqcontrolD,
	forwardaD,forwardbD,
	stallD,
	//execute stage
	div_start,
	div_ready,
	stallE,
	rsE,rdE,rtE,
	writeregE,
	regwriteE,
	memtoregE,
	alucontrolE,
	hiloweM,
	forwardaE,forwardbE,
	forwardhiE,forwardloE,
	foward_j_rsD,
	flushE,
	//mem stage
	writeregM,
	writeCp0M,
	writeCp0E,
	regwriteM,
	cp0writeM,
	memtoregM,
	stallM,flushM,
	excepttypeW,
	epc_o,
	newpcW,
	//write back stage
	writeregW,
	regwriteW,
	hiloweW,
	lw_format,
	Forwardcp0E,
	flushW
	);

//next PC logic (operates in fetch an decode)
wire [31:0] srcaD_mux;
mux2 #(32) pcbrmux(pcplus4F, pcbranchD, pcsrcD, pcnextbrFD);
mux3 #(32) j_rsmux(srcaD,aluoutM,aluoutE,foward_j_rsD,srcaD_mux);
mux3 #(32) pcmux(pcnextbrFD,{pcplus4D[31:28], instrD[25:0], 2'b00},srcaD_mux,
	jumpD,pcnextFD);
wire [31:0] pcNewFD;
mux2 #(32) pcNewmux(pcnextFD,newpcW,flushF,pcNewFD);
//regfile (operates in decode and writeback)
regfile rf(clk, regwriteW, rsD, rtD, writeregW, resultW, srcaD, srcbD);
//hilo reg
hilo_reg hilo(clk,rst,hiloweW,hilo_alu_outW[63:32], hilo_alu_outW[31:0], hilo_outD[63:32], hilo_outD[31:0]);
//cp0_reg


assign writeCp0D = instrD[15:11];

assign cp0DataE = data_o;


//fetch stage logic
flopenr #(32) pcreg(clk, rst, ~stallF, pcNewFD, pcF);
adder pcadd1(pcF, 32'b100, pcplus4F);
assign exceptF = (pcF[1:0] == 2'b00) ? 8'b00000000 : 8'b10000000;
//decode stage
flopenrc #(32) r1D(clk, rst, ~stallD,flushD, pcplus4F, pcplus4D);
flopenrc #(32) r2D(clk, rst, ~stallD,flushD,instrF, instrD);
flopenrc #(8) r3D(clk,rst,~stallD,flushD,exceptF,exceptD);

signext se(instrD[15:0],instrD[29:28],signimmD);
sl2 immsh(signimmD, signimmshD);
adder pcadd2(pcplus4D, signimmshD, pcbranchD);
mux2 #(32) forwardamux(srcaD, aluoutM, forwardaD, srca2D);
mux2 #(32) forwardbmux(srcbD, aluoutM, forwardbD, srcb2D);
eqcmp comp(srca2D, srcb2D, eqcontrolD, equalD);
instdec showinst(instrD,asciiInstr);
assign opD = instrD[31:26];
assign functD = instrD[5:0];
assign rsD = instrD[25:21];
assign rtD = instrD[20:16];
assign rdD = instrD[15:11];
assign rs = instrD[25:21];
assign rt = instrD[20:16];
assign rd = instrD[15:11];
assign saD = instrD[10:6];
//add tge specitall five instructions
assign syscallD = (opD == 6'b000000 && functD == 6'b001100);
assign breakD = (opD == 6'b000000 && functD == 6'b001101);
assign eretD = (instrD == 32'b01000010000000000000000000011000);


//execute stage
wire [63:0] hilo_outE;
wire [63:0] hilo_out_muxE;
wire [32:0] pcplus8E;
wire [63:0] hilo_outD;

flopenrc #(64) r13E(clk, rst, ~stallE, flushE, pcplus4D+4, pcplus8E);
flopenrc #(64) r14E(clk, rst, ~stallE, flushE, hilo_outD, hilo_outE);
flopenrc #(32) r1E(clk, rst, ~stallE, flushE, srcaD, srcaE);
flopenrc #(32) r2E(clk, rst, ~stallE,flushE, srcbD, srcbE);
flopenrc #(32) r3E(clk, rst, ~stallE,flushE, signimmD, signimmE);
flopenrc #(5) r4E(clk,rst,~stallE,flushE,rsD,rsE);
flopenrc #(5) r5E(clk,rst,~stallE,flushE,rtD,rtE);
flopenrc #(5) r6E(clk,rst,~stallE,flushE,rdD,rdE);
flopenrc #(5) r16E(clk,rst,~stallE,flushE,writeCp0D,writeCp0E);
flopenrc #(32) r18E(clk,rst,~stallE,flushE,instrD[15:11],raddr_i);

flopenrc #(8) r10E(clk,rst,~stallE,flushE,
		{exceptD[7],syscallD,breakD,eretD,invalidD,exceptD[2:0]},
		exceptE);
//flopenrc #(1) r7E(clk,rst,~stallE,flushE,jrD,jrE);
//flopenrc #(32) r8E(clk,rst,~stallE,flushE,pcplus4D+4,pcplus8E);
//flopenrc #(1) r9E(clk,rst,~stallE,flushE,balD,balE);
flopenrc #(5) r40E(clk,rst,~stallE,flushE,saD,saE);

mux3 #(32) forwardaemux(srcaE, resultW, aluoutM, forwardaE, srca2E);
mux3 #(32) forwardbemux(srcbE, resultW, aluoutM, forwardbE, srcb2E);
mux3 #(32) forwardhimux(hilo_outE[63:32], hilo_alu_outW[63:32], hilo_alu_outM[63:32], forwardhiE, hilo_out_muxE[63:32]);
mux3 #(32) forwardlomux(hilo_outE[31:0], hilo_alu_outW[31:0], hilo_alu_outM[31:0], forwardloE, hilo_out_muxE[31:0]);
mux2 #(32) srcbmux(srcb2E, signimmE, alusrcE, srcb3E);

mux2 #(32) cp0mux(cp0DataE,aluoutM,Forwardcp0E,cp0Data2E);
alu alu(alucontrolE, srca2E, srcb3E, aluoutE, overflowclear, saE, hilo_out_muxE[63:32],hilo_out_muxE[31:0],hi_aluout, lo_aluout,pcplus8E,cp0Data2E);

//div module
assign choseDiv = (alucontrolE == `EXE_DIV_OP || alucontrolE==`EXE_DIVU_OP)?1'b1:1'b0;
mux2 #(32) hiOutchoose(hi_aluout,hi_divout,choseDiv,hilo_alu_outE[63:32]);
mux2 #(32) liOutchoose(lo_aluout,lo_divout,choseDiv,hilo_alu_outE[31:0]);

divider_Primary div_p(clk,rst,alucontrolE,srca2E,srcb3E,cancleDiv,{hi_divout,lo_divout},div_ready,div_start);

mux3 #(5) wrmux(rtE, rdE,32'b11111, regdstE, writeregE);

//mem stage
wire [63:0] hilo_alu_outM;
wire [31:0] pcplus8M;
flopenrc #(64)  r4M(clk, rst,~stallM,flushM, hilo_alu_outE, hilo_alu_outM);
flopenrc #(32) r1M(clk, rst, ~stallM,flushM, srcb2E, writedataM);
flopenrc #(32) r2M(clk, rst,~stallM,flushM, aluoutE, aluoutM);
flopenrc #(5) r3M(clk,rst, ~stallM,flushM,writeregE,writeregM);
flopenrc #(32) r55M(clk,rst, ~stallM,flushM,writeregE,writeregM);
flopenrc #(5)  r11M(clk,rst,~stallM,flushM,writeCp0E,writeCp0M);
flopenrc #(32) r10M(clk,rst,~stallM,flushM,pcplus8E,pcplus8M);
wire adelM;
assign adelM = 1'b0;
wire adesM;
assign adesM = 1'b0;
wire [31:0] excepttypeM;
flopenrc #(8) r9M(clk,rst,~stallM,flushM,{exceptE[7:3],overflowclear,exceptE[1:0]},exceptM);
exception exception(rst,exceptM,adelM,adesM,status_o,cause_o,excepttypeM);


floprc #(64) r4W(clk,rst,flushW,hilo_alu_outM,hilo_alu_outW);
floprc #(32) r1W(clk,rst,flushW,aluoutM,aluoutW);
floprc #(32) r2W(clk,rst,flushW,readdataM,readdataW);
floprc #(5) r3W(clk,rst,flushW,writeregM,writeregW);
floprc #(5) r12w(clk,rst,flushW,writeCp0M,writeCp0W);
floprc #(32) r8W(clk,rst,flushW,excepttypeM,excepttypeW);
floprc #(32) r9W(clk,rst,flushW,pcplus8M,pcplus8W);
mux2 #(32) resmux(aluoutW,readdataW,memtoregW,resultW);

cp0_reg cp0reg(clk,rst,cp0writeW,writeCp0W,raddr_i,resultW,int_i,
	excepttypeW,pcplus8W-8,is_in_delayslot,bad_addr_i,
	data_o,count_o,compare_o,status_o,cause_o,epc_o,config_o,prid_o,
	badvaddr,timer_int_o);
endmodule
