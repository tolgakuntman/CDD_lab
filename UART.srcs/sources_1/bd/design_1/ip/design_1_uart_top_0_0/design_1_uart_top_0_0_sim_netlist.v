// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Mar 13 12:05:14 2025
// Host        : Gok2s_Victus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Goktug/Desktop/CDD_LAB/CDD_lab/UART.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.v
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
   (Q,
    D,
    \FSM_onehot_rFSM_Current_reg[4]_0 ,
    \FSM_sequential_rFSM_reg[1] ,
    E,
    rBuffer,
    iRx,
    iClk,
    \FSM_sequential_rFSM_reg[1]_0 ,
    \FSM_sequential_rFSM_reg[1]_1 ,
    iRst,
    \FSM_sequential_rFSM_reg[1]_2 );
  output [0:0]Q;
  output [2:0]D;
  output \FSM_onehot_rFSM_Current_reg[4]_0 ;
  output [0:0]\FSM_sequential_rFSM_reg[1] ;
  output [0:0]E;
  output [7:0]rBuffer;
  input iRx;
  input iClk;
  input [2:0]\FSM_sequential_rFSM_reg[1]_0 ;
  input [3:0]\FSM_sequential_rFSM_reg[1]_1 ;
  input iRst;
  input \FSM_sequential_rFSM_reg[1]_2 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_4_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_5_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_6_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_4_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_2_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3_n_0 ;
  wire \FSM_onehot_rFSM_Current_reg[4]_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire [0:0]\FSM_sequential_rFSM_reg[1] ;
  wire [2:0]\FSM_sequential_rFSM_reg[1]_0 ;
  wire [3:0]\FSM_sequential_rFSM_reg[1]_1 ;
  wire \FSM_sequential_rFSM_reg[1]_2 ;
  wire [0:0]Q;
  wire [7:0]data0;
  wire iClk;
  wire iRst;
  wire iRx;
  wire [2:0]rBit_Current;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rBit_Current[2]_i_2_n_0 ;
  wire [7:0]rBuffer;
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
  wire \rCnt_Current[9]_i_2_n_0 ;
  wire \rCnt_Current[9]_i_3_n_0 ;
  wire rRx1;
  wire [7:0]rRxByteOut;
  wire \rRxByteOut[7]_i_1_n_0 ;
  wire \rRxData_Current_reg_n_0_[0] ;
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
  wire [7:0]wRxData_Next;
  wire \wRxData_Next_reg[0]_i_1_n_0 ;
  wire \wRxData_Next_reg[1]_i_1_n_0 ;
  wire \wRxData_Next_reg[2]_i_1_n_0 ;
  wire \wRxData_Next_reg[3]_i_1_n_0 ;
  wire \wRxData_Next_reg[4]_i_1_n_0 ;
  wire \wRxData_Next_reg[5]_i_1_n_0 ;
  wire \wRxData_Next_reg[6]_i_1_n_0 ;
  wire \wRxData_Next_reg[7]_i_1_n_0 ;
  wire \wRxData_Next_reg[7]_i_2_n_0 ;
  wire \wRxData_Next_reg[7]_i_3_n_0 ;
  wire \wRxData_Next_reg[7]_i_4_n_0 ;
  wire [3:2]NLW_wCnt_Next0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_wCnt_Next0_carry__1_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_rFSM_Current[0]_i_1__0 
       (.I0(Q),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(data0[7]),
        .O(\FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rFSM_Current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(data0[7]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_Current[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4FFF4F4F)) 
    \FSM_onehot_rFSM_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[2]_i_4_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000455555555)) 
    \FSM_onehot_rFSM_Current[2]_i_2 
       (.I0(rCnt_Current[11]),
        .I1(\FSM_onehot_rFSM_Current[2]_i_5_n_0 ),
        .I2(rCnt_Current[6]),
        .I3(rCnt_Current[9]),
        .I4(\FSM_onehot_rFSM_Current[2]_i_6_n_0 ),
        .I5(rCnt_Current[10]),
        .O(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \FSM_onehot_rFSM_Current[2]_i_3 
       (.I0(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I1(rCnt_Current[6]),
        .I2(rCnt_Current[5]),
        .I3(rCnt_Current[11]),
        .I4(\FSM_onehot_rFSM_Current[3]_i_4_n_0 ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_rFSM_Current[2]_i_4 
       (.I0(rBit_Current[2]),
        .I1(rBit_Current[0]),
        .I2(rBit_Current[1]),
        .O(\FSM_onehot_rFSM_Current[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_rFSM_Current[2]_i_5 
       (.I0(rCnt_Current[2]),
        .I1(rCnt_Current[3]),
        .I2(rCnt_Current[5]),
        .I3(rCnt_Current[4]),
        .O(\FSM_onehot_rFSM_Current[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_rFSM_Current[2]_i_6 
       (.I0(rCnt_Current[8]),
        .I1(rCnt_Current[7]),
        .O(\FSM_onehot_rFSM_Current[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    \FSM_onehot_rFSM_Current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(rBit_Current[2]),
        .I3(rBit_Current[0]),
        .I4(rBit_Current[1]),
        .I5(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ),
        .O(\FSM_onehot_rFSM_Current[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_onehot_rFSM_Current[3]_i_2 
       (.I0(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I1(rCnt_Current[6]),
        .I2(rCnt_Current[5]),
        .I3(rCnt_Current[11]),
        .I4(\FSM_onehot_rFSM_Current[3]_i_4_n_0 ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM_Current[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_rFSM_Current[3]_i_3 
       (.I0(rCnt_Current[10]),
        .I1(rCnt_Current[7]),
        .I2(rCnt_Current[8]),
        .O(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \FSM_onehot_rFSM_Current[3]_i_4 
       (.I0(rCnt_Current[3]),
        .I1(rCnt_Current[4]),
        .I2(rCnt_Current[0]),
        .I3(rCnt_Current[1]),
        .I4(rCnt_Current[2]),
        .I5(rCnt_Current[9]),
        .O(\FSM_onehot_rFSM_Current[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_rFSM_Current[4]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA888888888888888)) 
    \FSM_onehot_rFSM_Current[4]_i_2 
       (.I0(rCnt_Current[11]),
        .I1(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ),
        .I2(rCnt_Current[3]),
        .I3(rCnt_Current[4]),
        .I4(rCnt_Current[5]),
        .I5(rCnt_Current[6]),
        .O(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_rFSM_Current[4]_i_3 
       (.I0(rCnt_Current[9]),
        .I1(rCnt_Current[8]),
        .I2(rCnt_Current[7]),
        .I3(rCnt_Current[10]),
        .O(\FSM_onehot_rFSM_Current[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[0]_i_1__0_n_0 ),
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
        .Q(Q),
        .R(iRst));
  LUT5 #(
    .INIT(32'hEEEE00E0)) 
    \FSM_sequential_rFSM[1]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I1(\FSM_sequential_rFSM_reg[1]_0 [1]),
        .I2(\FSM_sequential_rFSM_reg[1]_0 [0]),
        .I3(\FSM_sequential_rFSM_reg[1]_0 [2]),
        .I4(\FSM_sequential_rFSM_reg[1]_2 ),
        .O(\FSM_sequential_rFSM_reg[1] ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \FSM_sequential_rFSM[1]_i_2 
       (.I0(Q),
        .I1(\FSM_sequential_rFSM_reg[1]_1 [2]),
        .I2(\FSM_sequential_rFSM_reg[1]_1 [3]),
        .I3(\FSM_sequential_rFSM_reg[1]_1 [0]),
        .I4(\FSM_sequential_rFSM_reg[1]_1 [1]),
        .O(\FSM_onehot_rFSM_Current_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h0070AA8A)) 
    \rBit_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\wRxData_Next_reg[7]_i_4_n_0 ),
        .I2(\wRxData_Next_reg[7]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I4(rBit_Current[0]),
        .O(\rBit_Current[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44447F4488888088)) 
    \rBit_Current[1]_i_1 
       (.I0(rBit_Current[0]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\wRxData_Next_reg[7]_i_4_n_0 ),
        .I3(\wRxData_Next_reg[7]_i_3_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(rBit_Current[1]),
        .O(\rBit_Current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888BF8844444044)) 
    \rBit_Current[2]_i_1 
       (.I0(\rBit_Current[2]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\wRxData_Next_reg[7]_i_4_n_0 ),
        .I3(\wRxData_Next_reg[7]_i_3_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(rBit_Current[2]),
        .O(\rBit_Current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rBit_Current[2]_i_2 
       (.I0(rBit_Current[1]),
        .I1(rBit_Current[0]),
        .O(\rBit_Current[2]_i_2_n_0 ));
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
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer[0]_i_1 
       (.I0(rRxByteOut[0]),
        .I1(\FSM_sequential_rFSM_reg[1]_0 [1]),
        .O(rBuffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer[1]_i_1 
       (.I0(rRxByteOut[1]),
        .I1(\FSM_sequential_rFSM_reg[1]_0 [1]),
        .O(rBuffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer[2]_i_1 
       (.I0(rRxByteOut[2]),
        .I1(\FSM_sequential_rFSM_reg[1]_0 [1]),
        .O(rBuffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer[3]_i_1 
       (.I0(rRxByteOut[3]),
        .I1(\FSM_sequential_rFSM_reg[1]_0 [1]),
        .O(rBuffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer[4]_i_1 
       (.I0(rRxByteOut[4]),
        .I1(\FSM_sequential_rFSM_reg[1]_0 [1]),
        .O(rBuffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer[6]_i_1 
       (.I0(rRxByteOut[6]),
        .I1(\FSM_sequential_rFSM_reg[1]_0 [1]),
        .O(rBuffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11_i_1 
       (.I0(rRxByteOut[5]),
        .I1(\FSM_sequential_rFSM_reg[1]_0 [1]),
        .O(rBuffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_i_1 
       (.I0(rRxByteOut[7]),
        .I1(\FSM_sequential_rFSM_reg[1]_0 [1]),
        .O(rBuffer[7]));
  LUT3 #(
    .INIT(8'h8A)) 
    \rCntRx[0]_i_1 
       (.I0(\FSM_sequential_rFSM_reg[1]_0 [0]),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(\FSM_sequential_rFSM_reg[1]_1 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8AA8)) 
    \rCntRx[1]_i_1 
       (.I0(\FSM_sequential_rFSM_reg[1]_0 [0]),
        .I1(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .I2(\FSM_sequential_rFSM_reg[1]_1 [1]),
        .I3(\FSM_sequential_rFSM_reg[1]_1 [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007800)) 
    \rCntRx[2]_i_1 
       (.I0(\FSM_sequential_rFSM_reg[1]_1 [0]),
        .I1(\FSM_sequential_rFSM_reg[1]_1 [1]),
        .I2(\FSM_sequential_rFSM_reg[1]_1 [2]),
        .I3(\FSM_sequential_rFSM_reg[1]_0 [0]),
        .I4(\FSM_onehot_rFSM_Current_reg[4]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \rCntRx[3]_i_1 
       (.I0(\FSM_sequential_rFSM_reg[1]_0 [1]),
        .I1(\FSM_sequential_rFSM_reg[1]_0 [2]),
        .I2(Q),
        .I3(\FSM_sequential_rFSM_reg[1]_0 [0]),
        .O(E));
  LUT6 #(
    .INIT(64'h00FF00F400440044)) 
    \rCnt_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(rCnt_Current[0]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I5(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .O(\rCnt_Current[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88AA888808AA0808)) 
    \rCnt_Current[10]_i_1 
       (.I0(wCnt_Next0_carry__1_n_6),
        .I1(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88AA888808AA0808)) 
    \rCnt_Current[11]_i_1 
       (.I0(wCnt_Next0_carry__1_n_5),
        .I1(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFF00FAEA0000)) 
    \rCnt_Current[1]_i_1 
       (.I0(\rCnt_Current[9]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(wCnt_Next0_carry_n_7),
        .I5(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\rCnt_Current[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFF00FAEA0000)) 
    \rCnt_Current[2]_i_1 
       (.I0(\rCnt_Current[9]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(wCnt_Next0_carry_n_6),
        .I5(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\rCnt_Current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFF00FAEA0000)) 
    \rCnt_Current[3]_i_1 
       (.I0(\rCnt_Current[9]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(wCnt_Next0_carry_n_5),
        .I5(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\rCnt_Current[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFF00FAEA0000)) 
    \rCnt_Current[4]_i_1 
       (.I0(\rCnt_Current[9]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(wCnt_Next0_carry_n_4),
        .I5(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\rCnt_Current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88AA888808AA0808)) 
    \rCnt_Current[5]_i_1 
       (.I0(wCnt_Next0_carry__0_n_7),
        .I1(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88AA888808AA0808)) 
    \rCnt_Current[6]_i_1 
       (.I0(wCnt_Next0_carry__0_n_6),
        .I1(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88AA888808AA0808)) 
    \rCnt_Current[7]_i_1 
       (.I0(wCnt_Next0_carry__0_n_5),
        .I1(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88AA888808AA0808)) 
    \rCnt_Current[8]_i_1 
       (.I0(wCnt_Next0_carry__0_n_4),
        .I1(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFF00FAEA0000)) 
    \rCnt_Current[9]_i_1 
       (.I0(\rCnt_Current[9]_i_2_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current[2]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(wCnt_Next0_carry__1_n_7),
        .I5(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\rCnt_Current[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0008AAAA)) 
    \rCnt_Current[9]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\rCnt_Current[9]_i_3_n_0 ),
        .I2(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .I3(rCnt_Current[9]),
        .I4(rCnt_Current[11]),
        .O(\rCnt_Current[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rCnt_Current[9]_i_3 
       (.I0(rCnt_Current[3]),
        .I1(rCnt_Current[4]),
        .I2(rCnt_Current[5]),
        .I3(rCnt_Current[6]),
        .O(\rCnt_Current[9]_i_3_n_0 ));
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
        .Q(data0[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \rRxByteOut[7]_i_1 
       (.I0(iRst),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .O(\rRxByteOut[7]_i_1_n_0 ));
  FDRE \rRxByteOut_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rRxData_Current_reg_n_0_[0] ),
        .Q(rRxByteOut[0]),
        .R(\rRxByteOut[7]_i_1_n_0 ));
  FDRE \rRxByteOut_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(data0[0]),
        .Q(rRxByteOut[1]),
        .R(\rRxByteOut[7]_i_1_n_0 ));
  FDRE \rRxByteOut_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(rRxByteOut[2]),
        .R(\rRxByteOut[7]_i_1_n_0 ));
  FDRE \rRxByteOut_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(rRxByteOut[3]),
        .R(\rRxByteOut[7]_i_1_n_0 ));
  FDRE \rRxByteOut_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(rRxByteOut[4]),
        .R(\rRxByteOut[7]_i_1_n_0 ));
  FDRE \rRxByteOut_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(rRxByteOut[5]),
        .R(\rRxByteOut[7]_i_1_n_0 ));
  FDRE \rRxByteOut_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(rRxByteOut[6]),
        .R(\rRxByteOut[7]_i_1_n_0 ));
  FDRE \rRxByteOut_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(rRxByteOut[7]),
        .R(\rRxByteOut[7]_i_1_n_0 ));
  FDRE \rRxData_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(wRxData_Next[0]),
        .Q(\rRxData_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rRxData_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(wRxData_Next[1]),
        .Q(data0[0]),
        .R(iRst));
  FDRE \rRxData_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(wRxData_Next[2]),
        .Q(data0[1]),
        .R(iRst));
  FDRE \rRxData_Current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(wRxData_Next[3]),
        .Q(data0[2]),
        .R(iRst));
  FDRE \rRxData_Current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(wRxData_Next[4]),
        .Q(data0[3]),
        .R(iRst));
  FDRE \rRxData_Current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(wRxData_Next[5]),
        .Q(data0[4]),
        .R(iRst));
  FDRE \rRxData_Current_reg[6] 
       (.C(iClk),
        .CE(1'b1),
        .D(wRxData_Next[6]),
        .Q(data0[5]),
        .R(iRst));
  FDRE \rRxData_Current_reg[7] 
       (.C(iClk),
        .CE(1'b1),
        .D(wRxData_Next[7]),
        .Q(data0[6]),
        .R(iRst));
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
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wRxData_Next_reg[0] 
       (.CLR(1'b0),
        .D(\wRxData_Next_reg[0]_i_1_n_0 ),
        .G(\wRxData_Next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wRxData_Next[0]));
  LUT5 #(
    .INIT(32'hF444CC44)) 
    \wRxData_Next_reg[0]_i_1 
       (.I0(\wRxData_Next_reg[7]_i_3_n_0 ),
        .I1(\rRxData_Current_reg_n_0_[0] ),
        .I2(data0[0]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\wRxData_Next_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wRxData_Next_reg[1] 
       (.CLR(1'b0),
        .D(\wRxData_Next_reg[1]_i_1_n_0 ),
        .G(\wRxData_Next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wRxData_Next[1]));
  LUT5 #(
    .INIT(32'hF444CC44)) 
    \wRxData_Next_reg[1]_i_1 
       (.I0(\wRxData_Next_reg[7]_i_3_n_0 ),
        .I1(data0[0]),
        .I2(data0[1]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\wRxData_Next_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wRxData_Next_reg[2] 
       (.CLR(1'b0),
        .D(\wRxData_Next_reg[2]_i_1_n_0 ),
        .G(\wRxData_Next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wRxData_Next[2]));
  LUT5 #(
    .INIT(32'hF444CC44)) 
    \wRxData_Next_reg[2]_i_1 
       (.I0(\wRxData_Next_reg[7]_i_3_n_0 ),
        .I1(data0[1]),
        .I2(data0[2]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\wRxData_Next_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wRxData_Next_reg[3] 
       (.CLR(1'b0),
        .D(\wRxData_Next_reg[3]_i_1_n_0 ),
        .G(\wRxData_Next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wRxData_Next[3]));
  LUT5 #(
    .INIT(32'hF444CC44)) 
    \wRxData_Next_reg[3]_i_1 
       (.I0(\wRxData_Next_reg[7]_i_3_n_0 ),
        .I1(data0[2]),
        .I2(data0[3]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\wRxData_Next_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wRxData_Next_reg[4] 
       (.CLR(1'b0),
        .D(\wRxData_Next_reg[4]_i_1_n_0 ),
        .G(\wRxData_Next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wRxData_Next[4]));
  LUT5 #(
    .INIT(32'hF444CC44)) 
    \wRxData_Next_reg[4]_i_1 
       (.I0(\wRxData_Next_reg[7]_i_3_n_0 ),
        .I1(data0[3]),
        .I2(data0[4]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\wRxData_Next_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wRxData_Next_reg[5] 
       (.CLR(1'b0),
        .D(\wRxData_Next_reg[5]_i_1_n_0 ),
        .G(\wRxData_Next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wRxData_Next[5]));
  LUT5 #(
    .INIT(32'hF444CC44)) 
    \wRxData_Next_reg[5]_i_1 
       (.I0(\wRxData_Next_reg[7]_i_3_n_0 ),
        .I1(data0[4]),
        .I2(data0[5]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\wRxData_Next_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wRxData_Next_reg[6] 
       (.CLR(1'b0),
        .D(\wRxData_Next_reg[6]_i_1_n_0 ),
        .G(\wRxData_Next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wRxData_Next[6]));
  LUT5 #(
    .INIT(32'hF444CC44)) 
    \wRxData_Next_reg[6]_i_1 
       (.I0(\wRxData_Next_reg[7]_i_3_n_0 ),
        .I1(data0[5]),
        .I2(data0[6]),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\wRxData_Next_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wRxData_Next_reg[7] 
       (.CLR(1'b0),
        .D(\wRxData_Next_reg[7]_i_1_n_0 ),
        .G(\wRxData_Next_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(wRxData_Next[7]));
  LUT5 #(
    .INIT(32'hF444C4C4)) 
    \wRxData_Next_reg[7]_i_1 
       (.I0(\wRxData_Next_reg[7]_i_3_n_0 ),
        .I1(data0[6]),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(data0[7]),
        .I4(\wRxData_Next_reg[7]_i_4_n_0 ),
        .O(\wRxData_Next_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wRxData_Next_reg[7]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(Q),
        .O(\wRxData_Next_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \wRxData_Next_reg[7]_i_3 
       (.I0(Q),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .O(\wRxData_Next_reg[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \wRxData_Next_reg[7]_i_4 
       (.I0(\FSM_onehot_rFSM_Current[3]_i_4_n_0 ),
        .I1(rCnt_Current[11]),
        .I2(rCnt_Current[5]),
        .I3(rCnt_Current[6]),
        .I4(\FSM_onehot_rFSM_Current[3]_i_3_n_0 ),
        .O(\wRxData_Next_reg[7]_i_4_n_0 ));
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

  wire UART_RX_INST_n_2;
  wire UART_RX_INST_n_4;
  wire UART_RX_INST_n_6;
  wire UART_TX_INST_n_0;
  wire UART_TX_INST_n_1;
  wire UART_TX_INST_n_17;
  wire iClk;
  wire iRst;
  wire iRx;
  wire oTx;
  wire [93:0]rBuffer;
  wire \rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11_n_0 ;
  wire \rBuffer_reg[29]_inst_rBuffer_reg_s_12_n_0 ;
  wire \rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11_n_0 ;
  wire \rBuffer_reg[38]_inst_rBuffer_reg_s_12_n_0 ;
  wire \rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10_n_0 ;
  wire \rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11_n_0 ;
  wire \rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0_n_0 ;
  wire \rBuffer_reg[74]_inst_rBuffer_reg_s_11_n_0 ;
  wire \rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2_n_0 ;
  wire \rBuffer_reg[77]_inst_rBuffer_reg_s_12_n_0 ;
  wire \rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11_n_0 ;
  wire \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0 ;
  wire \rBuffer_reg[81]_inst_rBuffer_reg_r_1_n_0 ;
  wire \rBuffer_reg[84]_inst_rBuffer_reg_r_3_n_0 ;
  wire \rBuffer_reg[86]_inst_rBuffer_reg_s_12_n_0 ;
  wire \rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0 ;
  wire rBuffer_reg_gate__0_n_0;
  wire rBuffer_reg_gate__1_n_0;
  wire rBuffer_reg_gate__2_n_0;
  wire rBuffer_reg_gate__3_n_0;
  wire rBuffer_reg_gate__4_n_0;
  wire rBuffer_reg_gate__5_n_0;
  wire rBuffer_reg_gate__6_n_0;
  wire rBuffer_reg_gate_n_0;
  wire \rBuffer_reg_n_0_[88] ;
  wire \rBuffer_reg_n_0_[89] ;
  wire \rBuffer_reg_n_0_[90] ;
  wire \rBuffer_reg_n_0_[91] ;
  wire \rBuffer_reg_n_0_[92] ;
  wire \rBuffer_reg_n_0_[93] ;
  wire \rBuffer_reg_n_0_[94] ;
  wire \rBuffer_reg_n_0_[95] ;
  wire rBuffer_reg_r_0_n_0;
  wire rBuffer_reg_r_1_n_0;
  wire rBuffer_reg_r_2_n_0;
  wire rBuffer_reg_r_3_n_0;
  wire rBuffer_reg_r_4_n_0;
  wire rBuffer_reg_r_5_n_0;
  wire rBuffer_reg_r_6_n_0;
  wire rBuffer_reg_r_7_n_0;
  wire rBuffer_reg_r_8_n_0;
  wire rBuffer_reg_r_9_n_0;
  wire rBuffer_reg_r_n_0;
  wire rBuffer_reg_s_10_n_0;
  wire rBuffer_reg_s_11_n_0;
  wire rBuffer_reg_s_12_n_0;
  wire rBuffer_reg_s_n_0;
  wire [3:0]rCnt;
  wire [2:0]rCntRx;
  wire \rCntRx[3]_i_2_n_0 ;
  wire \rCntRx_reg_n_0_[0] ;
  wire \rCntRx_reg_n_0_[1] ;
  wire \rCntRx_reg_n_0_[2] ;
  wire \rCntRx_reg_n_0_[3] ;
  wire \rCnt_reg_n_0_[0] ;
  wire \rCnt_reg_n_0_[1] ;
  wire \rCnt_reg_n_0_[2] ;
  wire \rCnt_reg_n_0_[3] ;
  wire [2:0]rFSM;
  wire [2:0]rFSM__0;
  wire [7:0]rTxByte;
  wire \rTxByte[7]_i_1_n_0 ;
  wire \rTxByte_reg_n_0_[0] ;
  wire \rTxByte_reg_n_0_[1] ;
  wire \rTxByte_reg_n_0_[2] ;
  wire \rTxByte_reg_n_0_[3] ;
  wire \rTxByte_reg_n_0_[4] ;
  wire \rTxByte_reg_n_0_[5] ;
  wire \rTxByte_reg_n_0_[6] ;
  wire \rTxByte_reg_n_0_[7] ;
  wire rTxStart_reg_n_0;
  wire wRxDone;

  (* FSM_ENCODED_STATES = "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010" *) 
  FDRE \FSM_sequential_rFSM_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(rFSM__0[0]),
        .Q(rFSM[0]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010" *) 
  FDRE \FSM_sequential_rFSM_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(rFSM__0[1]),
        .Q(rFSM[1]),
        .R(iRst));
  (* FSM_ENCODED_STATES = "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010" *) 
  FDRE \FSM_sequential_rFSM_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(rFSM__0[2]),
        .Q(rFSM[2]),
        .R(iRst));
  design_1_uart_top_0_0_uart_rx UART_RX_INST
       (.D({rCntRx[2],UART_RX_INST_n_2,rCntRx[0]}),
        .E(UART_RX_INST_n_6),
        .\FSM_onehot_rFSM_Current_reg[4]_0 (UART_RX_INST_n_4),
        .\FSM_sequential_rFSM_reg[1] (rFSM__0[1]),
        .\FSM_sequential_rFSM_reg[1]_0 (rFSM),
        .\FSM_sequential_rFSM_reg[1]_1 ({\rCntRx_reg_n_0_[3] ,\rCntRx_reg_n_0_[2] ,\rCntRx_reg_n_0_[1] ,\rCntRx_reg_n_0_[0] }),
        .\FSM_sequential_rFSM_reg[1]_2 (UART_TX_INST_n_0),
        .Q(wRxDone),
        .iClk(iClk),
        .iRst(iRst),
        .iRx(iRx),
        .rBuffer(rBuffer[7:0]));
  design_1_uart_top_0_0_uart_tx UART_TX_INST
       (.D({rFSM__0[2],rFSM__0[0]}),
        .\FSM_sequential_rFSM_reg[0] (UART_RX_INST_n_4),
        .\FSM_sequential_rFSM_reg[1] (UART_TX_INST_n_1),
        .\FSM_sequential_rFSM_reg[2] (UART_TX_INST_n_0),
        .\FSM_sequential_rFSM_reg[2]_0 (UART_TX_INST_n_17),
        .Q(rFSM),
        .iClk(iClk),
        .iRst(iRst),
        .oTx(oTx),
        .\rBuffer_reg[37] (wRxDone),
        .\rBuffer_reg[95] (rTxByte),
        .\rCnt_reg[2] (rCnt),
        .\rCnt_reg[3] ({\rCnt_reg_n_0_[3] ,\rCnt_reg_n_0_[2] ,\rCnt_reg_n_0_[1] ,\rCnt_reg_n_0_[0] }),
        .\rTxByte_reg[1] (\rBuffer_reg_n_0_[89] ),
        .\rTxByte_reg[4] (\rBuffer_reg_n_0_[92] ),
        .\rTxByte_reg[5] ({\rBuffer_reg_n_0_[93] ,\rBuffer_reg_n_0_[91] ,\rBuffer_reg_n_0_[90] ,\rBuffer_reg_n_0_[88] }),
        .\rTxByte_reg[6] (\rBuffer_reg_n_0_[94] ),
        .\rTxByte_reg[7] (\rBuffer_reg_n_0_[95] ),
        .\rTxData_Current_reg[7]_0 ({\rTxByte_reg_n_0_[7] ,\rTxByte_reg_n_0_[6] ,\rTxByte_reg_n_0_[5] ,\rTxByte_reg_n_0_[4] ,\rTxByte_reg_n_0_[3] ,\rTxByte_reg_n_0_[2] ,\rTxByte_reg_n_0_[1] ,\rTxByte_reg_n_0_[0] }),
        .rTxStart_reg(rTxStart_reg_n_0));
  FDSE \rBuffer_reg[0] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[0]),
        .Q(rBuffer[8]),
        .S(iRst));
  FDSE \rBuffer_reg[10] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[10]),
        .Q(rBuffer[18]),
        .S(iRst));
  FDRE \rBuffer_reg[11] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[11]),
        .Q(rBuffer[19]),
        .R(iRst));
  FDRE \rBuffer_reg[12] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[12]),
        .Q(rBuffer[20]),
        .R(iRst));
  FDRE \rBuffer_reg[16] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[16]),
        .Q(rBuffer[24]),
        .R(iRst));
  FDRE \rBuffer_reg[17] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[17]),
        .Q(rBuffer[25]),
        .R(iRst));
  FDSE \rBuffer_reg[18] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[18]),
        .Q(rBuffer[26]),
        .S(iRst));
  FDSE \rBuffer_reg[19] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[19]),
        .Q(rBuffer[27]),
        .S(iRst));
  FDRE \rBuffer_reg[1] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[1]),
        .Q(rBuffer[9]),
        .R(iRst));
  FDRE \rBuffer_reg[20] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[20]),
        .Q(rBuffer[28]),
        .R(iRst));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11 " *) 
  SRL16E \rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(UART_TX_INST_n_1),
        .CLK(iClk),
        .D(rBuffer[5]),
        .Q(\rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11_n_0 ));
  FDRE \rBuffer_reg[24] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[24]),
        .Q(rBuffer[32]),
        .R(iRst));
  FDSE \rBuffer_reg[25] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[25]),
        .Q(rBuffer[33]),
        .S(iRst));
  FDRE \rBuffer_reg[26] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[26]),
        .Q(rBuffer[34]),
        .R(iRst));
  FDRE \rBuffer_reg[27] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[27]),
        .Q(rBuffer[35]),
        .R(iRst));
  FDSE \rBuffer_reg[28] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[28]),
        .Q(rBuffer[36]),
        .S(iRst));
  FDRE \rBuffer_reg[29]_inst_rBuffer_reg_s_12 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(\rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11_n_0 ),
        .Q(\rBuffer_reg[29]_inst_rBuffer_reg_s_12_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[2] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[2]),
        .Q(rBuffer[10]),
        .R(iRst));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11 " *) 
  SRL16E \rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(UART_TX_INST_n_1),
        .CLK(iClk),
        .D(rBuffer[14]),
        .Q(\rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11_n_0 ));
  FDSE \rBuffer_reg[32] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[32]),
        .Q(rBuffer[40]),
        .S(iRst));
  FDSE \rBuffer_reg[33] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[33]),
        .Q(rBuffer[41]),
        .S(iRst));
  FDSE \rBuffer_reg[34] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[34]),
        .Q(rBuffer[42]),
        .S(iRst));
  FDSE \rBuffer_reg[35] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[35]),
        .Q(rBuffer[43]),
        .S(iRst));
  FDRE \rBuffer_reg[36] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[36]),
        .Q(rBuffer[44]),
        .R(iRst));
  FDSE \rBuffer_reg[37] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_gate__6_n_0),
        .Q(rBuffer[45]),
        .S(iRst));
  FDRE \rBuffer_reg[38]_inst_rBuffer_reg_s_12 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(\rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11_n_0 ),
        .Q(\rBuffer_reg[38]_inst_rBuffer_reg_s_12_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[3] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[3]),
        .Q(rBuffer[11]),
        .R(iRst));
  FDSE \rBuffer_reg[40] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[40]),
        .Q(rBuffer[48]),
        .S(iRst));
  FDSE \rBuffer_reg[41] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[41]),
        .Q(rBuffer[49]),
        .S(iRst));
  FDSE \rBuffer_reg[42] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[42]),
        .Q(rBuffer[50]),
        .S(iRst));
  FDRE \rBuffer_reg[43] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[43]),
        .Q(rBuffer[51]),
        .R(iRst));
  FDSE \rBuffer_reg[44] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[44]),
        .Q(rBuffer[52]),
        .S(iRst));
  FDRE \rBuffer_reg[45] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[45]),
        .Q(rBuffer[53]),
        .R(iRst));
  FDSE \rBuffer_reg[46] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_gate__5_n_0),
        .Q(rBuffer[54]),
        .S(iRst));
  FDRE \rBuffer_reg[48] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[48]),
        .Q(rBuffer[56]),
        .R(iRst));
  FDRE \rBuffer_reg[49] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[49]),
        .Q(rBuffer[57]),
        .R(iRst));
  FDRE \rBuffer_reg[4] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[4]),
        .Q(rBuffer[12]),
        .R(iRst));
  FDRE \rBuffer_reg[50] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[50]),
        .Q(rBuffer[58]),
        .R(iRst));
  FDRE \rBuffer_reg[51] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[51]),
        .Q(rBuffer[59]),
        .R(iRst));
  FDRE \rBuffer_reg[54] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[54]),
        .Q(rBuffer[62]),
        .R(iRst));
  FDSE \rBuffer_reg[56] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[56]),
        .Q(rBuffer[64]),
        .S(iRst));
  FDSE \rBuffer_reg[57] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[57]),
        .Q(rBuffer[65]),
        .S(iRst));
  FDSE \rBuffer_reg[59] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[59]),
        .Q(rBuffer[67]),
        .S(iRst));
  FDRE \rBuffer_reg[64] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[64]),
        .Q(rBuffer[72]),
        .R(iRst));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10 " *) 
  SRL16E \rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(UART_TX_INST_n_1),
        .CLK(iClk),
        .D(rBuffer[58]),
        .Q(\rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10_n_0 ));
  FDSE \rBuffer_reg[67] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[67]),
        .Q(rBuffer[75]),
        .S(iRst));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11 " *) 
  SRL16E \rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(UART_TX_INST_n_1),
        .CLK(iClk),
        .D(rBuffer[53]),
        .Q(\rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11_n_0 ));
  FDRE \rBuffer_reg[6] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[6]),
        .Q(rBuffer[14]),
        .R(iRst));
  FDRE \rBuffer_reg[72] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[72]),
        .Q(rBuffer[80]),
        .R(iRst));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0 " *) 
  SRL16E \rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(UART_TX_INST_n_1),
        .CLK(iClk),
        .D(rBuffer[65]),
        .Q(\rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0_n_0 ));
  FDRE \rBuffer_reg[74]_inst_rBuffer_reg_s_11 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(\rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10_n_0 ),
        .Q(\rBuffer_reg[74]_inst_rBuffer_reg_s_11_n_0 ),
        .R(1'b0));
  FDSE \rBuffer_reg[75] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[75]),
        .Q(rBuffer[83]),
        .S(iRst));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2 " *) 
  SRL16E \rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(UART_TX_INST_n_1),
        .CLK(iClk),
        .D(rBuffer[52]),
        .Q(\rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2_n_0 ));
  FDRE \rBuffer_reg[77]_inst_rBuffer_reg_s_12 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(\rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11_n_0 ),
        .Q(\rBuffer_reg[77]_inst_rBuffer_reg_s_12_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11 " *) 
  SRL16E \rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(UART_TX_INST_n_1),
        .CLK(iClk),
        .D(rBuffer[62]),
        .Q(\rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11_n_0 ));
  (* srl_bus_name = "\inst/rBuffer_reg " *) 
  (* srl_name = "\inst/rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8 " *) 
  SRL16E \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(UART_TX_INST_n_1),
        .CLK(iClk),
        .D(rBuffer[7]),
        .Q(\rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0 ));
  FDSE \rBuffer_reg[80] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[80]),
        .Q(rBuffer[88]),
        .S(iRst));
  FDRE \rBuffer_reg[81]_inst_rBuffer_reg_r_1 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(\rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0_n_0 ),
        .Q(\rBuffer_reg[81]_inst_rBuffer_reg_r_1_n_0 ),
        .R(1'b0));
  FDSE \rBuffer_reg[82] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_gate__4_n_0),
        .Q(rBuffer[90]),
        .S(iRst));
  FDRE \rBuffer_reg[83] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[83]),
        .Q(rBuffer[91]),
        .R(iRst));
  FDRE \rBuffer_reg[84]_inst_rBuffer_reg_r_3 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(\rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2_n_0 ),
        .Q(\rBuffer_reg[84]_inst_rBuffer_reg_r_3_n_0 ),
        .R(1'b0));
  FDSE \rBuffer_reg[85] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_gate__3_n_0),
        .Q(rBuffer[93]),
        .S(iRst));
  FDRE \rBuffer_reg[86]_inst_rBuffer_reg_s_12 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(\rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11_n_0 ),
        .Q(\rBuffer_reg[86]_inst_rBuffer_reg_s_12_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[87]_inst_rBuffer_reg_r_9 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(\rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0 ),
        .Q(\rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0 ),
        .R(1'b0));
  FDRE \rBuffer_reg[88] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[88]),
        .Q(\rBuffer_reg_n_0_[88] ),
        .R(iRst));
  FDRE \rBuffer_reg[89] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_gate__1_n_0),
        .Q(\rBuffer_reg_n_0_[89] ),
        .R(iRst));
  FDRE \rBuffer_reg[8] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[8]),
        .Q(rBuffer[16]),
        .R(iRst));
  FDRE \rBuffer_reg[90] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[90]),
        .Q(\rBuffer_reg_n_0_[90] ),
        .R(iRst));
  FDSE \rBuffer_reg[91] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[91]),
        .Q(\rBuffer_reg_n_0_[91] ),
        .S(iRst));
  FDRE \rBuffer_reg[92] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_gate__0_n_0),
        .Q(\rBuffer_reg_n_0_[92] ),
        .R(iRst));
  FDRE \rBuffer_reg[93] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[93]),
        .Q(\rBuffer_reg_n_0_[93] ),
        .R(iRst));
  FDSE \rBuffer_reg[94] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_gate__2_n_0),
        .Q(\rBuffer_reg_n_0_[94] ),
        .S(iRst));
  FDRE \rBuffer_reg[95] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_gate_n_0),
        .Q(\rBuffer_reg_n_0_[95] ),
        .R(iRst));
  FDRE \rBuffer_reg[9] 
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer[9]),
        .Q(rBuffer[17]),
        .R(iRst));
  LUT2 #(
    .INIT(4'h8)) 
    rBuffer_reg_gate
       (.I0(\rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0 ),
        .I1(rBuffer_reg_r_9_n_0),
        .O(rBuffer_reg_gate_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rBuffer_reg_gate__0
       (.I0(\rBuffer_reg[84]_inst_rBuffer_reg_r_3_n_0 ),
        .I1(rBuffer_reg_r_3_n_0),
        .O(rBuffer_reg_gate__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rBuffer_reg_gate__1
       (.I0(\rBuffer_reg[81]_inst_rBuffer_reg_r_1_n_0 ),
        .I1(rBuffer_reg_r_1_n_0),
        .O(rBuffer_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rBuffer_reg_gate__2
       (.I0(\rBuffer_reg[86]_inst_rBuffer_reg_s_12_n_0 ),
        .I1(rBuffer_reg_s_12_n_0),
        .O(rBuffer_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rBuffer_reg_gate__3
       (.I0(\rBuffer_reg[77]_inst_rBuffer_reg_s_12_n_0 ),
        .I1(rBuffer_reg_s_12_n_0),
        .O(rBuffer_reg_gate__3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rBuffer_reg_gate__4
       (.I0(\rBuffer_reg[74]_inst_rBuffer_reg_s_11_n_0 ),
        .I1(rBuffer_reg_s_11_n_0),
        .O(rBuffer_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rBuffer_reg_gate__5
       (.I0(\rBuffer_reg[38]_inst_rBuffer_reg_s_12_n_0 ),
        .I1(rBuffer_reg_s_12_n_0),
        .O(rBuffer_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rBuffer_reg_gate__6
       (.I0(\rBuffer_reg[29]_inst_rBuffer_reg_s_12_n_0 ),
        .I1(rBuffer_reg_s_12_n_0),
        .O(rBuffer_reg_gate__6_n_0));
  FDRE rBuffer_reg_r
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(1'b1),
        .Q(rBuffer_reg_r_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_0
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_r_n_0),
        .Q(rBuffer_reg_r_0_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_1
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_r_0_n_0),
        .Q(rBuffer_reg_r_1_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_2
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_r_1_n_0),
        .Q(rBuffer_reg_r_2_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_3
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_r_2_n_0),
        .Q(rBuffer_reg_r_3_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_4
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_r_3_n_0),
        .Q(rBuffer_reg_r_4_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_5
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_r_4_n_0),
        .Q(rBuffer_reg_r_5_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_6
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_r_5_n_0),
        .Q(rBuffer_reg_r_6_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_7
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_r_6_n_0),
        .Q(rBuffer_reg_r_7_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_8
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_r_7_n_0),
        .Q(rBuffer_reg_r_8_n_0),
        .R(iRst));
  FDRE rBuffer_reg_r_9
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_r_8_n_0),
        .Q(rBuffer_reg_r_9_n_0),
        .R(iRst));
  FDSE rBuffer_reg_s
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(1'b0),
        .Q(rBuffer_reg_s_n_0),
        .S(iRst));
  FDSE rBuffer_reg_s_10
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_s_n_0),
        .Q(rBuffer_reg_s_10_n_0),
        .S(iRst));
  FDSE rBuffer_reg_s_11
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_s_10_n_0),
        .Q(rBuffer_reg_s_11_n_0),
        .S(iRst));
  FDSE rBuffer_reg_s_12
       (.C(iClk),
        .CE(UART_TX_INST_n_1),
        .D(rBuffer_reg_s_11_n_0),
        .Q(rBuffer_reg_s_12_n_0),
        .S(iRst));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \rCntRx[3]_i_2 
       (.I0(\rCntRx_reg_n_0_[3] ),
        .I1(\rCntRx_reg_n_0_[0] ),
        .I2(\rCntRx_reg_n_0_[1] ),
        .I3(\rCntRx_reg_n_0_[2] ),
        .I4(rFSM[0]),
        .O(\rCntRx[3]_i_2_n_0 ));
  FDRE \rCntRx_reg[0] 
       (.C(iClk),
        .CE(UART_RX_INST_n_6),
        .D(rCntRx[0]),
        .Q(\rCntRx_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCntRx_reg[1] 
       (.C(iClk),
        .CE(UART_RX_INST_n_6),
        .D(UART_RX_INST_n_2),
        .Q(\rCntRx_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCntRx_reg[2] 
       (.C(iClk),
        .CE(UART_RX_INST_n_6),
        .D(rCntRx[2]),
        .Q(\rCntRx_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCntRx_reg[3] 
       (.C(iClk),
        .CE(UART_RX_INST_n_6),
        .D(\rCntRx[3]_i_2_n_0 ),
        .Q(\rCntRx_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rCnt_reg[0] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rCnt[0]),
        .Q(\rCnt_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rCnt_reg[1] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rCnt[1]),
        .Q(\rCnt_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rCnt_reg[2] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rCnt[2]),
        .Q(\rCnt_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rCnt_reg[3] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rCnt[3]),
        .Q(\rCnt_reg_n_0_[3] ),
        .R(iRst));
  LUT2 #(
    .INIT(4'h1)) 
    \rTxByte[7]_i_1 
       (.I0(rFSM[2]),
        .I1(rFSM[0]),
        .O(\rTxByte[7]_i_1_n_0 ));
  FDRE \rTxByte_reg[0] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rTxByte[0]),
        .Q(\rTxByte_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rTxByte_reg[1] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rTxByte[1]),
        .Q(\rTxByte_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rTxByte_reg[2] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rTxByte[2]),
        .Q(\rTxByte_reg_n_0_[2] ),
        .R(iRst));
  FDRE \rTxByte_reg[3] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rTxByte[3]),
        .Q(\rTxByte_reg_n_0_[3] ),
        .R(iRst));
  FDRE \rTxByte_reg[4] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rTxByte[4]),
        .Q(\rTxByte_reg_n_0_[4] ),
        .R(iRst));
  FDRE \rTxByte_reg[5] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rTxByte[5]),
        .Q(\rTxByte_reg_n_0_[5] ),
        .R(iRst));
  FDRE \rTxByte_reg[6] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rTxByte[6]),
        .Q(\rTxByte_reg_n_0_[6] ),
        .R(iRst));
  FDRE \rTxByte_reg[7] 
       (.C(iClk),
        .CE(\rTxByte[7]_i_1_n_0 ),
        .D(rTxByte[7]),
        .Q(\rTxByte_reg_n_0_[7] ),
        .R(iRst));
  FDRE rTxStart_reg
       (.C(iClk),
        .CE(1'b1),
        .D(UART_TX_INST_n_17),
        .Q(rTxStart_reg_n_0),
        .R(iRst));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module design_1_uart_top_0_0_uart_tx
   (\FSM_sequential_rFSM_reg[2] ,
    \FSM_sequential_rFSM_reg[1] ,
    D,
    \rCnt_reg[2] ,
    \rBuffer_reg[95] ,
    oTx,
    \FSM_sequential_rFSM_reg[2]_0 ,
    Q,
    \rCnt_reg[3] ,
    \rBuffer_reg[37] ,
    rTxStart_reg,
    \FSM_sequential_rFSM_reg[0] ,
    \rTxByte_reg[7] ,
    \rTxByte_reg[6] ,
    \rTxByte_reg[5] ,
    \rTxByte_reg[4] ,
    \rTxByte_reg[1] ,
    \rTxData_Current_reg[7]_0 ,
    iRst,
    iClk);
  output \FSM_sequential_rFSM_reg[2] ;
  output \FSM_sequential_rFSM_reg[1] ;
  output [1:0]D;
  output [3:0]\rCnt_reg[2] ;
  output [7:0]\rBuffer_reg[95] ;
  output oTx;
  output \FSM_sequential_rFSM_reg[2]_0 ;
  input [2:0]Q;
  input [3:0]\rCnt_reg[3] ;
  input [0:0]\rBuffer_reg[37] ;
  input rTxStart_reg;
  input \FSM_sequential_rFSM_reg[0] ;
  input \rTxByte_reg[7] ;
  input \rTxByte_reg[6] ;
  input [3:0]\rTxByte_reg[5] ;
  input \rTxByte_reg[4] ;
  input \rTxByte_reg[1] ;
  input [7:0]\rTxData_Current_reg[7]_0 ;
  input iRst;
  input iClk;

  wire [1:0]D;
  wire \FSM_onehot_rFSM_Current[0]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_Current[1]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[2]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[3]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_1__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ;
  wire \FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[0] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_Current_reg_n_0_[3] ;
  wire \FSM_sequential_rFSM[2]_i_2_n_0 ;
  wire \FSM_sequential_rFSM_reg[0] ;
  wire \FSM_sequential_rFSM_reg[1] ;
  wire \FSM_sequential_rFSM_reg[2] ;
  wire \FSM_sequential_rFSM_reg[2]_0 ;
  wire [2:0]Q;
  wire iClk;
  wire iRst;
  wire [6:0]in7;
  wire oTx;
  wire \rBit_Current[0]_i_1_n_0 ;
  wire \rBit_Current[0]_i_2_n_0 ;
  wire \rBit_Current[1]_i_1_n_0 ;
  wire \rBit_Current[2]_i_1_n_0 ;
  wire \rBit_Current[2]_i_3_n_0 ;
  wire \rBit_Current[2]_i_4_n_0 ;
  wire \rBit_Current_reg_n_0_[0] ;
  wire \rBit_Current_reg_n_0_[1] ;
  wire \rBit_Current_reg_n_0_[2] ;
  wire \rBuffer[93]_i_2_n_0 ;
  wire [0:0]\rBuffer_reg[37] ;
  wire [7:0]\rBuffer_reg[95] ;
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
  wire \rCnt_Current[8]_i_2_n_0 ;
  wire \rCnt_Current[9]_i_1__0_n_0 ;
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
  wire [3:0]\rCnt_reg[2] ;
  wire [3:0]\rCnt_reg[3] ;
  wire \rTxByte_reg[1] ;
  wire \rTxByte_reg[4] ;
  wire [3:0]\rTxByte_reg[5] ;
  wire \rTxByte_reg[6] ;
  wire \rTxByte_reg[7] ;
  wire \rTxData_Current[0]_i_1_n_0 ;
  wire \rTxData_Current[1]_i_1_n_0 ;
  wire \rTxData_Current[2]_i_1_n_0 ;
  wire \rTxData_Current[3]_i_1_n_0 ;
  wire \rTxData_Current[4]_i_1_n_0 ;
  wire \rTxData_Current[5]_i_1_n_0 ;
  wire \rTxData_Current[6]_i_1_n_0 ;
  wire \rTxData_Current[7]_i_2_n_0 ;
  wire \rTxData_Current[7]_i_3_n_0 ;
  wire [7:0]\rTxData_Current_reg[7]_0 ;
  wire \rTxData_Current_reg_n_0_[0] ;
  wire rTxStart_reg;
  wire wBit_Next;
  wire wTxData_Next;
  wire wTxDone;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_rFSM_Current[0]_i_1 
       (.I0(wTxDone),
        .I1(rTxStart_reg),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rFSM_Current[1]_i_1__0 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\FSM_onehot_rFSM_Current[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F00FF00FF00)) 
    \FSM_onehot_rFSM_Current[2]_i_1__0 
       (.I0(\rBit_Current_reg_n_0_[0] ),
        .I1(\rBit_Current_reg_n_0_[1] ),
        .I2(\rBit_Current_reg_n_0_[2] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I5(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .O(\FSM_onehot_rFSM_Current[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hC0000000AAAAAAAA)) 
    \FSM_onehot_rFSM_Current[3]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\rBit_Current_reg_n_0_[0] ),
        .I3(\rBit_Current_reg_n_0_[1] ),
        .I4(\rBit_Current_reg_n_0_[2] ),
        .I5(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .O(\FSM_onehot_rFSM_Current[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_rFSM_Current[4]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \FSM_onehot_rFSM_Current[4]_i_2__0 
       (.I0(\rCnt_Current_reg_n_0_[10] ),
        .I1(\rCnt_Current_reg_n_0_[8] ),
        .I2(\rCnt_Current_reg_n_0_[9] ),
        .I3(\rCnt_Current_reg_n_0_[6] ),
        .I4(\rCnt_Current_reg_n_0_[7] ),
        .I5(\FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ),
        .O(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_rFSM_Current[4]_i_3__0 
       (.I0(\rCnt_Current_reg_n_0_[2] ),
        .I1(\rCnt_Current_reg_n_0_[3] ),
        .I2(\rCnt_Current_reg_n_0_[4] ),
        .I3(\rCnt_Current_reg_n_0_[5] ),
        .O(\FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ));
  (* FSM_ENCODED_STATES = "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_Current[0]_i_1_n_0 ),
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
    .INIT(64'h00000000150515FF)) 
    \FSM_sequential_rFSM[0]_i_1 
       (.I0(\FSM_sequential_rFSM[2]_i_2_n_0 ),
        .I1(wTxDone),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_sequential_rFSM_reg[0] ),
        .I5(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0444044404440000)) 
    \FSM_sequential_rFSM[1]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\rCnt_reg[3] [2]),
        .I3(\rCnt_reg[3] [3]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I5(wTxDone),
        .O(\FSM_sequential_rFSM_reg[2] ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rFSM[2]_i_1 
       (.I0(\FSM_sequential_rFSM[2]_i_2_n_0 ),
        .I1(Q[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00000000F1110000)) 
    \FSM_sequential_rFSM[2]_i_2 
       (.I0(wTxDone),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rCnt_reg[3] [3]),
        .I3(\rCnt_reg[3] [2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\FSM_sequential_rFSM[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    oTx_INST_0
       (.I0(\rTxData_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(oTx));
  LUT6 #(
    .INIT(64'h00000007AAAAAAA8)) 
    \rBit_Current[0]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I2(\rBit_Current[0]_i_2_n_0 ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(\rBit_Current_reg_n_0_[0] ),
        .O(\rBit_Current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rBit_Current[0]_i_2 
       (.I0(wTxDone),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .O(\rBit_Current[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \rBit_Current[1]_i_1 
       (.I0(\rBit_Current_reg_n_0_[0] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I2(wBit_Next),
        .I3(\rBit_Current_reg_n_0_[1] ),
        .O(\rBit_Current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \rBit_Current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[0] ),
        .I2(\rBit_Current_reg_n_0_[1] ),
        .I3(wBit_Next),
        .I4(\rBit_Current_reg_n_0_[2] ),
        .O(\rBit_Current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8088)) 
    \rBit_Current[2]_i_2__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\rCnt_Current_reg_n_0_[10] ),
        .I2(\rBit_Current[2]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ),
        .I4(\rBit_Current[2]_i_4_n_0 ),
        .O(wBit_Next));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rBit_Current[2]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[8] ),
        .I1(\rCnt_Current_reg_n_0_[9] ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rBit_Current[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rBit_Current[2]_i_4 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I3(wTxDone),
        .O(\rBit_Current[2]_i_4_n_0 ));
  FDRE \rBit_Current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[0]_i_1_n_0 ),
        .Q(\rBit_Current_reg_n_0_[0] ),
        .R(iRst));
  FDRE \rBit_Current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[1]_i_1_n_0 ),
        .Q(\rBit_Current_reg_n_0_[1] ),
        .R(iRst));
  FDRE \rBit_Current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\rBit_Current[2]_i_1_n_0 ),
        .Q(\rBit_Current_reg_n_0_[2] ),
        .R(iRst));
  LUT5 #(
    .INIT(32'h00003055)) 
    \rBuffer[93]_i_1 
       (.I0(\rBuffer[93]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\rBuffer_reg[37] ),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\FSM_sequential_rFSM_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hF111FFFF)) 
    \rBuffer[93]_i_2 
       (.I0(wTxDone),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rCnt_reg[3] [3]),
        .I3(\rCnt_reg[3] [2]),
        .I4(Q[1]),
        .O(\rBuffer[93]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rCnt[0]_i_1 
       (.I0(\FSM_sequential_rFSM_reg[2] ),
        .I1(\rCnt_reg[3] [0]),
        .O(\rCnt_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rCnt[1]_i_1 
       (.I0(\FSM_sequential_rFSM_reg[2] ),
        .I1(\rCnt_reg[3] [1]),
        .I2(\rCnt_reg[3] [0]),
        .O(\rCnt_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt[2]_i_1 
       (.I0(\FSM_sequential_rFSM_reg[2] ),
        .I1(\rCnt_reg[3] [0]),
        .I2(\rCnt_reg[3] [1]),
        .I3(\rCnt_reg[3] [2]),
        .O(\rCnt_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt[3]_i_1 
       (.I0(\FSM_sequential_rFSM_reg[2] ),
        .I1(\rCnt_reg[3] [2]),
        .I2(\rCnt_reg[3] [1]),
        .I3(\rCnt_reg[3] [0]),
        .I4(\rCnt_reg[3] [3]),
        .O(\rCnt_reg[2] [3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    \rCnt_Current[0]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8A88)) 
    \rCnt_Current[10]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[10] ),
        .I2(\rCnt_Current[10]_i_3_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[9] ),
        .O(\rCnt_Current[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2F2F2F2F2F2F2F00)) 
    \rCnt_Current[10]_i_2 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_3__0_n_0 ),
        .I1(\rBit_Current[2]_i_3_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[10] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I5(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rCnt_Current[10]_i_3 
       (.I0(\rCnt_Current_reg_n_0_[7] ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[8]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[8] ),
        .O(\rCnt_Current[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000FE00FE0000)) 
    \rCnt_Current[1]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[2]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[0] ),
        .I2(\rCnt_Current_reg_n_0_[1] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .O(\rCnt_Current[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt_Current[3]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .I2(\rCnt_Current_reg_n_0_[0] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[3] ),
        .O(\rCnt_Current[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rCnt_Current[4]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[2] ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[1] ),
        .I4(\rCnt_Current_reg_n_0_[0] ),
        .I5(\rCnt_Current_reg_n_0_[4] ),
        .O(\rCnt_Current[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \rCnt_Current[5]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current[5]_i_2_n_0 ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[4] ),
        .I5(\rCnt_Current_reg_n_0_[5] ),
        .O(\rCnt_Current[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rCnt_Current[5]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[0] ),
        .I1(\rCnt_Current_reg_n_0_[1] ),
        .O(\rCnt_Current[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000FE00FE0000)) 
    \rCnt_Current[6]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I4(\rCnt_Current[8]_i_2_n_0 ),
        .I5(\rCnt_Current_reg_n_0_[6] ),
        .O(\rCnt_Current[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rCnt_Current[7]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[6] ),
        .I2(\rCnt_Current[8]_i_2_n_0 ),
        .I3(\rCnt_Current_reg_n_0_[7] ),
        .O(\rCnt_Current[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rCnt_Current[8]_i_1__0 
       (.I0(\rCnt_Current[10]_i_2_n_0 ),
        .I1(\rCnt_Current_reg_n_0_[7] ),
        .I2(\rCnt_Current_reg_n_0_[6] ),
        .I3(\rCnt_Current[8]_i_2_n_0 ),
        .I4(\rCnt_Current_reg_n_0_[8] ),
        .O(\rCnt_Current[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rCnt_Current[8]_i_2 
       (.I0(\rCnt_Current_reg_n_0_[5] ),
        .I1(\rCnt_Current_reg_n_0_[4] ),
        .I2(\rCnt_Current_reg_n_0_[3] ),
        .I3(\rCnt_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current_reg_n_0_[1] ),
        .I5(\rCnt_Current_reg_n_0_[0] ),
        .O(\rCnt_Current[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5554000000005554)) 
    \rCnt_Current[9]_i_1__0 
       (.I0(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[3] ),
        .I3(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I4(\rCnt_Current[10]_i_3_n_0 ),
        .I5(\rCnt_Current_reg_n_0_[9] ),
        .O(\rCnt_Current[9]_i_1__0_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rTxByte[0]_i_1 
       (.I0(\rTxByte_reg[5] [0]),
        .I1(\FSM_sequential_rFSM_reg[2] ),
        .O(\rBuffer_reg[95] [0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rTxByte[1]_i_1 
       (.I0(\rTxByte_reg[1] ),
        .I1(\FSM_sequential_rFSM_reg[2] ),
        .O(\rBuffer_reg[95] [1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rTxByte[2]_i_1 
       (.I0(\rTxByte_reg[5] [1]),
        .I1(\FSM_sequential_rFSM_reg[2] ),
        .O(\rBuffer_reg[95] [2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rTxByte[3]_i_1 
       (.I0(\rTxByte_reg[5] [2]),
        .I1(\FSM_sequential_rFSM_reg[2] ),
        .O(\rBuffer_reg[95] [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rTxByte[4]_i_1 
       (.I0(\rTxByte_reg[4] ),
        .I1(\FSM_sequential_rFSM_reg[2] ),
        .O(\rBuffer_reg[95] [4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rTxByte[5]_i_1 
       (.I0(\rTxByte_reg[5] [3]),
        .I1(\FSM_sequential_rFSM_reg[2] ),
        .O(\rBuffer_reg[95] [5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rTxByte[6]_i_1 
       (.I0(\rTxByte_reg[6] ),
        .I1(\FSM_sequential_rFSM_reg[2] ),
        .O(\rBuffer_reg[95] [6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rTxByte[7]_i_2 
       (.I0(\rTxByte_reg[7] ),
        .I1(\FSM_sequential_rFSM_reg[2] ),
        .O(\rBuffer_reg[95] [7]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[0]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [0]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[0]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[1]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [1]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[1]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[2]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [2]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[2]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[3]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [3]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[3]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[4]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [4]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[4]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[5]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [5]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[5]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \rTxData_Current[6]_i_1 
       (.I0(\rTxData_Current_reg[7]_0 [6]),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .I3(in7[6]),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[1] ),
        .O(\rTxData_Current[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \rTxData_Current[7]_i_1 
       (.I0(rTxStart_reg),
        .I1(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I2(\rTxData_Current[7]_i_3_n_0 ),
        .I3(\FSM_onehot_rFSM_Current[4]_i_2__0_n_0 ),
        .I4(\FSM_onehot_rFSM_Current_reg_n_0_[2] ),
        .O(wTxData_Next));
  LUT2 #(
    .INIT(4'h8)) 
    \rTxData_Current[7]_i_2 
       (.I0(\FSM_onehot_rFSM_Current_reg_n_0_[0] ),
        .I1(\rTxData_Current_reg[7]_0 [7]),
        .O(\rTxData_Current[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rTxData_Current[7]_i_3 
       (.I0(\rBit_Current_reg_n_0_[2] ),
        .I1(\rBit_Current_reg_n_0_[1] ),
        .I2(\rBit_Current_reg_n_0_[0] ),
        .O(\rTxData_Current[7]_i_3_n_0 ));
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
        .D(\rTxData_Current[6]_i_1_n_0 ),
        .Q(in7[5]),
        .R(iRst));
  FDRE \rTxData_Current_reg[7] 
       (.C(iClk),
        .CE(wTxData_Next),
        .D(\rTxData_Current[7]_i_2_n_0 ),
        .Q(in7[6]),
        .R(iRst));
  LUT6 #(
    .INIT(64'hFFCFDDDD00001111)) 
    rTxStart_i_1
       (.I0(\rBuffer[93]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(wTxDone),
        .I4(Q[0]),
        .I5(rTxStart_reg),
        .O(\FSM_sequential_rFSM_reg[2]_0 ));
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
