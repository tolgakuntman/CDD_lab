// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Mar 19 11:40:31 2025
// Host        : Gok2s_Victus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Goktug/Desktop/CDD_LAB/CDD_lab/lab3/lab3/lab3.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.v
// Design      : design_1_uart_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_top_0_0,uart_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_top,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_uart_top_0_0
   (iClk,
    iRst,
    iRx,
    oTx);
  input iClk;
  input iRst;
  input iRx;
  output oTx;

  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;

  design_1_uart_top_0_0_uart_top inst
       (.iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .oTx(oTx));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module design_1_uart_top_0_0_uart_rx
   (E,
    rFSM14_out,
    D,
    iRx,
    iClk,
    Q,
    \rCntRx_reg[7] ,
    \rCntRx_reg[7]_0 ,
    \rCntRx_reg[6] ,
    \rCntRx_reg[5] ,
    \rCntRx_reg[4] ,
    \rCntRx_reg[3] ,
    \rCntRx_reg[2] ,
    iRst);
  output [0:0]E;
  output rFSM14_out;
  output [7:0]D;
  input iRx;
  input iClk;
  input [2:0]Q;
  input [7:0]\rCntRx_reg[7] ;
  input \rCntRx_reg[7]_0 ;
  input \rCntRx_reg[6] ;
  input \rCntRx_reg[5] ;
  input \rCntRx_reg[4] ;
  input \rCntRx_reg[3] ;
  input \rCntRx_reg[2] ;
  input iRst;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rFSM_Current[0]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_4_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_4_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_5_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_6_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire \FSM_sequential_rFSM[1]_i_3_n_0 ;
  wire [2:0]Q;
  wire [7:7]data0;
  wire iClk;
  wire iRst;
  wire iRx;
  wire in6;
  wire [2:0]rBit_Current;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rBit_Current[2]_i_3_n_0 ;
  wire \rBit_Current[2]_i_4_n_0 ;
  wire \rCntRx_reg[2] ;
  wire \rCntRx_reg[3] ;
  wire \rCntRx_reg[4] ;
  wire \rCntRx_reg[5] ;
  wire \rCntRx_reg[6] ;
  wire [7:0]\rCntRx_reg[7] ;
  wire \rCntRx_reg[7]_0 ;
  wire [11:0]rCnt_Current;
  wire \rCnt_Current[0]_i_1_n_0 ;
  wire \rCnt_Current[10]_i_1_n_0 ;
  wire \rCnt_Current[11]_i_1_n_0 ;
  wire \rCnt_Current[1]_i_1_n_0 ;
  wire \rCnt_Current[2]_i_1_n_0 ;
  wire \rCnt_Current[3]_i_1_n_0 ;
  wire \rCnt_Current[4]_i_1_n_0 ;
  wire \rCnt_Current[5]_i_1_n_0 ;
  wire \rCnt_Current[6]_i_1_n_0 ;
  wire \rCnt_Current[7]_i_1_n_0 ;
  wire \rCnt_Current[8]_i_1_n_0 ;
  wire \rCnt_Current[9]_i_1_n_0 ;
  wire \rCnt_Current[9]_i_2__0_n_0 ;
  wire rFSM14_out;
  wire rRx1;
  wire wBit_Next;
  wire wCnt_Next0_carry__0_n_0;
  wire wCnt_Next0_carry__0_n_1;
  wire wCnt_Next0_carry__0_n_2;
  wire wCnt_Next0_carry__0_n_3;
  wire wCnt_Next0_carry__0_n_4;
  wire wCnt_Next0_carry__0_n_5;
  wire wCnt_Next0_carry__0_n_6;
  wire wCnt_Next0_carry__0_n_7;
  wire wCnt_Next0_carry__1_n_2;
  wire wCnt_Next0_carry__1_n_3;
  wire wCnt_Next0_carry__1_n_5;
  wire wCnt_Next0_carry__1_n_6;
  wire wCnt_Next0_carry__1_n_7;
  wire wCnt_Next0_carry_n_0;
  wire wCnt_Next0_carry_n_1;
  wire wCnt_Next0_carry_n_2;
  wire wCnt_Next0_carry_n_3;
  wire wCnt_Next0_carry_n_4;
  wire wCnt_Next0_carry_n_5;
  wire wCnt_Next0_carry_n_6;
  wire wCnt_Next0_carry_n_7;
  wire wRxDone;
  wire [3:2]NLW_wCnt_Next0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_wCnt_Next0_carry__1_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_rFSM_Current[0]_i_1 
       (.I0(data0),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(wRxDone),
        .O(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rFSM_Current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(data0),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAFFEAEA)) 
    \FSM_onehot_rFSM_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \FSM_onehot_rFSM_Current[2]_i_2 
       (.I0(rBit_Current[2]),
        .I1(rBit_Current[0]),
        .I2(rBit_Current[1]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000200020002FFFF)) 
    \FSM_onehot_rFSM_Current[2]_i_3 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_4_n_0 ),
        .I1(rCnt_Current[7]),
        .I2(rCnt_Current[8]),
        .I3(rCnt_Current[9]),
        .I4(rCnt_Current[10]),
        .I5(rCnt_Current[11]),
        .O(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    \FSM_onehot_rFSM_Current[2]_i_4 
       (.I0(rCnt_Current[4]),
        .I1(rCnt_Current[3]),
        .I2(rCnt_Current[2]),
        .I3(rCnt_Current[5]),
        .I4(rCnt_Current[6]),
        .I5(rCnt_Current[11]),
        .O(\FSM_onehot_rFSM_Current[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \FSM_onehot_rFSM_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(rBit_Current[2]),
        .I3(rBit_Current[0]),
        .I4(rBit_Current[1]),
        .I5(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .O(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \FSM_onehot_rFSM_Current[3]_i_2 
       (.I0(\FSM_onehot_rFSM_Current[3]_i_4_n_0 ),
        .I1(rCnt_Current[9]),
        .I2(rCnt_Current[1]),
        .I3(rCnt_Current[0]),
        .I4(\FSM_onehot_rFSM_Current[3]_i_5_n_0 ),
        .O(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h57550000)) 
    \FSM_onehot_rFSM_Current[3]_i_3 
       (.I0(rCnt_Current[11]),
        .I1(rCnt_Current[9]),
        .I2(\FSM_onehot_rFSM_Current[3]_i_6_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .O(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_rFSM_Current[3]_i_4 
       (.I0(rCnt_Current[11]),
        .I1(rCnt_Current[6]),
        .I2(rCnt_Current[5]),
        .O(\FSM_onehot_rFSM_Current[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \FSM_onehot_rFSM_Current[3]_i_5 
       (.I0(rCnt_Current[10]),
        .I1(rCnt_Current[8]),
        .I2(rCnt_Current[7]),
        .I3(rCnt_Current[2]),
        .I4(rCnt_Current[3]),
        .I5(rCnt_Current[4]),
        .O(\FSM_onehot_rFSM_Current[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_rFSM_Current[3]_i_6 
       (.I0(rCnt_Current[7]),
        .I1(rCnt_Current[8]),
        .I2(rCnt_Current[10]),
        .O(\FSM_onehot_rFSM_Current[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rFSM_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(in6),
        .O(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \FSM_onehot_rFSM_Current[4]_i_2 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .I1(rCnt_Current[10]),
        .I2(rCnt_Current[8]),
        .I3(rCnt_Current[7]),
        .I4(rCnt_Current[9]),
        .I5(rCnt_Current[11]),
        .O(in6));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_rFSM_Current[4]_i_3 
       (.I0(rCnt_Current[6]),
        .I1(rCnt_Current[5]),
        .I2(rCnt_Current[4]),
        .I3(rCnt_Current[3]),
        .O(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ),
        .Q(wRxDone),
        .R(iRst));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_rFSM[1]_i_2 
       (.I0(\FSM_sequential_rFSM[1]_i_3_n_0 ),
        .I1(\rCntRx_reg[7] [2]),
        .I2(\rCntRx_reg[7] [3]),
        .I3(\rCntRx_reg[7] [4]),
        .O(rFSM14_out));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \FSM_sequential_rFSM[1]_i_3 
       (.I0(\rCntRx_reg[7] [5]),
        .I1(\rCntRx_reg[7] [6]),
        .I2(wRxDone),
        .I3(\rCntRx_reg[7] [7]),
        .I4(\rCntRx_reg[7] [0]),
        .I5(\rCntRx_reg[7] [1]),
        .O(\FSM_sequential_rFSM[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \rBit_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(wBit_Next),
        .I2(rBit_Current[0]),
        .O(\rBit_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \rBit_Current[1]_i_1 
       (.I0(rBit_Current[0]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(wBit_Next),
        .I3(rBit_Current[1]),
        .O(\rBit_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \rBit_Current[2]_i_1 
       (.I0(rBit_Current[0]),
        .I1(rBit_Current[1]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(wBit_Next),
        .I4(rBit_Current[2]),
        .O(\rBit_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF02)) 
    \rBit_Current[2]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current[3]_i_5_n_0 ),
        .I2(\rBit_Current[2]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I4(wRxDone),
        .I5(\rBit_Current[2]_i_4_n_0 ),
        .O(wBit_Next));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \rBit_Current[2]_i_3 
       (.I0(rCnt_Current[0]),
        .I1(rCnt_Current[1]),
        .I2(rCnt_Current[9]),
        .I3(rCnt_Current[5]),
        .I4(rCnt_Current[6]),
        .I5(rCnt_Current[11]),
        .O(\rBit_Current[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rBit_Current[2]_i_4 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rBit_Current[2]_i_4_n_0 ));
  FDRE \rBit_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[0]_i_1_n_0 ),
        .Q(rBit_Current[0]),
        .R(iRst));
  FDRE \rBit_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[1]_i_1_n_0 ),
        .Q(rBit_Current[1]),
        .R(iRst));
  FDRE \rBit_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[2]_i_1_n_0 ),
        .Q(rBit_Current[2]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF504)) 
    \rCntRx[0]_i_1 
       (.I0(\rCntRx_reg[7] [0]),
        .I1(Q[0]),
        .I2(rFSM14_out),
        .I3(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA0F4F4A0)) 
    \rCntRx[1]_i_1 
       (.I0(rFSM14_out),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\rCntRx_reg[7] [1]),
        .I4(\rCntRx_reg[7] [0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF4A0A0F4)) 
    \rCntRx[2]_i_1 
       (.I0(rFSM14_out),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\rCntRx_reg[2] ),
        .I4(\rCntRx_reg[7] [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hA0F4F4A0)) 
    \rCntRx[3]_i_1 
       (.I0(rFSM14_out),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\rCntRx_reg[7] [3]),
        .I4(\rCntRx_reg[3] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF4A0A0F4)) 
    \rCntRx[4]_i_1 
       (.I0(rFSM14_out),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\rCntRx_reg[4] ),
        .I4(\rCntRx_reg[7] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFF990090)) 
    \rCntRx[5]_i_1 
       (.I0(\rCntRx_reg[5] ),
        .I1(\rCntRx_reg[7] [5]),
        .I2(Q[0]),
        .I3(rFSM14_out),
        .I4(Q[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h11102220)) 
    \rCntRx[6]_i_1 
       (.I0(\rCntRx_reg[6] ),
        .I1(rFSM14_out),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\rCntRx_reg[7] [6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h000E00EF)) 
    \rCntRx[7]_i_1 
       (.I0(wRxDone),
        .I1(rFSM14_out),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(E));
  LUT5 #(
    .INIT(32'h22201110)) 
    \rCntRx[7]_i_2 
       (.I0(\rCntRx_reg[7]_0 ),
        .I1(rFSM14_out),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\rCntRx_reg[7] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55505450)) 
    \rCnt_Current[0]_i_1 
       (.I0(rCnt_Current[0]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current[9]_i_2__0_n_0 ),
        .O(\rCnt_Current[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCF8F8F800000000)) 
    \rCnt_Current[10]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I5(wCnt_Next0_carry__1_n_6),
        .O(\rCnt_Current[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCF8F8F800000000)) 
    \rCnt_Current[11]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I5(wCnt_Next0_carry__1_n_5),
        .O(\rCnt_Current[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA0A8A0)) 
    \rCnt_Current[1]_i_1 
       (.I0(wCnt_Next0_carry_n_7),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current[9]_i_2__0_n_0 ),
        .O(\rCnt_Current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA0A8A0)) 
    \rCnt_Current[2]_i_1 
       (.I0(wCnt_Next0_carry_n_6),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current[9]_i_2__0_n_0 ),
        .O(\rCnt_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA0A8A0)) 
    \rCnt_Current[3]_i_1 
       (.I0(wCnt_Next0_carry_n_5),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current[9]_i_2__0_n_0 ),
        .O(\rCnt_Current[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA0A8A0)) 
    \rCnt_Current[4]_i_1 
       (.I0(wCnt_Next0_carry_n_4),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current[9]_i_2__0_n_0 ),
        .O(\rCnt_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCF8F8F800000000)) 
    \rCnt_Current[5]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I5(wCnt_Next0_carry__0_n_7),
        .O(\rCnt_Current[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCF8F8F800000000)) 
    \rCnt_Current[6]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I5(wCnt_Next0_carry__0_n_6),
        .O(\rCnt_Current[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCF8F8F800000000)) 
    \rCnt_Current[7]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I5(wCnt_Next0_carry__0_n_5),
        .O(\rCnt_Current[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCF8F8F800000000)) 
    \rCnt_Current[8]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I1(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .I5(wCnt_Next0_carry__0_n_4),
        .O(\rCnt_Current[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA0A8A0)) 
    \rCnt_Current[9]_i_1 
       (.I0(wCnt_Next0_carry__1_n_7),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current[9]_i_2__0_n_0 ),
        .O(\rCnt_Current[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \rCnt_Current[9]_i_2__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current[3]_i_5_n_0 ),
        .I2(rCnt_Current[0]),
        .I3(rCnt_Current[1]),
        .I4(rCnt_Current[9]),
        .I5(\FSM_onehot_rFSM_Current[3]_i_4_n_0 ),
        .O(\rCnt_Current[9]_i_2__0_n_0 ));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[0]_i_1_n_0 ),
        .Q(rCnt_Current[0]),
        .R(iRst));
  FDRE \rCnt_Current_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[10]_i_1_n_0 ),
        .Q(rCnt_Current[10]),
        .R(iRst));
  FDRE \rCnt_Current_reg[11] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[11]_i_1_n_0 ),
        .Q(rCnt_Current[11]),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[1]_i_1_n_0 ),
        .Q(rCnt_Current[1]),
        .R(iRst));
  FDRE \rCnt_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[2]_i_1_n_0 ),
        .Q(rCnt_Current[2]),
        .R(iRst));
  FDRE \rCnt_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[3]_i_1_n_0 ),
        .Q(rCnt_Current[3]),
        .R(iRst));
  FDRE \rCnt_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[4]_i_1_n_0 ),
        .Q(rCnt_Current[4]),
        .R(iRst));
  FDRE \rCnt_Current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[5]_i_1_n_0 ),
        .Q(rCnt_Current[5]),
        .R(iRst));
  FDRE \rCnt_Current_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[6]_i_1_n_0 ),
        .Q(rCnt_Current[6]),
        .R(iRst));
  FDRE \rCnt_Current_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[7]_i_1_n_0 ),
        .Q(rCnt_Current[7]),
        .R(iRst));
  FDRE \rCnt_Current_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[8]_i_1_n_0 ),
        .Q(rCnt_Current[8]),
        .R(iRst));
  FDRE \rCnt_Current_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[9]_i_1_n_0 ),
        .Q(rCnt_Current[9]),
        .R(iRst));
  FDRE rRx1_reg
       (.C(iClk),
        .CE(1'b1),
        .D(iRx),
        .Q(rRx1),
        .R(1'b0));
  FDRE rRx2_reg
       (.C(iClk),
        .CE(1'b1),
        .D(rRx1),
        .Q(data0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCnt_Next0_carry
       (.CI(1'b0),
        .CO({wCnt_Next0_carry_n_0,wCnt_Next0_carry_n_1,wCnt_Next0_carry_n_2,wCnt_Next0_carry_n_3}),
        .CYINIT(rCnt_Current[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wCnt_Next0_carry_n_4,wCnt_Next0_carry_n_5,wCnt_Next0_carry_n_6,wCnt_Next0_carry_n_7}),
        .S(rCnt_Current[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCnt_Next0_carry__0
       (.CI(wCnt_Next0_carry_n_0),
        .CO({wCnt_Next0_carry__0_n_0,wCnt_Next0_carry__0_n_1,wCnt_Next0_carry__0_n_2,wCnt_Next0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wCnt_Next0_carry__0_n_4,wCnt_Next0_carry__0_n_5,wCnt_Next0_carry__0_n_6,wCnt_Next0_carry__0_n_7}),
        .S(rCnt_Current[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wCnt_Next0_carry__1
       (.CI(wCnt_Next0_carry__0_n_0),
        .CO({NLW_wCnt_Next0_carry__1_CO_UNCONNECTED[3:2],wCnt_Next0_carry__1_n_2,wCnt_Next0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_wCnt_Next0_carry__1_O_UNCONNECTED[3],wCnt_Next0_carry__1_n_5,wCnt_Next0_carry__1_n_6,wCnt_Next0_carry__1_n_7}),
        .S({1'b0,rCnt_Current[11:9]}));
endmodule

(* ORIG_REF_NAME = "uart_top" *) 
module design_1_uart_top_0_0_uart_top
   (oTx,
    iRst,
    iClk,
    iRx);
  output oTx;
  input iRst;
  input iClk;
  input iRx;

  wire \FSM_sequential_rFSM[0]_i_3_n_0 ;
  wire UART_RX_INST_n_0;
  wire UART_TX_INST_n_12;
  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;
  wire [7:0]rCnt;
  wire [7:0]rCntRx;
  wire \rCntRx[2]_i_2_n_0 ;
  wire \rCntRx[3]_i_2_n_0 ;
  wire \rCntRx[4]_i_2_n_0 ;
  wire \rCntRx[5]_i_2_n_0 ;
  wire \rCntRx[6]_i_2_n_0 ;
  wire \rCntRx[7]_i_3_n_0 ;
  wire \rCntRx_reg_n_0_[0] ;
  wire \rCntRx_reg_n_0_[1] ;
  wire \rCntRx_reg_n_0_[2] ;
  wire \rCntRx_reg_n_0_[3] ;
  wire \rCntRx_reg_n_0_[4] ;
  wire \rCntRx_reg_n_0_[5] ;
  wire \rCntRx_reg_n_0_[6] ;
  wire \rCntRx_reg_n_0_[7] ;
  wire \rCnt[3]_i_2_n_0 ;
  wire \rCnt[4]_i_2_n_0 ;
  wire \rCnt[5]_i_2_n_0 ;
  wire \rCnt[7]_i_1_n_0 ;
  wire \rCnt[7]_i_3_n_0 ;
  wire \rCnt_reg_n_0_[0] ;
  wire \rCnt_reg_n_0_[1] ;
  wire \rCnt_reg_n_0_[2] ;
  wire \rCnt_reg_n_0_[3] ;
  wire \rCnt_reg_n_0_[4] ;
  wire \rCnt_reg_n_0_[5] ;
  wire \rCnt_reg_n_0_[6] ;
  wire \rCnt_reg_n_0_[7] ;
  wire [2:0]rFSM;
  wire rFSM14_out;
  wire [2:0]rFSM__0;
  wire rTxStart_reg_n_0;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_rFSM[0]_i_3 
       (.I0(\rCnt_reg_n_0_[2] ),
        .I1(\rCnt_reg_n_0_[3] ),
        .I2(\rCnt_reg_n_0_[0] ),
        .I3(\rCnt_reg_n_0_[1] ),
        .I4(\rCnt_reg_n_0_[5] ),
        .I5(\rCnt_reg_n_0_[4] ),
        .O(\FSM_sequential_rFSM[0]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "s_IDLE:000,s_START_ADD:011,s_WAIT_RX_OP1:001,s_WAIT_RX_OP2:010,s_WAIT_ADD:100,s_DONE:101,s_WAIT_TX:100,s_TX:011" *) 
  FDRE \FSM_sequential_rFSM_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(rFSM__0[0]),
        .Q(rFSM[0]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:000,s_START_ADD:011,s_WAIT_RX_OP1:001,s_WAIT_RX_OP2:010,s_WAIT_ADD:100,s_DONE:101,s_WAIT_TX:100,s_TX:011" *) 
  FDRE \FSM_sequential_rFSM_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(rFSM__0[1]),
        .Q(rFSM[1]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:000,s_START_ADD:011,s_WAIT_RX_OP1:001,s_WAIT_RX_OP2:010,s_WAIT_ADD:100,s_DONE:101,s_WAIT_TX:100,s_TX:011" *) 
  FDRE \FSM_sequential_rFSM_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(rFSM__0[2]),
        .Q(rFSM[2]),
        .R(iRst));
  design_1_uart_top_0_0_uart_rx UART_RX_INST
       (.D(rCntRx),
        .E(UART_RX_INST_n_0),
        .Q(rFSM),
        .iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .\rCntRx_reg[2] (\rCntRx[2]_i_2_n_0 ),
        .\rCntRx_reg[3] (\rCntRx[3]_i_2_n_0 ),
        .\rCntRx_reg[4] (\rCntRx[4]_i_2_n_0 ),
        .\rCntRx_reg[5] (\rCntRx[5]_i_2_n_0 ),
        .\rCntRx_reg[6] (\rCntRx[6]_i_2_n_0 ),
        .\rCntRx_reg[7] ({\rCntRx_reg_n_0_[7] ,\rCntRx_reg_n_0_[6] ,\rCntRx_reg_n_0_[5] ,\rCntRx_reg_n_0_[4] ,\rCntRx_reg_n_0_[3] ,\rCntRx_reg_n_0_[2] ,\rCntRx_reg_n_0_[1] ,\rCntRx_reg_n_0_[0] }),
        .\rCntRx_reg[7]_0 (\rCntRx[7]_i_3_n_0 ),
        .rFSM14_out(rFSM14_out));
  design_1_uart_top_0_0_uart_tx UART_TX_INST
       (.D(rFSM__0),
        .\FSM_onehot_rFSM_Current_reg[4]_0 (UART_TX_INST_n_12),
        .Q(rFSM),
        .iClk(iClk),
        .iRst(iRst),
        .oTx(oTx),
        .\rCnt_reg[0] (\FSM_sequential_rFSM[0]_i_3_n_0 ),
        .\rCnt_reg[3] (\rCnt[3]_i_2_n_0 ),
        .\rCnt_reg[4] (\rCnt[4]_i_2_n_0 ),
        .\rCnt_reg[5] (\rCnt[5]_i_2_n_0 ),
        .\rCnt_reg[6] (rCnt),
        .\rCnt_reg[7] ({\rCnt_reg_n_0_[7] ,\rCnt_reg_n_0_[6] ,\rCnt_reg_n_0_[5] ,\rCnt_reg_n_0_[4] ,\rCnt_reg_n_0_[3] ,\rCnt_reg_n_0_[2] ,\rCnt_reg_n_0_[1] ,\rCnt_reg_n_0_[0] }),
        .\rCnt_reg[7]_0 (\rCnt[7]_i_3_n_0 ),
        .rFSM14_out(rFSM14_out),
        .rTxStart_reg(rTxStart_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rCntRx[2]_i_2 
       (.I0(\rCntRx_reg_n_0_[1] ),
        .I1(\rCntRx_reg_n_0_[0] ),
        .O(\rCntRx[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rCntRx[3]_i_2 
       (.I0(\rCntRx_reg_n_0_[2] ),
        .I1(\rCntRx_reg_n_0_[0] ),
        .I2(\rCntRx_reg_n_0_[1] ),
        .O(\rCntRx[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rCntRx[4]_i_2 
       (.I0(\rCntRx_reg_n_0_[1] ),
        .I1(\rCntRx_reg_n_0_[0] ),
        .I2(\rCntRx_reg_n_0_[2] ),
        .I3(\rCntRx_reg_n_0_[3] ),
        .O(\rCntRx[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \rCntRx[5]_i_2 
       (.I0(\rCntRx_reg_n_0_[3] ),
        .I1(\rCntRx_reg_n_0_[2] ),
        .I2(\rCntRx_reg_n_0_[0] ),
        .I3(\rCntRx_reg_n_0_[1] ),
        .I4(\rCntRx_reg_n_0_[4] ),
        .O(\rCntRx[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rCntRx[6]_i_2 
       (.I0(\rCntRx_reg_n_0_[5] ),
        .I1(\rCntRx_reg_n_0_[4] ),
        .I2(\rCntRx_reg_n_0_[1] ),
        .I3(\rCntRx_reg_n_0_[0] ),
        .I4(\rCntRx_reg_n_0_[2] ),
        .I5(\rCntRx_reg_n_0_[3] ),
        .O(\rCntRx[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \rCntRx[7]_i_3 
       (.I0(\rCntRx_reg_n_0_[3] ),
        .I1(\rCntRx_reg_n_0_[2] ),
        .I2(\rCntRx[2]_i_2_n_0 ),
        .I3(\rCntRx_reg_n_0_[4] ),
        .I4(\rCntRx_reg_n_0_[5] ),
        .I5(\rCntRx_reg_n_0_[6] ),
        .O(\rCntRx[7]_i_3_n_0 ));
  FDRE \rCntRx_reg[0] 
       (.C(iClk),
        .CE(UART_RX_INST_n_0),
        .D(rCntRx[0]),
        .Q(\rCntRx_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCntRx_reg[1] 
       (.C(iClk),
        .CE(UART_RX_INST_n_0),
        .D(rCntRx[1]),
        .Q(\rCntRx_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCntRx_reg[2] 
       (.C(iClk),
        .CE(UART_RX_INST_n_0),
        .D(rCntRx[2]),
        .Q(\rCntRx_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCntRx_reg[3] 
       (.C(iClk),
        .CE(UART_RX_INST_n_0),
        .D(rCntRx[3]),
        .Q(\rCntRx_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rCntRx_reg[4] 
       (.C(iClk),
        .CE(UART_RX_INST_n_0),
        .D(rCntRx[4]),
        .Q(\rCntRx_reg_n_0_[4] ),
        .R(iRst));
  FDRE \rCntRx_reg[5] 
       (.C(iClk),
        .CE(UART_RX_INST_n_0),
        .D(rCntRx[5]),
        .Q(\rCntRx_reg_n_0_[5] ),
        .R(iRst));
  FDRE \rCntRx_reg[6] 
       (.C(iClk),
        .CE(UART_RX_INST_n_0),
        .D(rCntRx[6]),
        .Q(\rCntRx_reg_n_0_[6] ),
        .R(iRst));
  FDRE \rCntRx_reg[7] 
       (.C(iClk),
        .CE(UART_RX_INST_n_0),
        .D(rCntRx[7]),
        .Q(\rCntRx_reg_n_0_[7] ),
        .R(iRst));
  LUT2 #(
    .INIT(4'h2)) 
    \rCnt[3]_i_2 
       (.I0(rFSM[1]),
        .I1(rFSM[2]),
        .O(\rCnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rCnt[4]_i_2 
       (.I0(\rCnt_reg_n_0_[0] ),
        .I1(\rCnt_reg_n_0_[1] ),
        .I2(\rCnt_reg_n_0_[2] ),
        .I3(\rCnt_reg_n_0_[3] ),
        .O(\rCnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \rCnt[5]_i_2 
       (.I0(\rCnt_reg_n_0_[4] ),
        .I1(\rCnt_reg_n_0_[3] ),
        .I2(\rCnt_reg_n_0_[2] ),
        .I3(\rCnt_reg_n_0_[1] ),
        .I4(\rCnt_reg_n_0_[0] ),
        .O(\rCnt[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \rCnt[7]_i_1 
       (.I0(rFSM[0]),
        .I1(rFSM[2]),
        .I2(rFSM[1]),
        .O(\rCnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \rCnt[7]_i_3 
       (.I0(\rCnt_reg_n_0_[0] ),
        .I1(\rCnt_reg_n_0_[1] ),
        .I2(\rCnt_reg_n_0_[2] ),
        .I3(\rCnt_reg_n_0_[3] ),
        .I4(\rCnt_reg_n_0_[4] ),
        .I5(\rCnt_reg_n_0_[5] ),
        .O(\rCnt[7]_i_3_n_0 ));
  FDRE \rCnt_reg[0] 
       (.C(iClk),
        .CE(\rCnt[7]_i_1_n_0 ),
        .D(rCnt[0]),
        .Q(\rCnt_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_reg[1] 
       (.C(iClk),
        .CE(\rCnt[7]_i_1_n_0 ),
        .D(rCnt[1]),
        .Q(\rCnt_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_reg[2] 
       (.C(iClk),
        .CE(\rCnt[7]_i_1_n_0 ),
        .D(rCnt[2]),
        .Q(\rCnt_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_reg[3] 
       (.C(iClk),
        .CE(\rCnt[7]_i_1_n_0 ),
        .D(rCnt[3]),
        .Q(\rCnt_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rCnt_reg[4] 
       (.C(iClk),
        .CE(\rCnt[7]_i_1_n_0 ),
        .D(rCnt[4]),
        .Q(\rCnt_reg_n_0_[4] ),
        .R(iRst));
  FDRE \rCnt_reg[5] 
       (.C(iClk),
        .CE(\rCnt[7]_i_1_n_0 ),
        .D(rCnt[5]),
        .Q(\rCnt_reg_n_0_[5] ),
        .R(iRst));
  FDRE \rCnt_reg[6] 
       (.C(iClk),
        .CE(\rCnt[7]_i_1_n_0 ),
        .D(rCnt[6]),
        .Q(\rCnt_reg_n_0_[6] ),
        .R(iRst));
  FDRE \rCnt_reg[7] 
       (.C(iClk),
        .CE(\rCnt[7]_i_1_n_0 ),
        .D(rCnt[7]),
        .Q(\rCnt_reg_n_0_[7] ),
        .R(iRst));
  FDRE rTxStart_reg
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_12),
        .Q(rTxStart_reg_n_0),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module design_1_uart_top_0_0_uart_tx
   (D,
    \rCnt_reg[6] ,
    oTx,
    \FSM_onehot_rFSM_Current_reg[4]_0 ,
    rTxStart_reg,
    Q,
    rFSM14_out,
    \rCnt_reg[3] ,
    \rCnt_reg[7] ,
    \rCnt_reg[0] ,
    \rCnt_reg[7]_0 ,
    \rCnt_reg[5] ,
    \rCnt_reg[4] ,
    iRst,
    iClk);
  output [2:0]D;
  output [7:0]\rCnt_reg[6] ;
  output oTx;
  output \FSM_onehot_rFSM_Current_reg[4]_0 ;
  input rTxStart_reg;
  input [2:0]Q;
  input rFSM14_out;
  input \rCnt_reg[3] ;
  input [7:0]\rCnt_reg[7] ;
  input \rCnt_reg[0] ;
  input \rCnt_reg[7]_0 ;
  input \rCnt_reg[5] ;
  input \rCnt_reg[4] ;
  input iRst;
  input iClk;

  wire [2:0]D;
  wire \FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ;
  wire \FSM_onehot_rFSM_Current_reg[4]_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire [2:0]Q;
  wire iClk;
  wire iRst;
  wire [5:0]in7;
  wire oTx;
  wire [2:0]rBit_Current;
  wire \rBit_Current[0]_i_1__0_n_0 ;
  wire \rBit_Current[1]_i_1__0_n_0 ;
  wire \rBit_Current[2]_i_1__0_n_0 ;
  wire \rBit_Current[2]_i_3__0_n_0 ;
  wire \rBit_Current[2]_i_4__0_n_0 ;
  wire \rBit_Current[2]_i_5_n_0 ;
  wire \rCnt_Current[0]_i_1__0_n_0 ;
  wire \rCnt_Current[10]_i_1__0_n_0 ;
  wire \rCnt_Current[10]_i_2_n_0 ;
  wire \rCnt_Current[10]_i_3_n_0 ;
  wire \rCnt_Current[1]_i_1__0_n_0 ;
  wire \rCnt_Current[2]_i_1__0_n_0 ;
  wire \rCnt_Current[3]_i_1__0_n_0 ;
  wire \rCnt_Current[4]_i_1__0_n_0 ;
  wire \rCnt_Current[5]_i_1__0_n_0 ;
  wire \rCnt_Current[5]_i_2_n_0 ;
  wire \rCnt_Current[6]_i_1__0_n_0 ;
  wire \rCnt_Current[7]_i_1__0_n_0 ;
  wire \rCnt_Current[8]_i_1__0_n_0 ;
  wire \rCnt_Current[9]_i_1__0_n_0 ;
  wire \rCnt_Current[9]_i_2_n_0 ;
  wire \rCnt_Current_reg_n_0_[0] ;
  wire \rCnt_Current_reg_n_0_[10] ;
  wire \rCnt_Current_reg_n_0_[1] ;
  wire \rCnt_Current_reg_n_0_[2] ;
  wire \rCnt_Current_reg_n_0_[3] ;
  wire \rCnt_Current_reg_n_0_[4] ;
  wire \rCnt_Current_reg_n_0_[5] ;
  wire \rCnt_Current_reg_n_0_[6] ;
  wire \rCnt_Current_reg_n_0_[7] ;
  wire \rCnt_Current_reg_n_0_[8] ;
  wire \rCnt_Current_reg_n_0_[9] ;
  wire \rCnt_reg[0] ;
  wire \rCnt_reg[3] ;
  wire \rCnt_reg[4] ;
  wire \rCnt_reg[5] ;
  wire [7:0]\rCnt_reg[6] ;
  wire [7:0]\rCnt_reg[7] ;
  wire \rCnt_reg[7]_0 ;
  wire rFSM14_out;
  wire rFSM1__7;
  wire \rTxData_Current[0]_i_1_n_0 ;
  wire \rTxData_Current[1]_i_1_n_0 ;
  wire \rTxData_Current[2]_i_1_n_0 ;
  wire \rTxData_Current[3]_i_1_n_0 ;
  wire \rTxData_Current[4]_i_1_n_0 ;
  wire \rTxData_Current[5]_i_1_n_0 ;
  wire \rTxData_Current[6]_i_2_n_0 ;
  wire \rTxData_Current_reg_n_0_[0] ;
  wire rTxStart_reg;
  wire wBit_Next;
  wire wTxData_Next;
  wire wTxDone;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_rFSM_Current[0]_i_1__0 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(wTxDone),
        .O(\FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_rFSM_Current[1]_i_1__0 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F0000FF00)) 
    \FSM_onehot_rFSM_Current[2]_i_1__0 
       (.I0(rBit_Current[2]),
        .I1(rBit_Current[1]),
        .I2(rBit_Current[0]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I4(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \FSM_onehot_rFSM_Current[3]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(rBit_Current[2]),
        .I4(rBit_Current[1]),
        .I5(rBit_Current[0]),
        .O(\FSM_onehot_rFSM_Current[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rFSM_Current[4]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \FSM_onehot_rFSM_Current[4]_i_2__0 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[7] ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .I3(\rCnt_Current_reg_n_0_[9] ),
        .I4(\rCnt_Current_reg_n_0_[8] ),
        .I5(\rCnt_Current_reg_n_0_[10] ),
        .O(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_rFSM_Current[4]_i_3__0 
       (.I0(\rCnt_Current_reg_n_0_[4] ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[5] ),
        .O(\FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .S(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[1]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[3]_i_1__0_n_0 ),
        .Q(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[4]_i_1__0_n_0 ),
        .Q(wTxDone),
        .R(iRst));
  LUT6 #(
    .INIT(64'h05CF05C000CF0FCF)) 
    \FSM_sequential_rFSM[0]_i_1 
       (.I0(rFSM1__7),
        .I1(wTxDone),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(rFSM14_out),
        .I5(Q[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h54540054)) 
    \FSM_sequential_rFSM[0]_i_2 
       (.I0(\rCnt_reg[7] [7]),
        .I1(wTxDone),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(\rCnt_reg[7] [6]),
        .I4(\rCnt_reg[0] ),
        .O(rFSM1__7));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0A0F0AC0)) 
    \FSM_sequential_rFSM[1]_i_1 
       (.I0(wTxDone),
        .I1(rFSM14_out),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0838)) 
    \FSM_sequential_rFSM[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(wTxDone),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    oTx_INST_0
       (.I0(\rTxData_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(oTx));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \rBit_Current[0]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(wBit_Next),
        .I2(rBit_Current[0]),
        .O(\rBit_Current[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2F80)) 
    \rBit_Current[1]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rBit_Current[0]),
        .I2(wBit_Next),
        .I3(rBit_Current[1]),
        .O(\rBit_Current[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \rBit_Current[2]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rBit_Current[1]),
        .I2(rBit_Current[0]),
        .I3(wBit_Next),
        .I4(rBit_Current[2]),
        .O(\rBit_Current[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFAAAAAAAAAAAA)) 
    \rBit_Current[2]_i_2__0 
       (.I0(\rBit_Current[2]_i_3__0_n_0 ),
        .I1(\rBit_Current[2]_i_4__0_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[5] ),
        .I3(\rBit_Current[2]_i_5_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[10] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(wBit_Next));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rBit_Current[2]_i_3__0 
       (.I0(wTxDone),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rBit_Current[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rBit_Current[2]_i_4__0 
       (.I0(\rCnt_Current_reg_n_0_[3] ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[4] ),
        .O(\rBit_Current[2]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rBit_Current[2]_i_5 
       (.I0(\rCnt_Current_reg_n_0_[7] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current_reg_n_0_[9] ),
        .I3(\rCnt_Current_reg_n_0_[8] ),
        .O(\rBit_Current[2]_i_5_n_0 ));
  FDRE \rBit_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[0]_i_1__0_n_0 ),
        .Q(rBit_Current[0]),
        .R(iRst));
  FDRE \rBit_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[1]_i_1__0_n_0 ),
        .Q(rBit_Current[1]),
        .R(iRst));
  FDRE \rBit_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[2]_i_1__0_n_0 ),
        .Q(rBit_Current[2]),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rCnt[0]_i_1 
       (.I0(rFSM1__7),
        .I1(Q[1]),
        .I2(\rCnt_reg[7] [0]),
        .O(\rCnt_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \rCnt[1]_i_1 
       (.I0(Q[1]),
        .I1(rFSM1__7),
        .I2(\rCnt_reg[7] [0]),
        .I3(\rCnt_reg[7] [1]),
        .O(\rCnt_reg[6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h08888000)) 
    \rCnt[2]_i_1 
       (.I0(Q[1]),
        .I1(rFSM1__7),
        .I2(\rCnt_reg[7] [1]),
        .I3(\rCnt_reg[7] [0]),
        .I4(\rCnt_reg[7] [2]),
        .O(\rCnt_reg[6] [2]));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \rCnt[3]_i_1 
       (.I0(\rCnt_reg[3] ),
        .I1(rFSM1__7),
        .I2(\rCnt_reg[7] [0]),
        .I3(\rCnt_reg[7] [1]),
        .I4(\rCnt_reg[7] [2]),
        .I5(\rCnt_reg[7] [3]),
        .O(\rCnt_reg[6] [3]));
  LUT4 #(
    .INIT(16'h8040)) 
    \rCnt[4]_i_1 
       (.I0(\rCnt_reg[4] ),
        .I1(rFSM1__7),
        .I2(Q[1]),
        .I3(\rCnt_reg[7] [4]),
        .O(\rCnt_reg[6] [4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4080)) 
    \rCnt[5]_i_1 
       (.I0(\rCnt_reg[5] ),
        .I1(rFSM1__7),
        .I2(Q[1]),
        .I3(\rCnt_reg[7] [5]),
        .O(\rCnt_reg[6] [5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \rCnt[6]_i_1 
       (.I0(\rCnt_reg[7]_0 ),
        .I1(rFSM1__7),
        .I2(Q[1]),
        .I3(\rCnt_reg[7] [6]),
        .O(\rCnt_reg[6] [6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB0004000)) 
    \rCnt[7]_i_2 
       (.I0(\rCnt_reg[7]_0 ),
        .I1(\rCnt_reg[7] [6]),
        .I2(rFSM1__7),
        .I3(Q[1]),
        .I4(\rCnt_reg[7] [7]),
        .O(\rCnt_reg[6] [7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rCnt_Current[0]_i_1__0 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \rCnt_Current[10]_i_1__0 
       (.I0(\rCnt_Current_reg_n_0_[8] ),
        .I1(\rCnt_Current[10]_i_2_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[7] ),
        .I3(\rCnt_Current_reg_n_0_[9] ),
        .I4(\rCnt_Current[10]_i_3_n_0 ),
        .I5(\rCnt_Current_reg_n_0_[10] ),
        .O(\rCnt_Current[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \rCnt_Current[10]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[6] ),
        .I1(\rCnt_Current_reg_n_0_[5] ),
        .I2(\rCnt_Current_reg_n_0_[4] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .I5(\rCnt_Current[5]_i_2_n_0 ),
        .O(\rCnt_Current[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFE00FE00FE00FE)) 
    \rCnt_Current[10]_i_3 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[10] ),
        .I4(\rBit_Current[2]_i_5_n_0 ),
        .I5(\FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ),
        .O(\rCnt_Current[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rCnt_Current[1]_i_1__0 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[2]_i_1__0 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt_Current[3]_i_1__0 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[0] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .O(\rCnt_Current[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rCnt_Current[4]_i_1__0 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .I5(\rCnt_Current_reg_n_0_[4] ),
        .O(\rCnt_Current[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \rCnt_Current[5]_i_1__0 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current[5]_i_2_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[4] ),
        .I5(\rCnt_Current_reg_n_0_[5] ),
        .O(\rCnt_Current[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rCnt_Current[5]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[1] ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \rCnt_Current[6]_i_1__0 
       (.I0(\rCnt_Current[10]_i_3_n_0 ),
        .I1(\rCnt_Current[9]_i_2_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .O(\rCnt_Current[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hD020)) 
    \rCnt_Current[7]_i_1__0 
       (.I0(\rCnt_Current_reg_n_0_[6] ),
        .I1(\rCnt_Current[9]_i_2_n_0 ),
        .I2(\rCnt_Current[10]_i_3_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rCnt_Current[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBF004000)) 
    \rCnt_Current[8]_i_1__0 
       (.I0(\rCnt_Current[9]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current_reg_n_0_[7] ),
        .I3(\rCnt_Current[10]_i_3_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[8] ),
        .O(\rCnt_Current[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \rCnt_Current[9]_i_1__0 
       (.I0(\rCnt_Current_reg_n_0_[7] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[9]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[8] ),
        .I4(\rCnt_Current[10]_i_3_n_0 ),
        .I5(\rCnt_Current_reg_n_0_[9] ),
        .O(\rCnt_Current[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \rCnt_Current[9]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[1] ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[4] ),
        .I5(\rCnt_Current_reg_n_0_[5] ),
        .O(\rCnt_Current[9]_i_2_n_0 ));
  FDRE \rCnt_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[0]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[10] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[10]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[10] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[1]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[2]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[3]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[4]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[4] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[5]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[5] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[6]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[6] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[7]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[7] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[8] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[8]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[8] ),
        .R(iRst));
  FDRE \rCnt_Current_reg[9] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rCnt_Current[9]_i_1__0_n_0 ),
        .Q(\rCnt_Current_reg_n_0_[9] ),
        .R(iRst));
  LUT3 #(
    .INIT(8'hF8)) 
    \rTxData_Current[0]_i_1 
       (.I0(in7[0]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rTxData_Current[1]_i_1 
       (.I0(in7[1]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rTxData_Current[2]_i_1 
       (.I0(in7[2]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rTxData_Current[3]_i_1 
       (.I0(in7[3]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rTxData_Current[4]_i_1 
       (.I0(in7[4]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rTxData_Current[5]_i_1 
       (.I0(in7[5]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \rTxData_Current[6]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I1(\rTxData_Current[6]_i_2_n_0 ),
        .I2(rTxStart_reg),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(wTxData_Next));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \rTxData_Current[6]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(rBit_Current[2]),
        .I2(rBit_Current[1]),
        .I3(rBit_Current[0]),
        .O(\rTxData_Current[6]_i_2_n_0 ));
  FDRE \rTxData_Current_reg[0] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[0]_i_1_n_0 ),
        .Q(\rTxData_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rTxData_Current_reg[1] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[1]_i_1_n_0 ),
        .Q(in7[0]),
        .R(iRst));
  FDRE \rTxData_Current_reg[2] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[2]_i_1_n_0 ),
        .Q(in7[1]),
        .R(iRst));
  FDRE \rTxData_Current_reg[3] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[3]_i_1_n_0 ),
        .Q(in7[2]),
        .R(iRst));
  FDRE \rTxData_Current_reg[4] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[4]_i_1_n_0 ),
        .Q(in7[3]),
        .R(iRst));
  FDRE \rTxData_Current_reg[5] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[5]_i_1_n_0 ),
        .Q(in7[4]),
        .R(iRst));
  FDRE \rTxData_Current_reg[6] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .Q(in7[5]),
        .R(iRst));
  LUT6 #(
    .INIT(64'hFFAFFCF000A00000)) 
    rTxStart_i_1
       (.I0(rFSM1__7),
        .I1(wTxDone),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(rTxStart_reg),
        .O(\FSM_onehot_rFSM_Current_reg[4]_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
