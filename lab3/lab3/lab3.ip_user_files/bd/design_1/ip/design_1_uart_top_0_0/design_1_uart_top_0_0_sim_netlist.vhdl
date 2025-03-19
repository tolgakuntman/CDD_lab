-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Mar 19 11:40:31 2025
-- Host        : Gok2s_Victus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Goktug/Desktop/CDD_LAB/CDD_lab/lab3/lab3/lab3.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_rx is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rFSM14_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iRx : in STD_LOGIC;
    iClk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rCntRx_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rCntRx_reg[7]_0\ : in STD_LOGIC;
    \rCntRx_reg[6]\ : in STD_LOGIC;
    \rCntRx_reg[5]\ : in STD_LOGIC;
    \rCntRx_reg[4]\ : in STD_LOGIC;
    \rCntRx_reg[3]\ : in STD_LOGIC;
    \rCntRx_reg[2]\ : in STD_LOGIC;
    iRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_rx : entity is "uart_rx";
end design_1_uart_top_0_0_uart_rx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_rx is
  signal \FSM_onehot_rFSM_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_sequential_rFSM[1]_i_3_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal in6 : STD_LOGIC;
  signal rBit_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_4_n_0\ : STD_LOGIC;
  signal rCnt_Current : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \rCnt_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[11]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \^rfsm14_out\ : STD_LOGIC;
  signal rRx1 : STD_LOGIC;
  signal wBit_Next : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_0\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_1\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_2\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_3\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_4\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_5\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_6\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_7\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_2\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_3\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_5\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_6\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_7\ : STD_LOGIC;
  signal wCnt_Next0_carry_n_0 : STD_LOGIC;
  signal wCnt_Next0_carry_n_1 : STD_LOGIC;
  signal wCnt_Next0_carry_n_2 : STD_LOGIC;
  signal wCnt_Next0_carry_n_3 : STD_LOGIC;
  signal wCnt_Next0_carry_n_4 : STD_LOGIC;
  signal wCnt_Next0_carry_n_5 : STD_LOGIC;
  signal wCnt_Next0_carry_n_6 : STD_LOGIC;
  signal wCnt_Next0_carry_n_7 : STD_LOGIC;
  signal wRxDone : STD_LOGIC;
  signal \NLW_wCnt_Next0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wCnt_Next0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[3]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_3\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rCntRx[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rCntRx[1]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of wCnt_Next0_carry : label is 35;
  attribute ADDER_THRESHOLD of \wCnt_Next0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wCnt_Next0_carry__1\ : label is 35;
begin
  rFSM14_out <= \^rfsm14_out\;
\FSM_onehot_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data0(7),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wRxDone,
      O => \FSM_onehot_rFSM_Current[0]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => data0(7),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM_Current[1]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM_Current[2]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F00"
    )
        port map (
      I0 => rBit_Current(2),
      I1 => rBit_Current(0),
      I2 => rBit_Current(1),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM_Current[2]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200020002FFFF"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_4_n_0\,
      I1 => rCnt_Current(7),
      I2 => rCnt_Current(8),
      I3 => rCnt_Current(9),
      I4 => rCnt_Current(10),
      I5 => rCnt_Current(11),
      O => \FSM_onehot_rFSM_Current[2]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007FFF"
    )
        port map (
      I0 => rCnt_Current(4),
      I1 => rCnt_Current(3),
      I2 => rCnt_Current(2),
      I3 => rCnt_Current(5),
      I4 => rCnt_Current(6),
      I5 => rCnt_Current(11),
      O => \FSM_onehot_rFSM_Current[2]_i_4_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => rBit_Current(2),
      I3 => rBit_Current(0),
      I4 => rBit_Current(1),
      I5 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      O => \FSM_onehot_rFSM_Current[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[3]_i_4_n_0\,
      I1 => rCnt_Current(9),
      I2 => rCnt_Current(1),
      I3 => rCnt_Current(0),
      I4 => \FSM_onehot_rFSM_Current[3]_i_5_n_0\,
      O => \FSM_onehot_rFSM_Current[3]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57550000"
    )
        port map (
      I0 => rCnt_Current(11),
      I1 => rCnt_Current(9),
      I2 => \FSM_onehot_rFSM_Current[3]_i_6_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      O => \FSM_onehot_rFSM_Current[3]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rCnt_Current(11),
      I1 => rCnt_Current(6),
      I2 => rCnt_Current(5),
      O => \FSM_onehot_rFSM_Current[3]_i_4_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => rCnt_Current(10),
      I1 => rCnt_Current(8),
      I2 => rCnt_Current(7),
      I3 => rCnt_Current(2),
      I4 => rCnt_Current(3),
      I5 => rCnt_Current(4),
      O => \FSM_onehot_rFSM_Current[3]_i_5_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rCnt_Current(7),
      I1 => rCnt_Current(8),
      I2 => rCnt_Current(10),
      O => \FSM_onehot_rFSM_Current[3]_i_6_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => in6,
      O => \FSM_onehot_rFSM_Current[4]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      I1 => rCnt_Current(10),
      I2 => rCnt_Current(8),
      I3 => rCnt_Current(7),
      I4 => rCnt_Current(9),
      I5 => rCnt_Current(11),
      O => in6
    );
\FSM_onehot_rFSM_Current[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rCnt_Current(6),
      I1 => rCnt_Current(5),
      I2 => rCnt_Current(4),
      I3 => rCnt_Current(3),
      O => \FSM_onehot_rFSM_Current[4]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[0]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[1]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[2]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[3]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[4]_i_1_n_0\,
      Q => wRxDone,
      R => iRst
    );
\FSM_sequential_rFSM[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \FSM_sequential_rFSM[1]_i_3_n_0\,
      I1 => \rCntRx_reg[7]\(2),
      I2 => \rCntRx_reg[7]\(3),
      I3 => \rCntRx_reg[7]\(4),
      O => \^rfsm14_out\
    );
\FSM_sequential_rFSM[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \rCntRx_reg[7]\(5),
      I1 => \rCntRx_reg[7]\(6),
      I2 => wRxDone,
      I3 => \rCntRx_reg[7]\(7),
      I4 => \rCntRx_reg[7]\(0),
      I5 => \rCntRx_reg[7]\(1),
      O => \FSM_sequential_rFSM[1]_i_3_n_0\
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => wBit_Next,
      I2 => rBit_Current(0),
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => rBit_Current(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => wBit_Next,
      I3 => rBit_Current(1),
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70FF8000"
    )
        port map (
      I0 => rBit_Current(0),
      I1 => rBit_Current(1),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => wBit_Next,
      I4 => rBit_Current(2),
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF02"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current[3]_i_5_n_0\,
      I2 => \rBit_Current[2]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I4 => wRxDone,
      I5 => \rBit_Current[2]_i_4_n_0\,
      O => wBit_Next
    );
\rBit_Current[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => rCnt_Current(0),
      I1 => rCnt_Current(1),
      I2 => rCnt_Current(9),
      I3 => rCnt_Current(5),
      I4 => rCnt_Current(6),
      I5 => rCnt_Current(11),
      O => \rBit_Current[2]_i_3_n_0\
    );
\rBit_Current[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rBit_Current[2]_i_4_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[0]_i_1_n_0\,
      Q => rBit_Current(0),
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[1]_i_1_n_0\,
      Q => rBit_Current(1),
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[2]_i_1_n_0\,
      Q => rBit_Current(2),
      R => iRst
    );
\rCntRx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F504"
    )
        port map (
      I0 => \rCntRx_reg[7]\(0),
      I1 => Q(0),
      I2 => \^rfsm14_out\,
      I3 => Q(1),
      O => D(0)
    );
\rCntRx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0F4F4A0"
    )
        port map (
      I0 => \^rfsm14_out\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \rCntRx_reg[7]\(1),
      I4 => \rCntRx_reg[7]\(0),
      O => D(1)
    );
\rCntRx[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A0A0F4"
    )
        port map (
      I0 => \^rfsm14_out\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \rCntRx_reg[2]\,
      I4 => \rCntRx_reg[7]\(2),
      O => D(2)
    );
\rCntRx[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0F4F4A0"
    )
        port map (
      I0 => \^rfsm14_out\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \rCntRx_reg[7]\(3),
      I4 => \rCntRx_reg[3]\,
      O => D(3)
    );
\rCntRx[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4A0A0F4"
    )
        port map (
      I0 => \^rfsm14_out\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \rCntRx_reg[4]\,
      I4 => \rCntRx_reg[7]\(4),
      O => D(4)
    );
\rCntRx[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF990090"
    )
        port map (
      I0 => \rCntRx_reg[5]\,
      I1 => \rCntRx_reg[7]\(5),
      I2 => Q(0),
      I3 => \^rfsm14_out\,
      I4 => Q(1),
      O => D(5)
    );
\rCntRx[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11102220"
    )
        port map (
      I0 => \rCntRx_reg[6]\,
      I1 => \^rfsm14_out\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \rCntRx_reg[7]\(6),
      O => D(6)
    );
\rCntRx[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000E00EF"
    )
        port map (
      I0 => wRxDone,
      I1 => \^rfsm14_out\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      O => E(0)
    );
\rCntRx[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22201110"
    )
        port map (
      I0 => \rCntRx_reg[7]_0\,
      I1 => \^rfsm14_out\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \rCntRx_reg[7]\(7),
      O => D(7)
    );
\rCnt_Current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55505450"
    )
        port map (
      I0 => rCnt_Current(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current[9]_i_2__0_n_0\,
      O => \rCnt_Current[0]_i_1_n_0\
    );
\rCnt_Current[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCF8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__1_n_6\,
      O => \rCnt_Current[10]_i_1_n_0\
    );
\rCnt_Current[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCF8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__1_n_5\,
      O => \rCnt_Current[11]_i_1_n_0\
    );
\rCnt_Current[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA0A8A0"
    )
        port map (
      I0 => wCnt_Next0_carry_n_7,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current[9]_i_2__0_n_0\,
      O => \rCnt_Current[1]_i_1_n_0\
    );
\rCnt_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA0A8A0"
    )
        port map (
      I0 => wCnt_Next0_carry_n_6,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current[9]_i_2__0_n_0\,
      O => \rCnt_Current[2]_i_1_n_0\
    );
\rCnt_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA0A8A0"
    )
        port map (
      I0 => wCnt_Next0_carry_n_5,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current[9]_i_2__0_n_0\,
      O => \rCnt_Current[3]_i_1_n_0\
    );
\rCnt_Current[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA0A8A0"
    )
        port map (
      I0 => wCnt_Next0_carry_n_4,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current[9]_i_2__0_n_0\,
      O => \rCnt_Current[4]_i_1_n_0\
    );
\rCnt_Current[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCF8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__0_n_7\,
      O => \rCnt_Current[5]_i_1_n_0\
    );
\rCnt_Current[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCF8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__0_n_6\,
      O => \rCnt_Current[6]_i_1_n_0\
    );
\rCnt_Current[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCF8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__0_n_5\,
      O => \rCnt_Current[7]_i_1_n_0\
    );
\rCnt_Current[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCF8F8F800000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__0_n_4\,
      O => \rCnt_Current[8]_i_1_n_0\
    );
\rCnt_Current[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA0A8A0"
    )
        port map (
      I0 => \wCnt_Next0_carry__1_n_7\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current[9]_i_2__0_n_0\,
      O => \rCnt_Current[9]_i_1_n_0\
    );
\rCnt_Current[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current[3]_i_5_n_0\,
      I2 => rCnt_Current(0),
      I3 => rCnt_Current(1),
      I4 => rCnt_Current(9),
      I5 => \FSM_onehot_rFSM_Current[3]_i_4_n_0\,
      O => \rCnt_Current[9]_i_2__0_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1_n_0\,
      Q => rCnt_Current(0),
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1_n_0\,
      Q => rCnt_Current(10),
      R => iRst
    );
\rCnt_Current_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[11]_i_1_n_0\,
      Q => rCnt_Current(11),
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1_n_0\,
      Q => rCnt_Current(1),
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1_n_0\,
      Q => rCnt_Current(2),
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1_n_0\,
      Q => rCnt_Current(3),
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1_n_0\,
      Q => rCnt_Current(4),
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1_n_0\,
      Q => rCnt_Current(5),
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1_n_0\,
      Q => rCnt_Current(6),
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1_n_0\,
      Q => rCnt_Current(7),
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[8]_i_1_n_0\,
      Q => rCnt_Current(8),
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[9]_i_1_n_0\,
      Q => rCnt_Current(9),
      R => iRst
    );
rRx1_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => iRx,
      Q => rRx1,
      R => '0'
    );
rRx2_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRx1,
      Q => data0(7),
      R => '0'
    );
wCnt_Next0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wCnt_Next0_carry_n_0,
      CO(2) => wCnt_Next0_carry_n_1,
      CO(1) => wCnt_Next0_carry_n_2,
      CO(0) => wCnt_Next0_carry_n_3,
      CYINIT => rCnt_Current(0),
      DI(3 downto 0) => B"0000",
      O(3) => wCnt_Next0_carry_n_4,
      O(2) => wCnt_Next0_carry_n_5,
      O(1) => wCnt_Next0_carry_n_6,
      O(0) => wCnt_Next0_carry_n_7,
      S(3 downto 0) => rCnt_Current(4 downto 1)
    );
\wCnt_Next0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wCnt_Next0_carry_n_0,
      CO(3) => \wCnt_Next0_carry__0_n_0\,
      CO(2) => \wCnt_Next0_carry__0_n_1\,
      CO(1) => \wCnt_Next0_carry__0_n_2\,
      CO(0) => \wCnt_Next0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wCnt_Next0_carry__0_n_4\,
      O(2) => \wCnt_Next0_carry__0_n_5\,
      O(1) => \wCnt_Next0_carry__0_n_6\,
      O(0) => \wCnt_Next0_carry__0_n_7\,
      S(3 downto 0) => rCnt_Current(8 downto 5)
    );
\wCnt_Next0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wCnt_Next0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_wCnt_Next0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \wCnt_Next0_carry__1_n_2\,
      CO(0) => \wCnt_Next0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_wCnt_Next0_carry__1_O_UNCONNECTED\(3),
      O(2) => \wCnt_Next0_carry__1_n_5\,
      O(1) => \wCnt_Next0_carry__1_n_6\,
      O(0) => \wCnt_Next0_carry__1_n_7\,
      S(3) => '0',
      S(2 downto 0) => rCnt_Current(11 downto 9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_tx is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rCnt_reg[6]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    oTx : out STD_LOGIC;
    \FSM_onehot_rFSM_Current_reg[4]_0\ : out STD_LOGIC;
    rTxStart_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rFSM14_out : in STD_LOGIC;
    \rCnt_reg[3]\ : in STD_LOGIC;
    \rCnt_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \rCnt_reg[0]\ : in STD_LOGIC;
    \rCnt_reg[7]_0\ : in STD_LOGIC;
    \rCnt_reg[5]\ : in STD_LOGIC;
    \rCnt_reg[4]\ : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_tx : entity is "uart_tx";
end design_1_uart_top_0_0_uart_tx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_tx is
  signal \FSM_onehot_rFSM_Current[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rBit_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBit_Current[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_5_n_0\ : STD_LOGIC;
  signal \rCnt_Current[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[10]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[4]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[5]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[6]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[7]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[8]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[9]\ : STD_LOGIC;
  signal \rFSM1__7\ : STD_LOGIC;
  signal \rTxData_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[6]_i_2_n_0\ : STD_LOGIC;
  signal \rTxData_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal wBit_Next : STD_LOGIC;
  signal wTxData_Next : STD_LOGIC;
  signal wTxDone : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[0]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[1]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_3__0\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of oTx_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_3__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_4__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rCnt[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rCnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rCnt[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rCnt[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rCnt[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rCnt[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rCnt_Current[1]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rCnt_Current[5]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rCnt_Current[6]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rTxData_Current[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rTxData_Current[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rTxData_Current[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rTxData_Current[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rTxData_Current[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rTxData_Current[6]_i_2\ : label is "soft_lutpair13";
begin
\FSM_onehot_rFSM_Current[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      O => \FSM_onehot_rFSM_Current[0]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM_Current[1]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F0000FF00"
    )
        port map (
      I0 => rBit_Current(2),
      I1 => rBit_Current(1),
      I2 => rBit_Current(0),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM_Current[2]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => rBit_Current(2),
      I4 => rBit_Current(1),
      I5 => rBit_Current(0),
      O => \FSM_onehot_rFSM_Current[3]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_3__0_n_0\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      I5 => \rCnt_Current_reg_n_0_[10]\,
      O => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[4]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[5]\,
      O => \FSM_onehot_rFSM_Current[4]_i_3__0_n_0\
    );
\FSM_onehot_rFSM_Current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[0]_i_1__0_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[1]_i_1__0_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[2]_i_1__0_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[3]_i_1__0_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[4]_i_1__0_n_0\,
      Q => wTxDone,
      R => iRst
    );
\FSM_sequential_rFSM[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05CF05C000CF0FCF"
    )
        port map (
      I0 => \rFSM1__7\,
      I1 => wTxDone,
      I2 => Q(2),
      I3 => Q(0),
      I4 => rFSM14_out,
      I5 => Q(1),
      O => D(0)
    );
\FSM_sequential_rFSM[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54540054"
    )
        port map (
      I0 => \rCnt_reg[7]\(7),
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => \rCnt_reg[7]\(6),
      I4 => \rCnt_reg[0]\,
      O => \rFSM1__7\
    );
\FSM_sequential_rFSM[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0F0AC0"
    )
        port map (
      I0 => wTxDone,
      I1 => rFSM14_out,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      O => D(1)
    );
\FSM_sequential_rFSM[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0838"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => wTxDone,
      O => D(2)
    );
oTx_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \rTxData_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => oTx
    );
\rBit_Current[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => wBit_Next,
      I2 => rBit_Current(0),
      O => \rBit_Current[0]_i_1__0_n_0\
    );
\rBit_Current[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F80"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(0),
      I2 => wBit_Next,
      I3 => rBit_Current(1),
      O => \rBit_Current[1]_i_1__0_n_0\
    );
\rBit_Current[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(1),
      I2 => rBit_Current(0),
      I3 => wBit_Next,
      I4 => rBit_Current(2),
      O => \rBit_Current[2]_i_1__0_n_0\
    );
\rBit_Current[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFAAAAAAAAAAAA"
    )
        port map (
      I0 => \rBit_Current[2]_i_3__0_n_0\,
      I1 => \rBit_Current[2]_i_4__0_n_0\,
      I2 => \rCnt_Current_reg_n_0_[5]\,
      I3 => \rBit_Current[2]_i_5_n_0\,
      I4 => \rCnt_Current_reg_n_0_[10]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => wBit_Next
    );
\rBit_Current[2]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wTxDone,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rBit_Current[2]_i_3__0_n_0\
    );
\rBit_Current[2]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[3]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      O => \rBit_Current[2]_i_4__0_n_0\
    );
\rBit_Current[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      O => \rBit_Current[2]_i_5_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[0]_i_1__0_n_0\,
      Q => rBit_Current(0),
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[1]_i_1__0_n_0\,
      Q => rBit_Current(1),
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[2]_i_1__0_n_0\,
      Q => rBit_Current(2),
      R => iRst
    );
\rCnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \rFSM1__7\,
      I1 => Q(1),
      I2 => \rCnt_reg[7]\(0),
      O => \rCnt_reg[6]\(0)
    );
\rCnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => Q(1),
      I1 => \rFSM1__7\,
      I2 => \rCnt_reg[7]\(0),
      I3 => \rCnt_reg[7]\(1),
      O => \rCnt_reg[6]\(1)
    );
\rCnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888000"
    )
        port map (
      I0 => Q(1),
      I1 => \rFSM1__7\,
      I2 => \rCnt_reg[7]\(1),
      I3 => \rCnt_reg[7]\(0),
      I4 => \rCnt_reg[7]\(2),
      O => \rCnt_reg[6]\(2)
    );
\rCnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888888880000000"
    )
        port map (
      I0 => \rCnt_reg[3]\,
      I1 => \rFSM1__7\,
      I2 => \rCnt_reg[7]\(0),
      I3 => \rCnt_reg[7]\(1),
      I4 => \rCnt_reg[7]\(2),
      I5 => \rCnt_reg[7]\(3),
      O => \rCnt_reg[6]\(3)
    );
\rCnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8040"
    )
        port map (
      I0 => \rCnt_reg[4]\,
      I1 => \rFSM1__7\,
      I2 => Q(1),
      I3 => \rCnt_reg[7]\(4),
      O => \rCnt_reg[6]\(4)
    );
\rCnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4080"
    )
        port map (
      I0 => \rCnt_reg[5]\,
      I1 => \rFSM1__7\,
      I2 => Q(1),
      I3 => \rCnt_reg[7]\(5),
      O => \rCnt_reg[6]\(5)
    );
\rCnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8040"
    )
        port map (
      I0 => \rCnt_reg[7]_0\,
      I1 => \rFSM1__7\,
      I2 => Q(1),
      I3 => \rCnt_reg[7]\(6),
      O => \rCnt_reg[6]\(6)
    );
\rCnt[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0004000"
    )
        port map (
      I0 => \rCnt_reg[7]_0\,
      I1 => \rCnt_reg[7]\(6),
      I2 => \rFSM1__7\,
      I3 => Q(1),
      I4 => \rCnt_reg[7]\(7),
      O => \rCnt_reg[6]\(7)
    );
\rCnt_Current[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[0]_i_1__0_n_0\
    );
\rCnt_Current[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[8]\,
      I1 => \rCnt_Current[10]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[7]\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      I5 => \rCnt_Current_reg_n_0_[10]\,
      O => \rCnt_Current[10]_i_1__0_n_0\
    );
\rCnt_Current[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[6]\,
      I1 => \rCnt_Current_reg_n_0_[5]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      I5 => \rCnt_Current[5]_i_2_n_0\,
      O => \rCnt_Current[10]_i_2_n_0\
    );
\rCnt_Current[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFE00FE00FE00FE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[10]\,
      I4 => \rBit_Current[2]_i_5_n_0\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_3__0_n_0\,
      O => \rCnt_Current[10]_i_3_n_0\
    );
\rCnt_Current[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      O => \rCnt_Current[1]_i_1__0_n_0\
    );
\rCnt_Current[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      O => \rCnt_Current[2]_i_1__0_n_0\
    );
\rCnt_Current[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[0]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[3]_i_1__0_n_0\
    );
\rCnt_Current[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \rCnt_Current[4]_i_1__0_n_0\
    );
\rCnt_Current[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA20000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current[5]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[4]\,
      I5 => \rCnt_Current_reg_n_0_[5]\,
      O => \rCnt_Current[5]_i_1__0_n_0\
    );
\rCnt_Current[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[1]\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[5]_i_2_n_0\
    );
\rCnt_Current[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current[9]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      O => \rCnt_Current[6]_i_1__0_n_0\
    );
\rCnt_Current[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D020"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[6]\,
      I1 => \rCnt_Current[9]_i_2_n_0\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[7]_i_1__0_n_0\
    );
\rCnt_Current[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \rCnt_Current[9]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[7]\,
      I3 => \rCnt_Current[10]_i_3_n_0\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[8]_i_1__0_n_0\
    );
\rCnt_Current[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[9]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      I5 => \rCnt_Current_reg_n_0_[9]\,
      O => \rCnt_Current[9]_i_1__0_n_0\
    );
\rCnt_Current[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[1]\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[4]\,
      I5 => \rCnt_Current_reg_n_0_[5]\,
      O => \rCnt_Current[9]_i_2_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[10]\,
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[4]\,
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[5]\,
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[6]\,
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[7]\,
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[8]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[8]\,
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[9]_i_1__0_n_0\,
      Q => \rCnt_Current_reg_n_0_[9]\,
      R => iRst
    );
\rTxData_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => in7(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[0]_i_1_n_0\
    );
\rTxData_Current[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => in7(1),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[1]_i_1_n_0\
    );
\rTxData_Current[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => in7(2),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[2]_i_1_n_0\
    );
\rTxData_Current[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => in7(3),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[3]_i_1_n_0\
    );
\rTxData_Current[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => in7(4),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[4]_i_1_n_0\
    );
\rTxData_Current[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => in7(5),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[5]_i_1_n_0\
    );
\rTxData_Current[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I1 => \rTxData_Current[6]_i_2_n_0\,
      I2 => rTxStart_reg,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => wTxData_Next
    );
\rTxData_Current[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(2),
      I2 => rBit_Current(1),
      I3 => rBit_Current(0),
      O => \rTxData_Current[6]_i_2_n_0\
    );
\rTxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[0]_i_1_n_0\,
      Q => \rTxData_Current_reg_n_0_[0]\,
      R => iRst
    );
\rTxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[1]_i_1_n_0\,
      Q => in7(0),
      R => iRst
    );
\rTxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[2]_i_1_n_0\,
      Q => in7(1),
      R => iRst
    );
\rTxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[3]_i_1_n_0\,
      Q => in7(2),
      R => iRst
    );
\rTxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[4]_i_1_n_0\,
      Q => in7(3),
      R => iRst
    );
\rTxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[5]_i_1_n_0\,
      Q => in7(4),
      R => iRst
    );
\rTxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      Q => in7(5),
      R => iRst
    );
rTxStart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFFCF000A00000"
    )
        port map (
      I0 => \rFSM1__7\,
      I1 => wTxDone,
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      I5 => rTxStart_reg,
      O => \FSM_onehot_rFSM_Current_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_top is
  port (
    oTx : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iRx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_top : entity is "uart_top";
end design_1_uart_top_0_0_uart_top;

architecture STRUCTURE of design_1_uart_top_0_0_uart_top is
  signal \FSM_sequential_rFSM[0]_i_3_n_0\ : STD_LOGIC;
  signal UART_RX_INST_n_0 : STD_LOGIC;
  signal UART_TX_INST_n_12 : STD_LOGIC;
  signal rCnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rCntRx : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rCntRx[2]_i_2_n_0\ : STD_LOGIC;
  signal \rCntRx[3]_i_2_n_0\ : STD_LOGIC;
  signal \rCntRx[4]_i_2_n_0\ : STD_LOGIC;
  signal \rCntRx[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCntRx[6]_i_2_n_0\ : STD_LOGIC;
  signal \rCntRx[7]_i_3_n_0\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[4]\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[5]\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[6]\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[7]\ : STD_LOGIC;
  signal \rCnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[7]\ : STD_LOGIC;
  signal rFSM : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rFSM14_out : STD_LOGIC;
  signal \rFSM__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rTxStart_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[0]\ : label is "s_IDLE:000,s_START_ADD:011,s_WAIT_RX_OP1:001,s_WAIT_RX_OP2:010,s_WAIT_ADD:100,s_DONE:101,s_WAIT_TX:100,s_TX:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[1]\ : label is "s_IDLE:000,s_START_ADD:011,s_WAIT_RX_OP1:001,s_WAIT_RX_OP2:010,s_WAIT_ADD:100,s_DONE:101,s_WAIT_TX:100,s_TX:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[2]\ : label is "s_IDLE:000,s_START_ADD:011,s_WAIT_RX_OP1:001,s_WAIT_RX_OP2:010,s_WAIT_ADD:100,s_DONE:101,s_WAIT_TX:100,s_TX:011";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rCntRx[2]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rCntRx[3]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rCntRx[4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rCntRx[5]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rCnt[4]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rCnt[5]_i_2\ : label is "soft_lutpair22";
begin
\FSM_sequential_rFSM[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rCnt_reg_n_0_[2]\,
      I1 => \rCnt_reg_n_0_[3]\,
      I2 => \rCnt_reg_n_0_[0]\,
      I3 => \rCnt_reg_n_0_[1]\,
      I4 => \rCnt_reg_n_0_[5]\,
      I5 => \rCnt_reg_n_0_[4]\,
      O => \FSM_sequential_rFSM[0]_i_3_n_0\
    );
\FSM_sequential_rFSM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rFSM__0\(0),
      Q => rFSM(0),
      R => iRst
    );
\FSM_sequential_rFSM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rFSM__0\(1),
      Q => rFSM(1),
      R => iRst
    );
\FSM_sequential_rFSM_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rFSM__0\(2),
      Q => rFSM(2),
      R => iRst
    );
UART_RX_INST: entity work.design_1_uart_top_0_0_uart_rx
     port map (
      D(7 downto 0) => rCntRx(7 downto 0),
      E(0) => UART_RX_INST_n_0,
      Q(2 downto 0) => rFSM(2 downto 0),
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      \rCntRx_reg[2]\ => \rCntRx[2]_i_2_n_0\,
      \rCntRx_reg[3]\ => \rCntRx[3]_i_2_n_0\,
      \rCntRx_reg[4]\ => \rCntRx[4]_i_2_n_0\,
      \rCntRx_reg[5]\ => \rCntRx[5]_i_2_n_0\,
      \rCntRx_reg[6]\ => \rCntRx[6]_i_2_n_0\,
      \rCntRx_reg[7]\(7) => \rCntRx_reg_n_0_[7]\,
      \rCntRx_reg[7]\(6) => \rCntRx_reg_n_0_[6]\,
      \rCntRx_reg[7]\(5) => \rCntRx_reg_n_0_[5]\,
      \rCntRx_reg[7]\(4) => \rCntRx_reg_n_0_[4]\,
      \rCntRx_reg[7]\(3) => \rCntRx_reg_n_0_[3]\,
      \rCntRx_reg[7]\(2) => \rCntRx_reg_n_0_[2]\,
      \rCntRx_reg[7]\(1) => \rCntRx_reg_n_0_[1]\,
      \rCntRx_reg[7]\(0) => \rCntRx_reg_n_0_[0]\,
      \rCntRx_reg[7]_0\ => \rCntRx[7]_i_3_n_0\,
      rFSM14_out => rFSM14_out
    );
UART_TX_INST: entity work.design_1_uart_top_0_0_uart_tx
     port map (
      D(2 downto 0) => \rFSM__0\(2 downto 0),
      \FSM_onehot_rFSM_Current_reg[4]_0\ => UART_TX_INST_n_12,
      Q(2 downto 0) => rFSM(2 downto 0),
      iClk => iClk,
      iRst => iRst,
      oTx => oTx,
      \rCnt_reg[0]\ => \FSM_sequential_rFSM[0]_i_3_n_0\,
      \rCnt_reg[3]\ => \rCnt[3]_i_2_n_0\,
      \rCnt_reg[4]\ => \rCnt[4]_i_2_n_0\,
      \rCnt_reg[5]\ => \rCnt[5]_i_2_n_0\,
      \rCnt_reg[6]\(7 downto 0) => rCnt(7 downto 0),
      \rCnt_reg[7]\(7) => \rCnt_reg_n_0_[7]\,
      \rCnt_reg[7]\(6) => \rCnt_reg_n_0_[6]\,
      \rCnt_reg[7]\(5) => \rCnt_reg_n_0_[5]\,
      \rCnt_reg[7]\(4) => \rCnt_reg_n_0_[4]\,
      \rCnt_reg[7]\(3) => \rCnt_reg_n_0_[3]\,
      \rCnt_reg[7]\(2) => \rCnt_reg_n_0_[2]\,
      \rCnt_reg[7]\(1) => \rCnt_reg_n_0_[1]\,
      \rCnt_reg[7]\(0) => \rCnt_reg_n_0_[0]\,
      \rCnt_reg[7]_0\ => \rCnt[7]_i_3_n_0\,
      rFSM14_out => rFSM14_out,
      rTxStart_reg => rTxStart_reg_n_0
    );
\rCntRx[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rCntRx_reg_n_0_[1]\,
      I1 => \rCntRx_reg_n_0_[0]\,
      O => \rCntRx[2]_i_2_n_0\
    );
\rCntRx[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \rCntRx_reg_n_0_[2]\,
      I1 => \rCntRx_reg_n_0_[0]\,
      I2 => \rCntRx_reg_n_0_[1]\,
      O => \rCntRx[3]_i_2_n_0\
    );
\rCntRx[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCntRx_reg_n_0_[1]\,
      I1 => \rCntRx_reg_n_0_[0]\,
      I2 => \rCntRx_reg_n_0_[2]\,
      I3 => \rCntRx_reg_n_0_[3]\,
      O => \rCntRx[4]_i_2_n_0\
    );
\rCntRx[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \rCntRx_reg_n_0_[3]\,
      I1 => \rCntRx_reg_n_0_[2]\,
      I2 => \rCntRx_reg_n_0_[0]\,
      I3 => \rCntRx_reg_n_0_[1]\,
      I4 => \rCntRx_reg_n_0_[4]\,
      O => \rCntRx[5]_i_2_n_0\
    );
\rCntRx[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rCntRx_reg_n_0_[5]\,
      I1 => \rCntRx_reg_n_0_[4]\,
      I2 => \rCntRx_reg_n_0_[1]\,
      I3 => \rCntRx_reg_n_0_[0]\,
      I4 => \rCntRx_reg_n_0_[2]\,
      I5 => \rCntRx_reg_n_0_[3]\,
      O => \rCntRx[6]_i_2_n_0\
    );
\rCntRx[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rCntRx_reg_n_0_[3]\,
      I1 => \rCntRx_reg_n_0_[2]\,
      I2 => \rCntRx[2]_i_2_n_0\,
      I3 => \rCntRx_reg_n_0_[4]\,
      I4 => \rCntRx_reg_n_0_[5]\,
      I5 => \rCntRx_reg_n_0_[6]\,
      O => \rCntRx[7]_i_3_n_0\
    );
\rCntRx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_0,
      D => rCntRx(0),
      Q => \rCntRx_reg_n_0_[0]\,
      R => iRst
    );
\rCntRx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_0,
      D => rCntRx(1),
      Q => \rCntRx_reg_n_0_[1]\,
      R => iRst
    );
\rCntRx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_0,
      D => rCntRx(2),
      Q => \rCntRx_reg_n_0_[2]\,
      R => iRst
    );
\rCntRx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_0,
      D => rCntRx(3),
      Q => \rCntRx_reg_n_0_[3]\,
      R => iRst
    );
\rCntRx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_0,
      D => rCntRx(4),
      Q => \rCntRx_reg_n_0_[4]\,
      R => iRst
    );
\rCntRx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_0,
      D => rCntRx(5),
      Q => \rCntRx_reg_n_0_[5]\,
      R => iRst
    );
\rCntRx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_0,
      D => rCntRx(6),
      Q => \rCntRx_reg_n_0_[6]\,
      R => iRst
    );
\rCntRx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_0,
      D => rCntRx(7),
      Q => \rCntRx_reg_n_0_[7]\,
      R => iRst
    );
\rCnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rFSM(1),
      I1 => rFSM(2),
      O => \rCnt[3]_i_2_n_0\
    );
\rCnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_reg_n_0_[0]\,
      I1 => \rCnt_reg_n_0_[1]\,
      I2 => \rCnt_reg_n_0_[2]\,
      I3 => \rCnt_reg_n_0_[3]\,
      O => \rCnt[4]_i_2_n_0\
    );
\rCnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \rCnt_reg_n_0_[4]\,
      I1 => \rCnt_reg_n_0_[3]\,
      I2 => \rCnt_reg_n_0_[2]\,
      I3 => \rCnt_reg_n_0_[1]\,
      I4 => \rCnt_reg_n_0_[0]\,
      O => \rCnt[5]_i_2_n_0\
    );
\rCnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => rFSM(0),
      I1 => rFSM(2),
      I2 => rFSM(1),
      O => \rCnt[7]_i_1_n_0\
    );
\rCnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rCnt_reg_n_0_[0]\,
      I1 => \rCnt_reg_n_0_[1]\,
      I2 => \rCnt_reg_n_0_[2]\,
      I3 => \rCnt_reg_n_0_[3]\,
      I4 => \rCnt_reg_n_0_[4]\,
      I5 => \rCnt_reg_n_0_[5]\,
      O => \rCnt[7]_i_3_n_0\
    );
\rCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCnt[7]_i_1_n_0\,
      D => rCnt(0),
      Q => \rCnt_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCnt[7]_i_1_n_0\,
      D => rCnt(1),
      Q => \rCnt_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCnt[7]_i_1_n_0\,
      D => rCnt(2),
      Q => \rCnt_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCnt[7]_i_1_n_0\,
      D => rCnt(3),
      Q => \rCnt_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCnt[7]_i_1_n_0\,
      D => rCnt(4),
      Q => \rCnt_reg_n_0_[4]\,
      R => iRst
    );
\rCnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCnt[7]_i_1_n_0\,
      D => rCnt(5),
      Q => \rCnt_reg_n_0_[5]\,
      R => iRst
    );
\rCnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCnt[7]_i_1_n_0\,
      D => rCnt(6),
      Q => \rCnt_reg_n_0_[6]\,
      R => iRst
    );
\rCnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rCnt[7]_i_1_n_0\,
      D => rCnt(7),
      Q => \rCnt_reg_n_0_[7]\,
      R => iRst
    );
rTxStart_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_12,
      Q => rTxStart_reg_n_0,
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    oTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart_top_0_0 : entity is "design_1_uart_top_0_0,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_uart_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_uart_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_uart_top_0_0 : entity is "uart_top,Vivado 2020.1";
end design_1_uart_top_0_0;

architecture STRUCTURE of design_1_uart_top_0_0 is
begin
inst: entity work.design_1_uart_top_0_0_uart_top
     port map (
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      oTx => oTx
    );
end STRUCTURE;
