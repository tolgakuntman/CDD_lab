-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Mar 13 12:05:13 2025
-- Host        : Gok2s_Victus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_top_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_rFSM_Current_reg[4]_0\ : out STD_LOGIC;
    \FSM_sequential_rFSM_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rBuffer : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iRx : in STD_LOGIC;
    iClk : in STD_LOGIC;
    \FSM_sequential_rFSM_reg[1]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_rFSM_reg[1]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iRst : in STD_LOGIC;
    \FSM_sequential_rFSM_reg[1]_2\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  signal \FSM_onehot_rFSM_Current[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rfsm_current_reg[4]_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rBit_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_2_n_0\ : STD_LOGIC;
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
  signal \rCnt_Current[9]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_3_n_0\ : STD_LOGIC;
  signal rRx1 : STD_LOGIC;
  signal rRxByteOut : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rRxByteOut[7]_i_1_n_0\ : STD_LOGIC;
  signal \rRxData_Current_reg_n_0_[0]\ : STD_LOGIC;
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
  signal wRxData_Next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wRxData_Next_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \wRxData_Next_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \wRxData_Next_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \wRxData_Next_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \wRxData_Next_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wRxData_Next_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \wRxData_Next_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \wRxData_Next_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \wRxData_Next_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \wRxData_Next_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \wRxData_Next_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \NLW_wCnt_Next0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wCnt_Next0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[2]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[2]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_3\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sRX_START:00010,sRX_DATA:00100,sDONE:10000,sRX_STOP:01000";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rBuffer[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rBuffer[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rBuffer[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rBuffer[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rBuffer[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rCntRx[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rCntRx[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rCntRx[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rCnt_Current[9]_i_3\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of wCnt_Next0_carry : label is 35;
  attribute ADDER_THRESHOLD of \wCnt_Next0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wCnt_Next0_carry__1\ : label is 35;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \wRxData_Next_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wRxData_Next_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wRxData_Next_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wRxData_Next_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wRxData_Next_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wRxData_Next_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wRxData_Next_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wRxData_Next_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \wRxData_Next_reg[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wRxData_Next_reg[7]_i_3\ : label is "soft_lutpair1";
begin
  \FSM_onehot_rFSM_Current_reg[4]_0\ <= \^fsm_onehot_rfsm_current_reg[4]_0\;
  Q(0) <= \^q\(0);
\FSM_onehot_rFSM_Current[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => data0(7),
      O => \FSM_onehot_rFSM_Current[0]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => data0(7),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM_Current[1]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFF4F4F"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[2]_i_4_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM_Current[2]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000455555555"
    )
        port map (
      I0 => rCnt_Current(11),
      I1 => \FSM_onehot_rFSM_Current[2]_i_5_n_0\,
      I2 => rCnt_Current(6),
      I3 => rCnt_Current(9),
      I4 => \FSM_onehot_rFSM_Current[2]_i_6_n_0\,
      I5 => rCnt_Current(10),
      O => \FSM_onehot_rFSM_Current[2]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I1 => rCnt_Current(6),
      I2 => rCnt_Current(5),
      I3 => rCnt_Current(11),
      I4 => \FSM_onehot_rFSM_Current[3]_i_4_n_0\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM_Current[2]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rBit_Current(2),
      I1 => rBit_Current(0),
      I2 => rBit_Current(1),
      O => \FSM_onehot_rFSM_Current[2]_i_4_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rCnt_Current(2),
      I1 => rCnt_Current(3),
      I2 => rCnt_Current(5),
      I3 => rCnt_Current(4),
      O => \FSM_onehot_rFSM_Current[2]_i_5_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rCnt_Current(8),
      I1 => rCnt_Current(7),
      O => \FSM_onehot_rFSM_Current[2]_i_6_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444444444444444"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => rBit_Current(2),
      I3 => rBit_Current(0),
      I4 => rBit_Current(1),
      I5 => \FSM_onehot_rFSM_Current[3]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I1 => rCnt_Current(6),
      I2 => rCnt_Current(5),
      I3 => rCnt_Current(11),
      I4 => \FSM_onehot_rFSM_Current[3]_i_4_n_0\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM_Current[3]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rCnt_Current(10),
      I1 => rCnt_Current(7),
      I2 => rCnt_Current(8),
      O => \FSM_onehot_rFSM_Current[3]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => rCnt_Current(3),
      I1 => rCnt_Current(4),
      I2 => rCnt_Current(0),
      I3 => rCnt_Current(1),
      I4 => rCnt_Current(2),
      I5 => rCnt_Current(9),
      O => \FSM_onehot_rFSM_Current[3]_i_4_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888888888888888"
    )
        port map (
      I0 => rCnt_Current(11),
      I1 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      I2 => rCnt_Current(3),
      I3 => rCnt_Current(4),
      I4 => rCnt_Current(5),
      I5 => rCnt_Current(6),
      O => \FSM_onehot_rFSM_Current[4]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rCnt_Current(9),
      I1 => rCnt_Current(8),
      I2 => rCnt_Current(7),
      I3 => rCnt_Current(10),
      O => \FSM_onehot_rFSM_Current[4]_i_3_n_0\
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
      Q => \^q\(0),
      R => iRst
    );
\FSM_sequential_rFSM[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE00E0"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[4]_0\,
      I1 => \FSM_sequential_rFSM_reg[1]_0\(1),
      I2 => \FSM_sequential_rFSM_reg[1]_0\(0),
      I3 => \FSM_sequential_rFSM_reg[1]_0\(2),
      I4 => \FSM_sequential_rFSM_reg[1]_2\,
      O => \FSM_sequential_rFSM_reg[1]\(0)
    );
\FSM_sequential_rFSM[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_sequential_rFSM_reg[1]_1\(2),
      I2 => \FSM_sequential_rFSM_reg[1]_1\(3),
      I3 => \FSM_sequential_rFSM_reg[1]_1\(0),
      I4 => \FSM_sequential_rFSM_reg[1]_1\(1),
      O => \^fsm_onehot_rfsm_current_reg[4]_0\
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0070AA8A"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \wRxData_Next_reg[7]_i_4_n_0\,
      I2 => \wRxData_Next_reg[7]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => rBit_Current(0),
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44447F4488888088"
    )
        port map (
      I0 => rBit_Current(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \wRxData_Next_reg[7]_i_4_n_0\,
      I3 => \wRxData_Next_reg[7]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => rBit_Current(1),
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888BF8844444044"
    )
        port map (
      I0 => \rBit_Current[2]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \wRxData_Next_reg[7]_i_4_n_0\,
      I3 => \wRxData_Next_reg[7]_i_3_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => rBit_Current(2),
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rBit_Current(1),
      I1 => rBit_Current(0),
      O => \rBit_Current[2]_i_2_n_0\
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
\rBuffer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxByteOut(0),
      I1 => \FSM_sequential_rFSM_reg[1]_0\(1),
      O => rBuffer(0)
    );
\rBuffer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxByteOut(1),
      I1 => \FSM_sequential_rFSM_reg[1]_0\(1),
      O => rBuffer(1)
    );
\rBuffer[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxByteOut(2),
      I1 => \FSM_sequential_rFSM_reg[1]_0\(1),
      O => rBuffer(2)
    );
\rBuffer[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxByteOut(3),
      I1 => \FSM_sequential_rFSM_reg[1]_0\(1),
      O => rBuffer(3)
    );
\rBuffer[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxByteOut(4),
      I1 => \FSM_sequential_rFSM_reg[1]_0\(1),
      O => rBuffer(4)
    );
\rBuffer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxByteOut(6),
      I1 => \FSM_sequential_rFSM_reg[1]_0\(1),
      O => rBuffer(6)
    );
\rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxByteOut(5),
      I1 => \FSM_sequential_rFSM_reg[1]_0\(1),
      O => rBuffer(5)
    );
\rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rRxByteOut(7),
      I1 => \FSM_sequential_rFSM_reg[1]_0\(1),
      O => rBuffer(7)
    );
\rCntRx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \FSM_sequential_rFSM_reg[1]_0\(0),
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\,
      I2 => \FSM_sequential_rFSM_reg[1]_1\(0),
      O => D(0)
    );
\rCntRx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AA8"
    )
        port map (
      I0 => \FSM_sequential_rFSM_reg[1]_0\(0),
      I1 => \^fsm_onehot_rfsm_current_reg[4]_0\,
      I2 => \FSM_sequential_rFSM_reg[1]_1\(1),
      I3 => \FSM_sequential_rFSM_reg[1]_1\(0),
      O => D(1)
    );
\rCntRx[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007800"
    )
        port map (
      I0 => \FSM_sequential_rFSM_reg[1]_1\(0),
      I1 => \FSM_sequential_rFSM_reg[1]_1\(1),
      I2 => \FSM_sequential_rFSM_reg[1]_1\(2),
      I3 => \FSM_sequential_rFSM_reg[1]_0\(0),
      I4 => \^fsm_onehot_rfsm_current_reg[4]_0\,
      O => D(2)
    );
\rCntRx[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => \FSM_sequential_rFSM_reg[1]_0\(1),
      I1 => \FSM_sequential_rFSM_reg[1]_0\(2),
      I2 => \^q\(0),
      I3 => \FSM_sequential_rFSM_reg[1]_0\(0),
      O => E(0)
    );
\rCnt_Current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00F400440044"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => rCnt_Current(0),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I5 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      O => \rCnt_Current[0]_i_1_n_0\
    );
\rCnt_Current[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AA888808AA0808"
    )
        port map (
      I0 => \wCnt_Next0_carry__1_n_6\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rCnt_Current[10]_i_1_n_0\
    );
\rCnt_Current[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AA888808AA0808"
    )
        port map (
      I0 => \wCnt_Next0_carry__1_n_5\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rCnt_Current[11]_i_1_n_0\
    );
\rCnt_Current[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFF00FAEA0000"
    )
        port map (
      I0 => \rCnt_Current[9]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => wCnt_Next0_carry_n_7,
      I5 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \rCnt_Current[1]_i_1_n_0\
    );
\rCnt_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFF00FAEA0000"
    )
        port map (
      I0 => \rCnt_Current[9]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => wCnt_Next0_carry_n_6,
      I5 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \rCnt_Current[2]_i_1_n_0\
    );
\rCnt_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFF00FAEA0000"
    )
        port map (
      I0 => \rCnt_Current[9]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => wCnt_Next0_carry_n_5,
      I5 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \rCnt_Current[3]_i_1_n_0\
    );
\rCnt_Current[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFF00FAEA0000"
    )
        port map (
      I0 => \rCnt_Current[9]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => wCnt_Next0_carry_n_4,
      I5 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \rCnt_Current[4]_i_1_n_0\
    );
\rCnt_Current[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AA888808AA0808"
    )
        port map (
      I0 => \wCnt_Next0_carry__0_n_7\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rCnt_Current[5]_i_1_n_0\
    );
\rCnt_Current[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AA888808AA0808"
    )
        port map (
      I0 => \wCnt_Next0_carry__0_n_6\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rCnt_Current[6]_i_1_n_0\
    );
\rCnt_Current[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AA888808AA0808"
    )
        port map (
      I0 => \wCnt_Next0_carry__0_n_5\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rCnt_Current[7]_i_1_n_0\
    );
\rCnt_Current[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AA888808AA0808"
    )
        port map (
      I0 => \wCnt_Next0_carry__0_n_4\,
      I1 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rCnt_Current[8]_i_1_n_0\
    );
\rCnt_Current[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFF00FAEA0000"
    )
        port map (
      I0 => \rCnt_Current[9]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current[2]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \wCnt_Next0_carry__1_n_7\,
      I5 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \rCnt_Current[9]_i_1_n_0\
    );
\rCnt_Current[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008AAAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \rCnt_Current[9]_i_3_n_0\,
      I2 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      I3 => rCnt_Current(9),
      I4 => rCnt_Current(11),
      O => \rCnt_Current[9]_i_2_n_0\
    );
\rCnt_Current[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rCnt_Current(3),
      I1 => rCnt_Current(4),
      I2 => rCnt_Current(5),
      I3 => rCnt_Current(6),
      O => \rCnt_Current[9]_i_3_n_0\
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
\rRxByteOut[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => iRst,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      O => \rRxByteOut[7]_i_1_n_0\
    );
\rRxByteOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rRxData_Current_reg_n_0_[0]\,
      Q => rRxByteOut(0),
      R => \rRxByteOut[7]_i_1_n_0\
    );
\rRxByteOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => data0(0),
      Q => rRxByteOut(1),
      R => \rRxByteOut[7]_i_1_n_0\
    );
\rRxByteOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => data0(1),
      Q => rRxByteOut(2),
      R => \rRxByteOut[7]_i_1_n_0\
    );
\rRxByteOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => data0(2),
      Q => rRxByteOut(3),
      R => \rRxByteOut[7]_i_1_n_0\
    );
\rRxByteOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => data0(3),
      Q => rRxByteOut(4),
      R => \rRxByteOut[7]_i_1_n_0\
    );
\rRxByteOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => data0(4),
      Q => rRxByteOut(5),
      R => \rRxByteOut[7]_i_1_n_0\
    );
\rRxByteOut_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => data0(5),
      Q => rRxByteOut(6),
      R => \rRxByteOut[7]_i_1_n_0\
    );
\rRxByteOut_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => data0(6),
      Q => rRxByteOut(7),
      R => \rRxByteOut[7]_i_1_n_0\
    );
\rRxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wRxData_Next(0),
      Q => \rRxData_Current_reg_n_0_[0]\,
      R => iRst
    );
\rRxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wRxData_Next(1),
      Q => data0(0),
      R => iRst
    );
\rRxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wRxData_Next(2),
      Q => data0(1),
      R => iRst
    );
\rRxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wRxData_Next(3),
      Q => data0(2),
      R => iRst
    );
\rRxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wRxData_Next(4),
      Q => data0(3),
      R => iRst
    );
\rRxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wRxData_Next(5),
      Q => data0(4),
      R => iRst
    );
\rRxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wRxData_Next(6),
      Q => data0(5),
      R => iRst
    );
\rRxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wRxData_Next(7),
      Q => data0(6),
      R => iRst
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
\wRxData_Next_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wRxData_Next_reg[0]_i_1_n_0\,
      G => \wRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => wRxData_Next(0)
    );
\wRxData_Next_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F444CC44"
    )
        port map (
      I0 => \wRxData_Next_reg[7]_i_3_n_0\,
      I1 => \rRxData_Current_reg_n_0_[0]\,
      I2 => data0(0),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \wRxData_Next_reg[0]_i_1_n_0\
    );
\wRxData_Next_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wRxData_Next_reg[1]_i_1_n_0\,
      G => \wRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => wRxData_Next(1)
    );
\wRxData_Next_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F444CC44"
    )
        port map (
      I0 => \wRxData_Next_reg[7]_i_3_n_0\,
      I1 => data0(0),
      I2 => data0(1),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \wRxData_Next_reg[1]_i_1_n_0\
    );
\wRxData_Next_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wRxData_Next_reg[2]_i_1_n_0\,
      G => \wRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => wRxData_Next(2)
    );
\wRxData_Next_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F444CC44"
    )
        port map (
      I0 => \wRxData_Next_reg[7]_i_3_n_0\,
      I1 => data0(1),
      I2 => data0(2),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \wRxData_Next_reg[2]_i_1_n_0\
    );
\wRxData_Next_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wRxData_Next_reg[3]_i_1_n_0\,
      G => \wRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => wRxData_Next(3)
    );
\wRxData_Next_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F444CC44"
    )
        port map (
      I0 => \wRxData_Next_reg[7]_i_3_n_0\,
      I1 => data0(2),
      I2 => data0(3),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \wRxData_Next_reg[3]_i_1_n_0\
    );
\wRxData_Next_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wRxData_Next_reg[4]_i_1_n_0\,
      G => \wRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => wRxData_Next(4)
    );
\wRxData_Next_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F444CC44"
    )
        port map (
      I0 => \wRxData_Next_reg[7]_i_3_n_0\,
      I1 => data0(3),
      I2 => data0(4),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \wRxData_Next_reg[4]_i_1_n_0\
    );
\wRxData_Next_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wRxData_Next_reg[5]_i_1_n_0\,
      G => \wRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => wRxData_Next(5)
    );
\wRxData_Next_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F444CC44"
    )
        port map (
      I0 => \wRxData_Next_reg[7]_i_3_n_0\,
      I1 => data0(4),
      I2 => data0(5),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \wRxData_Next_reg[5]_i_1_n_0\
    );
\wRxData_Next_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wRxData_Next_reg[6]_i_1_n_0\,
      G => \wRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => wRxData_Next(6)
    );
\wRxData_Next_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F444CC44"
    )
        port map (
      I0 => \wRxData_Next_reg[7]_i_3_n_0\,
      I1 => data0(5),
      I2 => data0(6),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \wRxData_Next_reg[6]_i_1_n_0\
    );
\wRxData_Next_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wRxData_Next_reg[7]_i_1_n_0\,
      G => \wRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => wRxData_Next(7)
    );
\wRxData_Next_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F444C4C4"
    )
        port map (
      I0 => \wRxData_Next_reg[7]_i_3_n_0\,
      I1 => data0(6),
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => data0(7),
      I4 => \wRxData_Next_reg[7]_i_4_n_0\,
      O => \wRxData_Next_reg[7]_i_1_n_0\
    );
\wRxData_Next_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \^q\(0),
      O => \wRxData_Next_reg[7]_i_2_n_0\
    );
\wRxData_Next_reg[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      O => \wRxData_Next_reg[7]_i_3_n_0\
    );
\wRxData_Next_reg[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[3]_i_4_n_0\,
      I1 => rCnt_Current(11),
      I2 => rCnt_Current(5),
      I3 => rCnt_Current(6),
      I4 => \FSM_onehot_rFSM_Current[3]_i_3_n_0\,
      O => \wRxData_Next_reg[7]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx is
  port (
    \FSM_sequential_rFSM_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_rFSM_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rCnt_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rBuffer_reg[95]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    oTx : out STD_LOGIC;
    \FSM_sequential_rFSM_reg[2]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rCnt_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rBuffer_reg[37]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rTxStart_reg : in STD_LOGIC;
    \FSM_sequential_rFSM_reg[0]\ : in STD_LOGIC;
    \rTxByte_reg[7]\ : in STD_LOGIC;
    \rTxByte_reg[6]\ : in STD_LOGIC;
    \rTxByte_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rTxByte_reg[4]\ : in STD_LOGIC;
    \rTxByte_reg[1]\ : in STD_LOGIC;
    \rTxData_Current_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx is
  signal \FSM_onehot_rFSM_Current[0]_i_1_n_0\ : STD_LOGIC;
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
  signal \FSM_sequential_rFSM[2]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_rfsm_reg[2]\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[0]_i_2_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_4_n_0\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \rBuffer[93]_i_2_n_0\ : STD_LOGIC;
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
  signal \rCnt_Current[8]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1__0_n_0\ : STD_LOGIC;
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
  signal \rTxData_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_2_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_3_n_0\ : STD_LOGIC;
  signal \rTxData_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal wBit_Next : STD_LOGIC;
  signal wTxData_Next : STD_LOGIC;
  signal wTxDone : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_1__0\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rBuffer[93]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rCnt[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rCnt[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rCnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rCnt[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rTxByte[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rTxByte[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rTxByte[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rTxByte[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rTxByte[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rTxByte[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rTxByte[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rTxByte[7]_i_2\ : label is "soft_lutpair18";
begin
  \FSM_sequential_rFSM_reg[2]\ <= \^fsm_sequential_rfsm_reg[2]\;
\FSM_onehot_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => wTxDone,
      I1 => rTxStart_reg,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM_Current[0]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
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
      INIT => X"FFFF7F00FF00FF00"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[0]\,
      I1 => \rBit_Current_reg_n_0_[1]\,
      I2 => \rBit_Current_reg_n_0_[2]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      O => \FSM_onehot_rFSM_Current[2]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0000000AAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \rBit_Current_reg_n_0_[0]\,
      I3 => \rBit_Current_reg_n_0_[1]\,
      I4 => \rBit_Current_reg_n_0_[2]\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      O => \FSM_onehot_rFSM_Current[3]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1__0_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[10]\,
      I1 => \rCnt_Current_reg_n_0_[8]\,
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[6]\,
      I4 => \rCnt_Current_reg_n_0_[7]\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_3__0_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[2]\,
      I1 => \rCnt_Current_reg_n_0_[3]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
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
      INIT => X"00000000150515FF"
    )
        port map (
      I0 => \FSM_sequential_rFSM[2]_i_2_n_0\,
      I1 => wTxDone,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \FSM_sequential_rFSM_reg[0]\,
      I5 => Q(2),
      O => D(0)
    );
\FSM_sequential_rFSM[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444044404440000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \rCnt_reg[3]\(2),
      I3 => \rCnt_reg[3]\(3),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => wTxDone,
      O => \^fsm_sequential_rfsm_reg[2]\
    );
\FSM_sequential_rFSM[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_rFSM[2]_i_2_n_0\,
      I1 => Q(2),
      O => D(1)
    );
\FSM_sequential_rFSM[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F1110000"
    )
        port map (
      I0 => wTxDone,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rCnt_reg[3]\(3),
      I3 => \rCnt_reg[3]\(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \FSM_sequential_rFSM[2]_i_2_n_0\
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
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000007AAAAAAA8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I2 => \rBit_Current[0]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \rBit_Current_reg_n_0_[0]\,
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => wTxDone,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \rBit_Current[0]_i_2_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => wBit_Next,
      I3 => \rBit_Current_reg_n_0_[1]\,
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \rBit_Current_reg_n_0_[0]\,
      I2 => \rBit_Current_reg_n_0_[1]\,
      I3 => wBit_Next,
      I4 => \rBit_Current_reg_n_0_[2]\,
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8088"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \rCnt_Current_reg_n_0_[10]\,
      I2 => \rBit_Current[2]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_3__0_n_0\,
      I4 => \rBit_Current[2]_i_4_n_0\,
      O => wBit_Next
    );
\rBit_Current[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[8]\,
      I1 => \rCnt_Current_reg_n_0_[9]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rBit_Current[2]_i_3_n_0\
    );
\rBit_Current[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => wTxDone,
      O => \rBit_Current[2]_i_4_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[0]_i_1_n_0\,
      Q => \rBit_Current_reg_n_0_[0]\,
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[1]_i_1_n_0\,
      Q => \rBit_Current_reg_n_0_[1]\,
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[2]_i_1_n_0\,
      Q => \rBit_Current_reg_n_0_[2]\,
      R => iRst
    );
\rBuffer[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003055"
    )
        port map (
      I0 => \rBuffer[93]_i_2_n_0\,
      I1 => Q(1),
      I2 => \rBuffer_reg[37]\(0),
      I3 => Q(0),
      I4 => Q(2),
      O => \FSM_sequential_rFSM_reg[1]\
    );
\rBuffer[93]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F111FFFF"
    )
        port map (
      I0 => wTxDone,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rCnt_reg[3]\(3),
      I3 => \rCnt_reg[3]\(2),
      I4 => Q(1),
      O => \rBuffer[93]_i_2_n_0\
    );
\rCnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_sequential_rfsm_reg[2]\,
      I1 => \rCnt_reg[3]\(0),
      O => \rCnt_reg[2]\(0)
    );
\rCnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^fsm_sequential_rfsm_reg[2]\,
      I1 => \rCnt_reg[3]\(1),
      I2 => \rCnt_reg[3]\(0),
      O => \rCnt_reg[2]\(1)
    );
\rCnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^fsm_sequential_rfsm_reg[2]\,
      I1 => \rCnt_reg[3]\(0),
      I2 => \rCnt_reg[3]\(1),
      I3 => \rCnt_reg[3]\(2),
      O => \rCnt_reg[2]\(2)
    );
\rCnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \^fsm_sequential_rfsm_reg[2]\,
      I1 => \rCnt_reg[3]\(2),
      I2 => \rCnt_reg[3]\(1),
      I3 => \rCnt_reg[3]\(0),
      I4 => \rCnt_reg[3]\(3),
      O => \rCnt_reg[2]\(3)
    );
\rCnt_Current[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I4 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[0]_i_1__0_n_0\
    );
\rCnt_Current[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[10]\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      O => \rCnt_Current[10]_i_1__0_n_0\
    );
\rCnt_Current[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2F2F2F2F00"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_3__0_n_0\,
      I1 => \rBit_Current[2]_i_3_n_0\,
      I2 => \rCnt_Current_reg_n_0_[10]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rCnt_Current[10]_i_2_n_0\
    );
\rCnt_Current[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[8]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[10]_i_3_n_0\
    );
\rCnt_Current[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FE00FE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I4 => \rCnt_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[1]_i_1__0_n_0\
    );
\rCnt_Current[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
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
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[3]_i_1__0_n_0\
    );
\rCnt_Current[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[1]\,
      I4 => \rCnt_Current_reg_n_0_[0]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \rCnt_Current[4]_i_1__0_n_0\
    );
\rCnt_Current[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA20000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
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
      I0 => \rCnt_Current_reg_n_0_[0]\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      O => \rCnt_Current[5]_i_2_n_0\
    );
\rCnt_Current[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FE00FE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I4 => \rCnt_Current[8]_i_2_n_0\,
      I5 => \rCnt_Current_reg_n_0_[6]\,
      O => \rCnt_Current[6]_i_1__0_n_0\
    );
\rCnt_Current[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[8]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[7]_i_1__0_n_0\
    );
\rCnt_Current[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current[8]_i_2_n_0\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[8]_i_1__0_n_0\
    );
\rCnt_Current[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[5]\,
      I1 => \rCnt_Current_reg_n_0_[4]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[8]_i_2_n_0\
    );
\rCnt_Current[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554000000005554"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      I5 => \rCnt_Current_reg_n_0_[9]\,
      O => \rCnt_Current[9]_i_1__0_n_0\
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
\rTxByte[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rTxByte_reg[5]\(0),
      I1 => \^fsm_sequential_rfsm_reg[2]\,
      O => \rBuffer_reg[95]\(0)
    );
\rTxByte[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rTxByte_reg[1]\,
      I1 => \^fsm_sequential_rfsm_reg[2]\,
      O => \rBuffer_reg[95]\(1)
    );
\rTxByte[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rTxByte_reg[5]\(1),
      I1 => \^fsm_sequential_rfsm_reg[2]\,
      O => \rBuffer_reg[95]\(2)
    );
\rTxByte[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rTxByte_reg[5]\(2),
      I1 => \^fsm_sequential_rfsm_reg[2]\,
      O => \rBuffer_reg[95]\(3)
    );
\rTxByte[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rTxByte_reg[4]\,
      I1 => \^fsm_sequential_rfsm_reg[2]\,
      O => \rBuffer_reg[95]\(4)
    );
\rTxByte[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rTxByte_reg[5]\(3),
      I1 => \^fsm_sequential_rfsm_reg[2]\,
      O => \rBuffer_reg[95]\(5)
    );
\rTxByte[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rTxByte_reg[6]\,
      I1 => \^fsm_sequential_rfsm_reg[2]\,
      O => \rBuffer_reg[95]\(6)
    );
\rTxByte[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rTxByte_reg[7]\,
      I1 => \^fsm_sequential_rfsm_reg[2]\,
      O => \rBuffer_reg[95]\(7)
    );
\rTxData_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(0),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[0]_i_1_n_0\
    );
\rTxData_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(1),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(1),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[1]_i_1_n_0\
    );
\rTxData_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(2),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(2),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[2]_i_1_n_0\
    );
\rTxData_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(3),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(3),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[3]_i_1_n_0\
    );
\rTxData_Current[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(4),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(4),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[4]_i_1_n_0\
    );
\rTxData_Current[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(5),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(5),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[5]_i_1_n_0\
    );
\rTxData_Current[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(6),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(6),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[6]_i_1_n_0\
    );
\rTxData_Current[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current[7]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2__0_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => wTxData_Next
    );
\rTxData_Current[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \rTxData_Current_reg[7]_0\(7),
      O => \rTxData_Current[7]_i_2_n_0\
    );
\rTxData_Current[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[2]\,
      I1 => \rBit_Current_reg_n_0_[1]\,
      I2 => \rBit_Current_reg_n_0_[0]\,
      O => \rTxData_Current[7]_i_3_n_0\
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
      D => \rTxData_Current[6]_i_1_n_0\,
      Q => in7(5),
      R => iRst
    );
\rTxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[7]_i_2_n_0\,
      Q => in7(6),
      R => iRst
    );
rTxStart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFDDDD00001111"
    )
        port map (
      I0 => \rBuffer[93]_i_2_n_0\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => wTxDone,
      I4 => Q(0),
      I5 => rTxStart_reg,
      O => \FSM_sequential_rFSM_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top is
  port (
    oTx : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iRx : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top is
  signal UART_RX_INST_n_2 : STD_LOGIC;
  signal UART_RX_INST_n_4 : STD_LOGIC;
  signal UART_RX_INST_n_6 : STD_LOGIC;
  signal UART_TX_INST_n_0 : STD_LOGIC;
  signal UART_TX_INST_n_1 : STD_LOGIC;
  signal UART_TX_INST_n_17 : STD_LOGIC;
  signal rBuffer : STD_LOGIC_VECTOR ( 93 downto 0 );
  signal \rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[29]_inst_rBuffer_reg_s_12_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[38]_inst_rBuffer_reg_s_12_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[74]_inst_rBuffer_reg_s_11_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[77]_inst_rBuffer_reg_s_12_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[81]_inst_rBuffer_reg_r_1_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[84]_inst_rBuffer_reg_r_3_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[86]_inst_rBuffer_reg_s_12_n_0\ : STD_LOGIC;
  signal \rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__0_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__1_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__2_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__3_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__4_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__5_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_gate__6_n_0\ : STD_LOGIC;
  signal rBuffer_reg_gate_n_0 : STD_LOGIC;
  signal \rBuffer_reg_n_0_[88]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[89]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[90]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[91]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[92]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[93]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[94]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[95]\ : STD_LOGIC;
  signal rBuffer_reg_r_0_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_1_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_2_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_3_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_4_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_5_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_6_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_7_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_8_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_9_n_0 : STD_LOGIC;
  signal rBuffer_reg_r_n_0 : STD_LOGIC;
  signal rBuffer_reg_s_10_n_0 : STD_LOGIC;
  signal rBuffer_reg_s_11_n_0 : STD_LOGIC;
  signal rBuffer_reg_s_12_n_0 : STD_LOGIC;
  signal rBuffer_reg_s_n_0 : STD_LOGIC;
  signal rCnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rCntRx : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rCntRx[3]_i_2_n_0\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCntRx_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal rFSM : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rFSM__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rTxByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rTxByte[7]_i_1_n_0\ : STD_LOGIC;
  signal \rTxByte_reg_n_0_[0]\ : STD_LOGIC;
  signal \rTxByte_reg_n_0_[1]\ : STD_LOGIC;
  signal \rTxByte_reg_n_0_[2]\ : STD_LOGIC;
  signal \rTxByte_reg_n_0_[3]\ : STD_LOGIC;
  signal \rTxByte_reg_n_0_[4]\ : STD_LOGIC;
  signal \rTxByte_reg_n_0_[5]\ : STD_LOGIC;
  signal \rTxByte_reg_n_0_[6]\ : STD_LOGIC;
  signal \rTxByte_reg_n_0_[7]\ : STD_LOGIC;
  signal rTxStart_reg_n_0 : STD_LOGIC;
  signal wRxDone : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[0]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[1]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[2]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_DONE:100,s_WAIT_TX:011,s_TX:010";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11\ : label is "\inst/rBuffer_reg ";
  attribute srl_name : string;
  attribute srl_name of \rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11\ : label is "\inst/rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11 ";
  attribute srl_bus_name of \rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11\ : label is "\inst/rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11 ";
  attribute srl_bus_name of \rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10\ : label is "\inst/rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10 ";
  attribute srl_bus_name of \rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11\ : label is "\inst/rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11 ";
  attribute srl_bus_name of \rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0\ : label is "\inst/rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0 ";
  attribute srl_bus_name of \rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2\ : label is "\inst/rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2 ";
  attribute srl_bus_name of \rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11\ : label is "\inst/rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11 ";
  attribute srl_bus_name of \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg ";
  attribute srl_name of \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8\ : label is "\inst/rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rBuffer_reg_gate__6\ : label is "soft_lutpair23";
begin
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
UART_RX_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
     port map (
      D(2) => rCntRx(2),
      D(1) => UART_RX_INST_n_2,
      D(0) => rCntRx(0),
      E(0) => UART_RX_INST_n_6,
      \FSM_onehot_rFSM_Current_reg[4]_0\ => UART_RX_INST_n_4,
      \FSM_sequential_rFSM_reg[1]\(0) => \rFSM__0\(1),
      \FSM_sequential_rFSM_reg[1]_0\(2 downto 0) => rFSM(2 downto 0),
      \FSM_sequential_rFSM_reg[1]_1\(3) => \rCntRx_reg_n_0_[3]\,
      \FSM_sequential_rFSM_reg[1]_1\(2) => \rCntRx_reg_n_0_[2]\,
      \FSM_sequential_rFSM_reg[1]_1\(1) => \rCntRx_reg_n_0_[1]\,
      \FSM_sequential_rFSM_reg[1]_1\(0) => \rCntRx_reg_n_0_[0]\,
      \FSM_sequential_rFSM_reg[1]_2\ => UART_TX_INST_n_0,
      Q(0) => wRxDone,
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      rBuffer(7 downto 0) => rBuffer(7 downto 0)
    );
UART_TX_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx
     port map (
      D(1) => \rFSM__0\(2),
      D(0) => \rFSM__0\(0),
      \FSM_sequential_rFSM_reg[0]\ => UART_RX_INST_n_4,
      \FSM_sequential_rFSM_reg[1]\ => UART_TX_INST_n_1,
      \FSM_sequential_rFSM_reg[2]\ => UART_TX_INST_n_0,
      \FSM_sequential_rFSM_reg[2]_0\ => UART_TX_INST_n_17,
      Q(2 downto 0) => rFSM(2 downto 0),
      iClk => iClk,
      iRst => iRst,
      oTx => oTx,
      \rBuffer_reg[37]\(0) => wRxDone,
      \rBuffer_reg[95]\(7 downto 0) => rTxByte(7 downto 0),
      \rCnt_reg[2]\(3 downto 0) => rCnt(3 downto 0),
      \rCnt_reg[3]\(3) => \rCnt_reg_n_0_[3]\,
      \rCnt_reg[3]\(2) => \rCnt_reg_n_0_[2]\,
      \rCnt_reg[3]\(1) => \rCnt_reg_n_0_[1]\,
      \rCnt_reg[3]\(0) => \rCnt_reg_n_0_[0]\,
      \rTxByte_reg[1]\ => \rBuffer_reg_n_0_[89]\,
      \rTxByte_reg[4]\ => \rBuffer_reg_n_0_[92]\,
      \rTxByte_reg[5]\(3) => \rBuffer_reg_n_0_[93]\,
      \rTxByte_reg[5]\(2) => \rBuffer_reg_n_0_[91]\,
      \rTxByte_reg[5]\(1) => \rBuffer_reg_n_0_[90]\,
      \rTxByte_reg[5]\(0) => \rBuffer_reg_n_0_[88]\,
      \rTxByte_reg[6]\ => \rBuffer_reg_n_0_[94]\,
      \rTxByte_reg[7]\ => \rBuffer_reg_n_0_[95]\,
      \rTxData_Current_reg[7]_0\(7) => \rTxByte_reg_n_0_[7]\,
      \rTxData_Current_reg[7]_0\(6) => \rTxByte_reg_n_0_[6]\,
      \rTxData_Current_reg[7]_0\(5) => \rTxByte_reg_n_0_[5]\,
      \rTxData_Current_reg[7]_0\(4) => \rTxByte_reg_n_0_[4]\,
      \rTxData_Current_reg[7]_0\(3) => \rTxByte_reg_n_0_[3]\,
      \rTxData_Current_reg[7]_0\(2) => \rTxByte_reg_n_0_[2]\,
      \rTxData_Current_reg[7]_0\(1) => \rTxByte_reg_n_0_[1]\,
      \rTxData_Current_reg[7]_0\(0) => \rTxByte_reg_n_0_[0]\,
      rTxStart_reg => rTxStart_reg_n_0
    );
\rBuffer_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(0),
      Q => rBuffer(8),
      S => iRst
    );
\rBuffer_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(10),
      Q => rBuffer(18),
      S => iRst
    );
\rBuffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(11),
      Q => rBuffer(19),
      R => iRst
    );
\rBuffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(12),
      Q => rBuffer(20),
      R => iRst
    );
\rBuffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(16),
      Q => rBuffer(24),
      R => iRst
    );
\rBuffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(17),
      Q => rBuffer(25),
      R => iRst
    );
\rBuffer_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(18),
      Q => rBuffer(26),
      S => iRst
    );
\rBuffer_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(19),
      Q => rBuffer(27),
      S => iRst
    );
\rBuffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(1),
      Q => rBuffer(9),
      R => iRst
    );
\rBuffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(20),
      Q => rBuffer(28),
      R => iRst
    );
\rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => UART_TX_INST_n_1,
      CLK => iClk,
      D => rBuffer(5),
      Q => \rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11_n_0\
    );
\rBuffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(24),
      Q => rBuffer(32),
      R => iRst
    );
\rBuffer_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(25),
      Q => rBuffer(33),
      S => iRst
    );
\rBuffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(26),
      Q => rBuffer(34),
      R => iRst
    );
\rBuffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(27),
      Q => rBuffer(35),
      R => iRst
    );
\rBuffer_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(28),
      Q => rBuffer(36),
      S => iRst
    );
\rBuffer_reg[29]_inst_rBuffer_reg_s_12\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg[21]_srl3____inst_rBuffer_reg_s_11_n_0\,
      Q => \rBuffer_reg[29]_inst_rBuffer_reg_s_12_n_0\,
      R => '0'
    );
\rBuffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(2),
      Q => rBuffer(10),
      R => iRst
    );
\rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => UART_TX_INST_n_1,
      CLK => iClk,
      D => rBuffer(14),
      Q => \rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11_n_0\
    );
\rBuffer_reg[32]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(32),
      Q => rBuffer(40),
      S => iRst
    );
\rBuffer_reg[33]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(33),
      Q => rBuffer(41),
      S => iRst
    );
\rBuffer_reg[34]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(34),
      Q => rBuffer(42),
      S => iRst
    );
\rBuffer_reg[35]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(35),
      Q => rBuffer(43),
      S => iRst
    );
\rBuffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(36),
      Q => rBuffer(44),
      R => iRst
    );
\rBuffer_reg[37]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg_gate__6_n_0\,
      Q => rBuffer(45),
      S => iRst
    );
\rBuffer_reg[38]_inst_rBuffer_reg_s_12\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg[30]_srl3____inst_rBuffer_reg_s_11_n_0\,
      Q => \rBuffer_reg[38]_inst_rBuffer_reg_s_12_n_0\,
      R => '0'
    );
\rBuffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(3),
      Q => rBuffer(11),
      R => iRst
    );
\rBuffer_reg[40]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(40),
      Q => rBuffer(48),
      S => iRst
    );
\rBuffer_reg[41]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(41),
      Q => rBuffer(49),
      S => iRst
    );
\rBuffer_reg[42]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(42),
      Q => rBuffer(50),
      S => iRst
    );
\rBuffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(43),
      Q => rBuffer(51),
      R => iRst
    );
\rBuffer_reg[44]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(44),
      Q => rBuffer(52),
      S => iRst
    );
\rBuffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(45),
      Q => rBuffer(53),
      R => iRst
    );
\rBuffer_reg[46]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg_gate__5_n_0\,
      Q => rBuffer(54),
      S => iRst
    );
\rBuffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(48),
      Q => rBuffer(56),
      R => iRst
    );
\rBuffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(49),
      Q => rBuffer(57),
      R => iRst
    );
\rBuffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(4),
      Q => rBuffer(12),
      R => iRst
    );
\rBuffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(50),
      Q => rBuffer(58),
      R => iRst
    );
\rBuffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(51),
      Q => rBuffer(59),
      R => iRst
    );
\rBuffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(54),
      Q => rBuffer(62),
      R => iRst
    );
\rBuffer_reg[56]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(56),
      Q => rBuffer(64),
      S => iRst
    );
\rBuffer_reg[57]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(57),
      Q => rBuffer(65),
      S => iRst
    );
\rBuffer_reg[59]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(59),
      Q => rBuffer(67),
      S => iRst
    );
\rBuffer_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(64),
      Q => rBuffer(72),
      R => iRst
    );
\rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => UART_TX_INST_n_1,
      CLK => iClk,
      D => rBuffer(58),
      Q => \rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10_n_0\
    );
\rBuffer_reg[67]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(67),
      Q => rBuffer(75),
      S => iRst
    );
\rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => UART_TX_INST_n_1,
      CLK => iClk,
      D => rBuffer(53),
      Q => \rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11_n_0\
    );
\rBuffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(6),
      Q => rBuffer(14),
      R => iRst
    );
\rBuffer_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(72),
      Q => rBuffer(80),
      R => iRst
    );
\rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => UART_TX_INST_n_1,
      CLK => iClk,
      D => rBuffer(65),
      Q => \rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0_n_0\
    );
\rBuffer_reg[74]_inst_rBuffer_reg_s_11\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg[66]_srl2____inst_rBuffer_reg_s_10_n_0\,
      Q => \rBuffer_reg[74]_inst_rBuffer_reg_s_11_n_0\,
      R => '0'
    );
\rBuffer_reg[75]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(75),
      Q => rBuffer(83),
      S => iRst
    );
\rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => UART_TX_INST_n_1,
      CLK => iClk,
      D => rBuffer(52),
      Q => \rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2_n_0\
    );
\rBuffer_reg[77]_inst_rBuffer_reg_s_12\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg[69]_srl3____inst_rBuffer_reg_s_11_n_0\,
      Q => \rBuffer_reg[77]_inst_rBuffer_reg_s_12_n_0\,
      R => '0'
    );
\rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => UART_TX_INST_n_1,
      CLK => iClk,
      D => rBuffer(62),
      Q => \rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11_n_0\
    );
\rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => UART_TX_INST_n_1,
      CLK => iClk,
      D => rBuffer(7),
      Q => \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0\
    );
\rBuffer_reg[80]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(80),
      Q => rBuffer(88),
      S => iRst
    );
\rBuffer_reg[81]_inst_rBuffer_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg[73]_srl2___inst_rBuffer_reg_r_0_n_0\,
      Q => \rBuffer_reg[81]_inst_rBuffer_reg_r_1_n_0\,
      R => '0'
    );
\rBuffer_reg[82]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg_gate__4_n_0\,
      Q => rBuffer(90),
      S => iRst
    );
\rBuffer_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(83),
      Q => rBuffer(91),
      R => iRst
    );
\rBuffer_reg[84]_inst_rBuffer_reg_r_3\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg[76]_srl4___inst_rBuffer_reg_r_2_n_0\,
      Q => \rBuffer_reg[84]_inst_rBuffer_reg_r_3_n_0\,
      R => '0'
    );
\rBuffer_reg[85]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg_gate__3_n_0\,
      Q => rBuffer(93),
      S => iRst
    );
\rBuffer_reg[86]_inst_rBuffer_reg_s_12\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg[78]_srl3____inst_rBuffer_reg_s_11_n_0\,
      Q => \rBuffer_reg[86]_inst_rBuffer_reg_s_12_n_0\,
      R => '0'
    );
\rBuffer_reg[87]_inst_rBuffer_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg[79]_srl10___inst_rBuffer_reg_r_8_n_0\,
      Q => \rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0\,
      R => '0'
    );
\rBuffer_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(88),
      Q => \rBuffer_reg_n_0_[88]\,
      R => iRst
    );
\rBuffer_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg_gate__1_n_0\,
      Q => \rBuffer_reg_n_0_[89]\,
      R => iRst
    );
\rBuffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(8),
      Q => rBuffer(16),
      R => iRst
    );
\rBuffer_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(90),
      Q => \rBuffer_reg_n_0_[90]\,
      R => iRst
    );
\rBuffer_reg[91]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(91),
      Q => \rBuffer_reg_n_0_[91]\,
      S => iRst
    );
\rBuffer_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg_gate__0_n_0\,
      Q => \rBuffer_reg_n_0_[92]\,
      R => iRst
    );
\rBuffer_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(93),
      Q => \rBuffer_reg_n_0_[93]\,
      R => iRst
    );
\rBuffer_reg[94]\: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => \rBuffer_reg_gate__2_n_0\,
      Q => \rBuffer_reg_n_0_[94]\,
      S => iRst
    );
\rBuffer_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_gate_n_0,
      Q => \rBuffer_reg_n_0_[95]\,
      R => iRst
    );
\rBuffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer(9),
      Q => rBuffer(17),
      R => iRst
    );
rBuffer_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[87]_inst_rBuffer_reg_r_9_n_0\,
      I1 => rBuffer_reg_r_9_n_0,
      O => rBuffer_reg_gate_n_0
    );
\rBuffer_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[84]_inst_rBuffer_reg_r_3_n_0\,
      I1 => rBuffer_reg_r_3_n_0,
      O => \rBuffer_reg_gate__0_n_0\
    );
\rBuffer_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rBuffer_reg[81]_inst_rBuffer_reg_r_1_n_0\,
      I1 => rBuffer_reg_r_1_n_0,
      O => \rBuffer_reg_gate__1_n_0\
    );
\rBuffer_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rBuffer_reg[86]_inst_rBuffer_reg_s_12_n_0\,
      I1 => rBuffer_reg_s_12_n_0,
      O => \rBuffer_reg_gate__2_n_0\
    );
\rBuffer_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rBuffer_reg[77]_inst_rBuffer_reg_s_12_n_0\,
      I1 => rBuffer_reg_s_12_n_0,
      O => \rBuffer_reg_gate__3_n_0\
    );
\rBuffer_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rBuffer_reg[74]_inst_rBuffer_reg_s_11_n_0\,
      I1 => rBuffer_reg_s_11_n_0,
      O => \rBuffer_reg_gate__4_n_0\
    );
\rBuffer_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rBuffer_reg[38]_inst_rBuffer_reg_s_12_n_0\,
      I1 => rBuffer_reg_s_12_n_0,
      O => \rBuffer_reg_gate__5_n_0\
    );
\rBuffer_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rBuffer_reg[29]_inst_rBuffer_reg_s_12_n_0\,
      I1 => rBuffer_reg_s_12_n_0,
      O => \rBuffer_reg_gate__6_n_0\
    );
rBuffer_reg_r: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => '1',
      Q => rBuffer_reg_r_n_0,
      R => iRst
    );
rBuffer_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_r_n_0,
      Q => rBuffer_reg_r_0_n_0,
      R => iRst
    );
rBuffer_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_r_0_n_0,
      Q => rBuffer_reg_r_1_n_0,
      R => iRst
    );
rBuffer_reg_r_2: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_r_1_n_0,
      Q => rBuffer_reg_r_2_n_0,
      R => iRst
    );
rBuffer_reg_r_3: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_r_2_n_0,
      Q => rBuffer_reg_r_3_n_0,
      R => iRst
    );
rBuffer_reg_r_4: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_r_3_n_0,
      Q => rBuffer_reg_r_4_n_0,
      R => iRst
    );
rBuffer_reg_r_5: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_r_4_n_0,
      Q => rBuffer_reg_r_5_n_0,
      R => iRst
    );
rBuffer_reg_r_6: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_r_5_n_0,
      Q => rBuffer_reg_r_6_n_0,
      R => iRst
    );
rBuffer_reg_r_7: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_r_6_n_0,
      Q => rBuffer_reg_r_7_n_0,
      R => iRst
    );
rBuffer_reg_r_8: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_r_7_n_0,
      Q => rBuffer_reg_r_8_n_0,
      R => iRst
    );
rBuffer_reg_r_9: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_r_8_n_0,
      Q => rBuffer_reg_r_9_n_0,
      R => iRst
    );
rBuffer_reg_s: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => '0',
      Q => rBuffer_reg_s_n_0,
      S => iRst
    );
rBuffer_reg_s_10: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_s_n_0,
      Q => rBuffer_reg_s_10_n_0,
      S => iRst
    );
rBuffer_reg_s_11: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_s_10_n_0,
      Q => rBuffer_reg_s_11_n_0,
      S => iRst
    );
rBuffer_reg_s_12: unisim.vcomponents.FDSE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_1,
      D => rBuffer_reg_s_11_n_0,
      Q => rBuffer_reg_s_12_n_0,
      S => iRst
    );
\rCntRx[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \rCntRx_reg_n_0_[3]\,
      I1 => \rCntRx_reg_n_0_[0]\,
      I2 => \rCntRx_reg_n_0_[1]\,
      I3 => \rCntRx_reg_n_0_[2]\,
      I4 => rFSM(0),
      O => \rCntRx[3]_i_2_n_0\
    );
\rCntRx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_6,
      D => rCntRx(0),
      Q => \rCntRx_reg_n_0_[0]\,
      R => iRst
    );
\rCntRx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_6,
      D => UART_RX_INST_n_2,
      Q => \rCntRx_reg_n_0_[1]\,
      R => iRst
    );
\rCntRx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_6,
      D => rCntRx(2),
      Q => \rCntRx_reg_n_0_[2]\,
      R => iRst
    );
\rCntRx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_RX_INST_n_6,
      D => \rCntRx[3]_i_2_n_0\,
      Q => \rCntRx_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rCnt(0),
      Q => \rCnt_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rCnt(1),
      Q => \rCnt_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rCnt(2),
      Q => \rCnt_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rCnt(3),
      Q => \rCnt_reg_n_0_[3]\,
      R => iRst
    );
\rTxByte[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rFSM(2),
      I1 => rFSM(0),
      O => \rTxByte[7]_i_1_n_0\
    );
\rTxByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rTxByte(0),
      Q => \rTxByte_reg_n_0_[0]\,
      R => iRst
    );
\rTxByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rTxByte(1),
      Q => \rTxByte_reg_n_0_[1]\,
      R => iRst
    );
\rTxByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rTxByte(2),
      Q => \rTxByte_reg_n_0_[2]\,
      R => iRst
    );
\rTxByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rTxByte(3),
      Q => \rTxByte_reg_n_0_[3]\,
      R => iRst
    );
\rTxByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rTxByte(4),
      Q => \rTxByte_reg_n_0_[4]\,
      R => iRst
    );
\rTxByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rTxByte(5),
      Q => \rTxByte_reg_n_0_[5]\,
      R => iRst
    );
\rTxByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rTxByte(6),
      Q => \rTxByte_reg_n_0_[6]\,
      R => iRst
    );
\rTxByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rTxByte[7]_i_1_n_0\,
      D => rTxByte(7),
      Q => \rTxByte_reg_n_0_[7]\,
      R => iRst
    );
rTxStart_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_17,
      Q => rTxStart_reg_n_0,
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    oTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_uart_top_0_0,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_top,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top
     port map (
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      oTx => oTx
    );
end STRUCTURE;
