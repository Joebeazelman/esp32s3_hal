pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.UART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  FIFO data register
   type FIFO_Register is record
      --  UART 0 accesses FIFO via this register.
      RXFIFO_RD_BYTE : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31  : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFO_Register use record
      RXFIFO_RD_BYTE at 0 range 0 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   --  Raw interrupt status
   type INT_RAW_Register is record
      --  This interrupt raw bit turns to high level when receiver receives
      --  more data than what rxfifo_full_thrhd specifies.
      RXFIFO_FULL_INT_RAW      : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when the amount of data in
      --  Tx-FIFO is less than what txfifo_empty_thrhd specifies .
      TXFIFO_EMPTY_INT_RAW     : SVD.Bit := 16#1#;
      --  This interrupt raw bit turns to high level when receiver detects a
      --  parity error in the data.
      PARITY_ERR_INT_RAW       : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver detects a
      --  data frame error .
      FRM_ERR_INT_RAW          : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver receives
      --  more data than the FIFO can store.
      RXFIFO_OVF_INT_RAW       : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver detects the
      --  edge change of DSRn signal.
      DSR_CHG_INT_RAW          : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver detects the
      --  edge change of CTSn signal.
      CTS_CHG_INT_RAW          : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver detects a 0
      --  after the stop bit.
      BRK_DET_INT_RAW          : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver takes more
      --  time than rx_tout_thrhd to receive a byte.
      RXFIFO_TOUT_INT_RAW      : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver recevies Xon
      --  char when uart_sw_flow_con_en is set to 1.
      SW_XON_INT_RAW           : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver receives
      --  Xoff char when uart_sw_flow_con_en is set to 1.
      SW_XOFF_INT_RAW          : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver detects a
      --  glitch in the middle of a start bit.
      GLITCH_DET_INT_RAW       : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when transmitter completes
      --  sending NULL characters, after all data in Tx-FIFO are sent.
      TX_BRK_DONE_INT_RAW      : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when transmitter has kept
      --  the shortest duration after sending the last data.
      TX_BRK_IDLE_DONE_INT_RAW : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when transmitter has send
      --  out all data in FIFO.
      TX_DONE_INT_RAW          : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver detects a
      --  parity error from the echo of transmitter in rs485 mode.
      RS485_PARITY_ERR_INT_RAW : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver detects a
      --  data frame error from the echo of transmitter in rs485 mode.
      RS485_FRM_ERR_INT_RAW    : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when detects a clash
      --  between transmitter and receiver in rs485 mode.
      RS485_CLASH_INT_RAW      : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when receiver detects the
      --  configured at_cmd char.
      AT_CMD_CHAR_DET_INT_RAW  : SVD.Bit := 16#0#;
      --  This interrupt raw bit turns to high level when input rxd edge
      --  changes more times than what reg_active_threshold specifies in light
      --  sleeping mode.
      WAKEUP_INT_RAW           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_20_31           : SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      RXFIFO_FULL_INT_RAW      at 0 range 0 .. 0;
      TXFIFO_EMPTY_INT_RAW     at 0 range 1 .. 1;
      PARITY_ERR_INT_RAW       at 0 range 2 .. 2;
      FRM_ERR_INT_RAW          at 0 range 3 .. 3;
      RXFIFO_OVF_INT_RAW       at 0 range 4 .. 4;
      DSR_CHG_INT_RAW          at 0 range 5 .. 5;
      CTS_CHG_INT_RAW          at 0 range 6 .. 6;
      BRK_DET_INT_RAW          at 0 range 7 .. 7;
      RXFIFO_TOUT_INT_RAW      at 0 range 8 .. 8;
      SW_XON_INT_RAW           at 0 range 9 .. 9;
      SW_XOFF_INT_RAW          at 0 range 10 .. 10;
      GLITCH_DET_INT_RAW       at 0 range 11 .. 11;
      TX_BRK_DONE_INT_RAW      at 0 range 12 .. 12;
      TX_BRK_IDLE_DONE_INT_RAW at 0 range 13 .. 13;
      TX_DONE_INT_RAW          at 0 range 14 .. 14;
      RS485_PARITY_ERR_INT_RAW at 0 range 15 .. 15;
      RS485_FRM_ERR_INT_RAW    at 0 range 16 .. 16;
      RS485_CLASH_INT_RAW      at 0 range 17 .. 17;
      AT_CMD_CHAR_DET_INT_RAW  at 0 range 18 .. 18;
      WAKEUP_INT_RAW           at 0 range 19 .. 19;
      Reserved_20_31           at 0 range 20 .. 31;
   end record;

   --  Masked interrupt status
   type INT_ST_Register is record
      --  Read-only. This is the status bit for rxfifo_full_int_raw when
      --  rxfifo_full_int_ena is set to 1.
      RXFIFO_FULL_INT_ST      : SVD.Bit;
      --  Read-only. This is the status bit for txfifo_empty_int_raw when
      --  txfifo_empty_int_ena is set to 1.
      TXFIFO_EMPTY_INT_ST     : SVD.Bit;
      --  Read-only. This is the status bit for parity_err_int_raw when
      --  parity_err_int_ena is set to 1.
      PARITY_ERR_INT_ST       : SVD.Bit;
      --  Read-only. This is the status bit for frm_err_int_raw when
      --  frm_err_int_ena is set to 1.
      FRM_ERR_INT_ST          : SVD.Bit;
      --  Read-only. This is the status bit for rxfifo_ovf_int_raw when
      --  rxfifo_ovf_int_ena is set to 1.
      RXFIFO_OVF_INT_ST       : SVD.Bit;
      --  Read-only. This is the status bit for dsr_chg_int_raw when
      --  dsr_chg_int_ena is set to 1.
      DSR_CHG_INT_ST          : SVD.Bit;
      --  Read-only. This is the status bit for cts_chg_int_raw when
      --  cts_chg_int_ena is set to 1.
      CTS_CHG_INT_ST          : SVD.Bit;
      --  Read-only. This is the status bit for brk_det_int_raw when
      --  brk_det_int_ena is set to 1.
      BRK_DET_INT_ST          : SVD.Bit;
      --  Read-only. This is the status bit for rxfifo_tout_int_raw when
      --  rxfifo_tout_int_ena is set to 1.
      RXFIFO_TOUT_INT_ST      : SVD.Bit;
      --  Read-only. This is the status bit for sw_xon_int_raw when
      --  sw_xon_int_ena is set to 1.
      SW_XON_INT_ST           : SVD.Bit;
      --  Read-only. This is the status bit for sw_xoff_int_raw when
      --  sw_xoff_int_ena is set to 1.
      SW_XOFF_INT_ST          : SVD.Bit;
      --  Read-only. This is the status bit for glitch_det_int_raw when
      --  glitch_det_int_ena is set to 1.
      GLITCH_DET_INT_ST       : SVD.Bit;
      --  Read-only. This is the status bit for tx_brk_done_int_raw when
      --  tx_brk_done_int_ena is set to 1.
      TX_BRK_DONE_INT_ST      : SVD.Bit;
      --  Read-only. This is the stauts bit for tx_brk_idle_done_int_raw when
      --  tx_brk_idle_done_int_ena is set to 1.
      TX_BRK_IDLE_DONE_INT_ST : SVD.Bit;
      --  Read-only. This is the status bit for tx_done_int_raw when
      --  tx_done_int_ena is set to 1.
      TX_DONE_INT_ST          : SVD.Bit;
      --  Read-only. This is the status bit for rs485_parity_err_int_raw when
      --  rs485_parity_int_ena is set to 1.
      RS485_PARITY_ERR_INT_ST : SVD.Bit;
      --  Read-only. This is the status bit for rs485_frm_err_int_raw when
      --  rs485_fm_err_int_ena is set to 1.
      RS485_FRM_ERR_INT_ST    : SVD.Bit;
      --  Read-only. This is the status bit for rs485_clash_int_raw when
      --  rs485_clash_int_ena is set to 1.
      RS485_CLASH_INT_ST      : SVD.Bit;
      --  Read-only. This is the status bit for at_cmd_det_int_raw when
      --  at_cmd_char_det_int_ena is set to 1.
      AT_CMD_CHAR_DET_INT_ST  : SVD.Bit;
      --  Read-only. This is the status bit for uart_wakeup_int_raw when
      --  uart_wakeup_int_ena is set to 1.
      WAKEUP_INT_ST           : SVD.Bit;
      --  unspecified
      Reserved_20_31          : SVD.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      RXFIFO_FULL_INT_ST      at 0 range 0 .. 0;
      TXFIFO_EMPTY_INT_ST     at 0 range 1 .. 1;
      PARITY_ERR_INT_ST       at 0 range 2 .. 2;
      FRM_ERR_INT_ST          at 0 range 3 .. 3;
      RXFIFO_OVF_INT_ST       at 0 range 4 .. 4;
      DSR_CHG_INT_ST          at 0 range 5 .. 5;
      CTS_CHG_INT_ST          at 0 range 6 .. 6;
      BRK_DET_INT_ST          at 0 range 7 .. 7;
      RXFIFO_TOUT_INT_ST      at 0 range 8 .. 8;
      SW_XON_INT_ST           at 0 range 9 .. 9;
      SW_XOFF_INT_ST          at 0 range 10 .. 10;
      GLITCH_DET_INT_ST       at 0 range 11 .. 11;
      TX_BRK_DONE_INT_ST      at 0 range 12 .. 12;
      TX_BRK_IDLE_DONE_INT_ST at 0 range 13 .. 13;
      TX_DONE_INT_ST          at 0 range 14 .. 14;
      RS485_PARITY_ERR_INT_ST at 0 range 15 .. 15;
      RS485_FRM_ERR_INT_ST    at 0 range 16 .. 16;
      RS485_CLASH_INT_ST      at 0 range 17 .. 17;
      AT_CMD_CHAR_DET_INT_ST  at 0 range 18 .. 18;
      WAKEUP_INT_ST           at 0 range 19 .. 19;
      Reserved_20_31          at 0 range 20 .. 31;
   end record;

   --  Interrupt enable bits
   type INT_ENA_Register is record
      --  This is the enable bit for rxfifo_full_int_st register.
      RXFIFO_FULL_INT_ENA      : SVD.Bit := 16#0#;
      --  This is the enable bit for txfifo_empty_int_st register.
      TXFIFO_EMPTY_INT_ENA     : SVD.Bit := 16#0#;
      --  This is the enable bit for parity_err_int_st register.
      PARITY_ERR_INT_ENA       : SVD.Bit := 16#0#;
      --  This is the enable bit for frm_err_int_st register.
      FRM_ERR_INT_ENA          : SVD.Bit := 16#0#;
      --  This is the enable bit for rxfifo_ovf_int_st register.
      RXFIFO_OVF_INT_ENA       : SVD.Bit := 16#0#;
      --  This is the enable bit for dsr_chg_int_st register.
      DSR_CHG_INT_ENA          : SVD.Bit := 16#0#;
      --  This is the enable bit for cts_chg_int_st register.
      CTS_CHG_INT_ENA          : SVD.Bit := 16#0#;
      --  This is the enable bit for brk_det_int_st register.
      BRK_DET_INT_ENA          : SVD.Bit := 16#0#;
      --  This is the enable bit for rxfifo_tout_int_st register.
      RXFIFO_TOUT_INT_ENA      : SVD.Bit := 16#0#;
      --  This is the enable bit for sw_xon_int_st register.
      SW_XON_INT_ENA           : SVD.Bit := 16#0#;
      --  This is the enable bit for sw_xoff_int_st register.
      SW_XOFF_INT_ENA          : SVD.Bit := 16#0#;
      --  This is the enable bit for glitch_det_int_st register.
      GLITCH_DET_INT_ENA       : SVD.Bit := 16#0#;
      --  This is the enable bit for tx_brk_done_int_st register.
      TX_BRK_DONE_INT_ENA      : SVD.Bit := 16#0#;
      --  This is the enable bit for tx_brk_idle_done_int_st register.
      TX_BRK_IDLE_DONE_INT_ENA : SVD.Bit := 16#0#;
      --  This is the enable bit for tx_done_int_st register.
      TX_DONE_INT_ENA          : SVD.Bit := 16#0#;
      --  This is the enable bit for rs485_parity_err_int_st register.
      RS485_PARITY_ERR_INT_ENA : SVD.Bit := 16#0#;
      --  This is the enable bit for rs485_parity_err_int_st register.
      RS485_FRM_ERR_INT_ENA    : SVD.Bit := 16#0#;
      --  This is the enable bit for rs485_clash_int_st register.
      RS485_CLASH_INT_ENA      : SVD.Bit := 16#0#;
      --  This is the enable bit for at_cmd_char_det_int_st register.
      AT_CMD_CHAR_DET_INT_ENA  : SVD.Bit := 16#0#;
      --  This is the enable bit for uart_wakeup_int_st register.
      WAKEUP_INT_ENA           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_20_31           : SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      RXFIFO_FULL_INT_ENA      at 0 range 0 .. 0;
      TXFIFO_EMPTY_INT_ENA     at 0 range 1 .. 1;
      PARITY_ERR_INT_ENA       at 0 range 2 .. 2;
      FRM_ERR_INT_ENA          at 0 range 3 .. 3;
      RXFIFO_OVF_INT_ENA       at 0 range 4 .. 4;
      DSR_CHG_INT_ENA          at 0 range 5 .. 5;
      CTS_CHG_INT_ENA          at 0 range 6 .. 6;
      BRK_DET_INT_ENA          at 0 range 7 .. 7;
      RXFIFO_TOUT_INT_ENA      at 0 range 8 .. 8;
      SW_XON_INT_ENA           at 0 range 9 .. 9;
      SW_XOFF_INT_ENA          at 0 range 10 .. 10;
      GLITCH_DET_INT_ENA       at 0 range 11 .. 11;
      TX_BRK_DONE_INT_ENA      at 0 range 12 .. 12;
      TX_BRK_IDLE_DONE_INT_ENA at 0 range 13 .. 13;
      TX_DONE_INT_ENA          at 0 range 14 .. 14;
      RS485_PARITY_ERR_INT_ENA at 0 range 15 .. 15;
      RS485_FRM_ERR_INT_ENA    at 0 range 16 .. 16;
      RS485_CLASH_INT_ENA      at 0 range 17 .. 17;
      AT_CMD_CHAR_DET_INT_ENA  at 0 range 18 .. 18;
      WAKEUP_INT_ENA           at 0 range 19 .. 19;
      Reserved_20_31           at 0 range 20 .. 31;
   end record;

   --  Interrupt clear bits
   type INT_CLR_Register is record
      --  Write-only. Set this bit to clear the rxfifo_full_int_raw interrupt.
      RXFIFO_FULL_INT_CLR      : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear txfifo_empty_int_raw interrupt.
      TXFIFO_EMPTY_INT_CLR     : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear parity_err_int_raw interrupt.
      PARITY_ERR_INT_CLR       : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear frm_err_int_raw interrupt.
      FRM_ERR_INT_CLR          : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear rxfifo_ovf_int_raw interrupt.
      RXFIFO_OVF_INT_CLR       : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the dsr_chg_int_raw interrupt.
      DSR_CHG_INT_CLR          : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the cts_chg_int_raw interrupt.
      CTS_CHG_INT_CLR          : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the brk_det_int_raw interrupt.
      BRK_DET_INT_CLR          : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the rxfifo_tout_int_raw interrupt.
      RXFIFO_TOUT_INT_CLR      : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the sw_xon_int_raw interrupt.
      SW_XON_INT_CLR           : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the sw_xoff_int_raw interrupt.
      SW_XOFF_INT_CLR          : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the glitch_det_int_raw interrupt.
      GLITCH_DET_INT_CLR       : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the tx_brk_done_int_raw interrupt..
      TX_BRK_DONE_INT_CLR      : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the tx_brk_idle_done_int_raw
      --  interrupt.
      TX_BRK_IDLE_DONE_INT_CLR : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the tx_done_int_raw interrupt.
      TX_DONE_INT_CLR          : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the rs485_parity_err_int_raw
      --  interrupt.
      RS485_PARITY_ERR_INT_CLR : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the rs485_frm_err_int_raw
      --  interrupt.
      RS485_FRM_ERR_INT_CLR    : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the rs485_clash_int_raw interrupt.
      RS485_CLASH_INT_CLR      : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the at_cmd_char_det_int_raw
      --  interrupt.
      AT_CMD_CHAR_DET_INT_CLR  : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the uart_wakeup_int_raw interrupt.
      WAKEUP_INT_CLR           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_20_31           : SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      RXFIFO_FULL_INT_CLR      at 0 range 0 .. 0;
      TXFIFO_EMPTY_INT_CLR     at 0 range 1 .. 1;
      PARITY_ERR_INT_CLR       at 0 range 2 .. 2;
      FRM_ERR_INT_CLR          at 0 range 3 .. 3;
      RXFIFO_OVF_INT_CLR       at 0 range 4 .. 4;
      DSR_CHG_INT_CLR          at 0 range 5 .. 5;
      CTS_CHG_INT_CLR          at 0 range 6 .. 6;
      BRK_DET_INT_CLR          at 0 range 7 .. 7;
      RXFIFO_TOUT_INT_CLR      at 0 range 8 .. 8;
      SW_XON_INT_CLR           at 0 range 9 .. 9;
      SW_XOFF_INT_CLR          at 0 range 10 .. 10;
      GLITCH_DET_INT_CLR       at 0 range 11 .. 11;
      TX_BRK_DONE_INT_CLR      at 0 range 12 .. 12;
      TX_BRK_IDLE_DONE_INT_CLR at 0 range 13 .. 13;
      TX_DONE_INT_CLR          at 0 range 14 .. 14;
      RS485_PARITY_ERR_INT_CLR at 0 range 15 .. 15;
      RS485_FRM_ERR_INT_CLR    at 0 range 16 .. 16;
      RS485_CLASH_INT_CLR      at 0 range 17 .. 17;
      AT_CMD_CHAR_DET_INT_CLR  at 0 range 18 .. 18;
      WAKEUP_INT_CLR           at 0 range 19 .. 19;
      Reserved_20_31           at 0 range 20 .. 31;
   end record;

   --  Clock divider configuration
   type CLKDIV_Register is record
      --  The integral part of the frequency divider factor.
      CLKDIV         : SVD.UInt12 := 16#2B6#;
      --  unspecified
      Reserved_12_19 : SVD.Byte := 16#0#;
      --  The decimal part of the frequency divider factor.
      FRAG           : SVD.UInt4 := 16#0#;
      --  unspecified
      Reserved_24_31 : SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKDIV_Register use record
      CLKDIV         at 0 range 0 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      FRAG           at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Rx Filter configuration
   type RX_FILT_Register is record
      --  when input pulse width is lower than this value, the pulse is
      --  ignored.
      GLITCH_FILT    : SVD.Byte := 16#8#;
      --  Set this bit to enable Rx signal filter.
      GLITCH_FILT_EN : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_9_31  : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX_FILT_Register use record
      GLITCH_FILT    at 0 range 0 .. 7;
      GLITCH_FILT_EN at 0 range 8 .. 8;
      Reserved_9_31  at 0 range 9 .. 31;
   end record;

   --  UART status register
   type STATUS_Register is record
      --  Read-only. Stores the byte number of valid data in Rx-FIFO.
      RXFIFO_CNT     : SVD.UInt10;
      --  unspecified
      Reserved_10_12 : SVD.UInt3;
      --  Read-only. The register represent the level value of the internal
      --  uart dsr signal.
      DSRN           : SVD.Bit;
      --  Read-only. This register represent the level value of the internal
      --  uart cts signal.
      CTSN           : SVD.Bit;
      --  Read-only. This register represent the level value of the internal
      --  uart rxd signal.
      RXD            : SVD.Bit;
      --  Read-only. Stores the byte number of data in Tx-FIFO.
      TXFIFO_CNT     : SVD.UInt10;
      --  unspecified
      Reserved_26_28 : SVD.UInt3;
      --  Read-only. This bit represents the level of the internal uart dtr
      --  signal.
      DTRN           : SVD.Bit;
      --  Read-only. This bit represents the level of the internal uart rts
      --  signal.
      RTSN           : SVD.Bit;
      --  Read-only. This bit represents the level of the internal uart txd
      --  signal.
      TXD            : SVD.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      RXFIFO_CNT     at 0 range 0 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      DSRN           at 0 range 13 .. 13;
      CTSN           at 0 range 14 .. 14;
      RXD            at 0 range 15 .. 15;
      TXFIFO_CNT     at 0 range 16 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      DTRN           at 0 range 29 .. 29;
      RTSN           at 0 range 30 .. 30;
      TXD            at 0 range 31 .. 31;
   end record;

   --  a
   type CONF0_Register is record
      --  This register is used to configure the parity check mode.
      PARITY         : SVD.Bit := 16#0#;
      --  Set this bit to enable uart parity check.
      PARITY_EN      : SVD.Bit := 16#0#;
      --  This register is used to set the length of data.
      BIT_NUM        : SVD.UInt2 := 16#3#;
      --  This register is used to set the length of stop bit.
      STOP_BIT_NUM   : SVD.UInt2 := 16#1#;
      --  This register is used to configure the software rts signal which is
      --  used in software flow control.
      SW_RTS         : SVD.Bit := 16#0#;
      --  This register is used to configure the software dtr signal which is
      --  used in software flow control.
      SW_DTR         : SVD.Bit := 16#0#;
      --  Set this bit to enbale transmitter to send NULL when the process of
      --  sending data is done.
      TXD_BRK        : SVD.Bit := 16#0#;
      --  Set this bit to enable IrDA loopback mode.
      IRDA_DPLX      : SVD.Bit := 16#0#;
      --  This is the start enable bit for IrDA transmitter.
      IRDA_TX_EN     : SVD.Bit := 16#0#;
      --  1'h1: The IrDA transmitter's 11th bit is the same as 10th bit. 1'h0:
      --  Set IrDA transmitter's 11th bit to 0.
      IRDA_WCTL      : SVD.Bit := 16#0#;
      --  Set this bit to invert the level of IrDA transmitter.
      IRDA_TX_INV    : SVD.Bit := 16#0#;
      --  Set this bit to invert the level of IrDA receiver.
      IRDA_RX_INV    : SVD.Bit := 16#0#;
      --  Set this bit to enable uart loopback test mode.
      LOOPBACK       : SVD.Bit := 16#0#;
      --  Set this bit to enable flow control function for transmitter.
      TX_FLOW_EN     : SVD.Bit := 16#0#;
      --  Set this bit to enable IrDA protocol.
      IRDA_EN        : SVD.Bit := 16#0#;
      --  Set this bit to reset the uart receive-FIFO.
      RXFIFO_RST     : SVD.Bit := 16#0#;
      --  Set this bit to reset the uart transmit-FIFO.
      TXFIFO_RST     : SVD.Bit := 16#0#;
      --  Set this bit to inverse the level value of uart rxd signal.
      RXD_INV        : SVD.Bit := 16#0#;
      --  Set this bit to inverse the level value of uart cts signal.
      CTS_INV        : SVD.Bit := 16#0#;
      --  Set this bit to inverse the level value of uart dsr signal.
      DSR_INV        : SVD.Bit := 16#0#;
      --  Set this bit to inverse the level value of uart txd signal.
      TXD_INV        : SVD.Bit := 16#0#;
      --  Set this bit to inverse the level value of uart rts signal.
      RTS_INV        : SVD.Bit := 16#0#;
      --  Set this bit to inverse the level value of uart dtr signal.
      DTR_INV        : SVD.Bit := 16#0#;
      --  1'h1: Force clock on for register. 1'h0: Support clock only when
      --  application writes registers.
      CLK_EN         : SVD.Bit := 16#0#;
      --  1'h1: Receiver stops storing data into FIFO when data is wrong. 1'h0:
      --  Receiver stores the data even if the received data is wrong.
      ERR_WR_MASK    : SVD.Bit := 16#0#;
      --  This is the enable bit for detecting baudrate.
      AUTOBAUD_EN    : SVD.Bit := 16#0#;
      --  UART memory clock gate enable signal.
      MEM_CLK_EN     : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_29_31 : SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF0_Register use record
      PARITY         at 0 range 0 .. 0;
      PARITY_EN      at 0 range 1 .. 1;
      BIT_NUM        at 0 range 2 .. 3;
      STOP_BIT_NUM   at 0 range 4 .. 5;
      SW_RTS         at 0 range 6 .. 6;
      SW_DTR         at 0 range 7 .. 7;
      TXD_BRK        at 0 range 8 .. 8;
      IRDA_DPLX      at 0 range 9 .. 9;
      IRDA_TX_EN     at 0 range 10 .. 10;
      IRDA_WCTL      at 0 range 11 .. 11;
      IRDA_TX_INV    at 0 range 12 .. 12;
      IRDA_RX_INV    at 0 range 13 .. 13;
      LOOPBACK       at 0 range 14 .. 14;
      TX_FLOW_EN     at 0 range 15 .. 15;
      IRDA_EN        at 0 range 16 .. 16;
      RXFIFO_RST     at 0 range 17 .. 17;
      TXFIFO_RST     at 0 range 18 .. 18;
      RXD_INV        at 0 range 19 .. 19;
      CTS_INV        at 0 range 20 .. 20;
      DSR_INV        at 0 range 21 .. 21;
      TXD_INV        at 0 range 22 .. 22;
      RTS_INV        at 0 range 23 .. 23;
      DTR_INV        at 0 range 24 .. 24;
      CLK_EN         at 0 range 25 .. 25;
      ERR_WR_MASK    at 0 range 26 .. 26;
      AUTOBAUD_EN    at 0 range 27 .. 27;
      MEM_CLK_EN     at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Configuration register 1
   type CONF1_Register is record
      --  It will produce rxfifo_full_int interrupt when receiver receives more
      --  data than this register value.
      RXFIFO_FULL_THRHD  : SVD.UInt10 := 16#60#;
      --  It will produce txfifo_empty_int interrupt when the data amount in
      --  Tx-FIFO is less than this register value.
      TXFIFO_EMPTY_THRHD : SVD.UInt10 := 16#60#;
      --  Disable UART Rx data overflow detect.
      DIS_RX_DAT_OVF     : SVD.Bit := 16#0#;
      --  Set this bit to stop accumulating idle_cnt when hardware flow control
      --  works.
      RX_TOUT_FLOW_DIS   : SVD.Bit := 16#0#;
      --  This is the flow enable bit for UART receiver.
      RX_FLOW_EN         : SVD.Bit := 16#0#;
      --  This is the enble bit for uart receiver's timeout function.
      RX_TOUT_EN         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_24_31     : SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF1_Register use record
      RXFIFO_FULL_THRHD  at 0 range 0 .. 9;
      TXFIFO_EMPTY_THRHD at 0 range 10 .. 19;
      DIS_RX_DAT_OVF     at 0 range 20 .. 20;
      RX_TOUT_FLOW_DIS   at 0 range 21 .. 21;
      RX_FLOW_EN         at 0 range 22 .. 22;
      RX_TOUT_EN         at 0 range 23 .. 23;
      Reserved_24_31     at 0 range 24 .. 31;
   end record;

   --  Autobaud minimum low pulse duration register
   type LOWPULSE_Register is record
      --  Read-only. This register stores the value of the minimum duration
      --  time of the low level pulse. It is used in baud rate-detect process.
      MIN_CNT        : SVD.UInt12;
      --  unspecified
      Reserved_12_31 : SVD.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOWPULSE_Register use record
      MIN_CNT        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Autobaud minimum high pulse duration register
   type HIGHPULSE_Register is record
      --  Read-only. This register stores the value of the maxinum duration
      --  time for the high level pulse. It is used in baud rate-detect
      --  process.
      MIN_CNT        : SVD.UInt12;
      --  unspecified
      Reserved_12_31 : SVD.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HIGHPULSE_Register use record
      MIN_CNT        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Autobaud edge change count register
   type RXD_CNT_Register is record
      --  Read-only. This register stores the count of rxd edge change. It is
      --  used in baud rate-detect process.
      RXD_EDGE_CNT   : SVD.UInt10;
      --  unspecified
      Reserved_10_31 : SVD.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXD_CNT_Register use record
      RXD_EDGE_CNT   at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Software flow-control configuration
   type FLOW_CONF_Register is record
      --  Set this bit to enable software flow control. It is used with
      --  register sw_xon or sw_xoff.
      SW_FLOW_CON_EN : SVD.Bit := 16#0#;
      --  Set this bit to remove flow control char from the received data.
      XONOFF_DEL     : SVD.Bit := 16#0#;
      --  Set this bit to enable the transmitter to go on sending data.
      FORCE_XON      : SVD.Bit := 16#0#;
      --  Set this bit to stop the transmitter from sending data.
      FORCE_XOFF     : SVD.Bit := 16#0#;
      --  Set this bit to send Xon char. It is cleared by hardware
      --  automatically.
      SEND_XON       : SVD.Bit := 16#0#;
      --  Set this bit to send Xoff char. It is cleared by hardware
      --  automatically.
      SEND_XOFF      : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31  : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLOW_CONF_Register use record
      SW_FLOW_CON_EN at 0 range 0 .. 0;
      XONOFF_DEL     at 0 range 1 .. 1;
      FORCE_XON      at 0 range 2 .. 2;
      FORCE_XOFF     at 0 range 3 .. 3;
      SEND_XON       at 0 range 4 .. 4;
      SEND_XOFF      at 0 range 5 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   --  Sleep-mode configuration
   type SLEEP_CONF_Register is record
      --  The uart is activated from light sleeping mode when the input rxd
      --  edge changes more times than this register value.
      ACTIVE_THRESHOLD : SVD.UInt10 := 16#F0#;
      --  unspecified
      Reserved_10_31   : SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLEEP_CONF_Register use record
      ACTIVE_THRESHOLD at 0 range 0 .. 9;
      Reserved_10_31   at 0 range 10 .. 31;
   end record;

   --  Software flow-control character configuration
   type SWFC_CONF0_Register is record
      --  When the data amount in Rx-FIFO is more than this register value with
      --  uart_sw_flow_con_en set to 1, it will send a Xoff char.
      XOFF_THRESHOLD : SVD.UInt10 := 16#E0#;
      --  This register stores the Xoff flow control char.
      XOFF_CHAR      : SVD.Byte := 16#13#;
      --  unspecified
      Reserved_18_31 : SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWFC_CONF0_Register use record
      XOFF_THRESHOLD at 0 range 0 .. 9;
      XOFF_CHAR      at 0 range 10 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Software flow-control character configuration
   type SWFC_CONF1_Register is record
      --  When the data amount in Rx-FIFO is less than this register value with
      --  uart_sw_flow_con_en set to 1, it will send a Xon char.
      XON_THRESHOLD  : SVD.UInt10 := 16#0#;
      --  This register stores the Xon flow control char.
      XON_CHAR       : SVD.Byte := 16#11#;
      --  unspecified
      Reserved_18_31 : SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWFC_CONF1_Register use record
      XON_THRESHOLD  at 0 range 0 .. 9;
      XON_CHAR       at 0 range 10 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Tx Break character configuration
   type TXBRK_CONF_Register is record
      --  This register is used to configure the number of 0 to be sent after
      --  the process of sending data is done. It is active when txd_brk is set
      --  to 1.
      TX_BRK_NUM    : SVD.Byte := 16#A#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXBRK_CONF_Register use record
      TX_BRK_NUM    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Frame-end idle configuration
   type IDLE_CONF_Register is record
      --  It will produce frame end signal when receiver takes more time to
      --  receive one byte data than this register value.
      RX_IDLE_THRHD  : SVD.UInt10 := 16#100#;
      --  This register is used to configure the duration time between
      --  transfers.
      TX_IDLE_NUM    : SVD.UInt10 := 16#100#;
      --  unspecified
      Reserved_20_31 : SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDLE_CONF_Register use record
      RX_IDLE_THRHD  at 0 range 0 .. 9;
      TX_IDLE_NUM    at 0 range 10 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RS485 mode configuration
   type RS485_CONF_Register is record
      --  Set this bit to choose the rs485 mode.
      RS485_EN         : SVD.Bit := 16#0#;
      --  Set this bit to delay the stop bit by 1 bit.
      DL0_EN           : SVD.Bit := 16#0#;
      --  Set this bit to delay the stop bit by 1 bit.
      DL1_EN           : SVD.Bit := 16#0#;
      --  Set this bit to enable receiver could receive data when the
      --  transmitter is transmitting data in rs485 mode.
      RS485TX_RX_EN    : SVD.Bit := 16#0#;
      --  1'h1: enable rs485 transmitter to send data when rs485 receiver line
      --  is busy.
      RS485RXBY_TX_EN  : SVD.Bit := 16#0#;
      --  This register is used to delay the receiver's internal data signal.
      RS485_RX_DLY_NUM : SVD.Bit := 16#0#;
      --  This register is used to delay the transmitter's internal data
      --  signal.
      RS485_TX_DLY_NUM : SVD.UInt4 := 16#0#;
      --  unspecified
      Reserved_10_31   : SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RS485_CONF_Register use record
      RS485_EN         at 0 range 0 .. 0;
      DL0_EN           at 0 range 1 .. 1;
      DL1_EN           at 0 range 2 .. 2;
      RS485TX_RX_EN    at 0 range 3 .. 3;
      RS485RXBY_TX_EN  at 0 range 4 .. 4;
      RS485_RX_DLY_NUM at 0 range 5 .. 5;
      RS485_TX_DLY_NUM at 0 range 6 .. 9;
      Reserved_10_31   at 0 range 10 .. 31;
   end record;

   --  Pre-sequence timing configuration
   type AT_CMD_PRECNT_Register is record
      --  This register is used to configure the idle duration time before the
      --  first at_cmd is received by receiver.
      PRE_IDLE_NUM   : SVD.UInt16 := 16#901#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AT_CMD_PRECNT_Register use record
      PRE_IDLE_NUM   at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Post-sequence timing configuration
   type AT_CMD_POSTCNT_Register is record
      --  This register is used to configure the duration time between the last
      --  at_cmd and the next data.
      POST_IDLE_NUM  : SVD.UInt16 := 16#901#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AT_CMD_POSTCNT_Register use record
      POST_IDLE_NUM  at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Timeout configuration
   type AT_CMD_GAPTOUT_Register is record
      --  This register is used to configure the duration time between the
      --  at_cmd chars.
      RX_GAP_TOUT    : SVD.UInt16 := 16#B#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AT_CMD_GAPTOUT_Register use record
      RX_GAP_TOUT    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  AT escape sequence detection configuration
   type AT_CMD_CHAR_Register is record
      --  This register is used to configure the content of at_cmd char.
      AT_CMD_CHAR    : SVD.Byte := 16#2B#;
      --  This register is used to configure the num of continuous at_cmd chars
      --  received by receiver.
      CHAR_NUM       : SVD.Byte := 16#3#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AT_CMD_CHAR_Register use record
      AT_CMD_CHAR    at 0 range 0 .. 7;
      CHAR_NUM       at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  UART threshold and allocation configuration
   type MEM_CONF_Register is record
      --  unspecified
      Reserved_0_0   : SVD.Bit := 16#0#;
      --  This register is used to configure the amount of mem allocated for
      --  receive-FIFO. The default number is 128 bytes.
      RX_SIZE        : SVD.UInt3 := 16#1#;
      --  This register is used to configure the amount of mem allocated for
      --  transmit-FIFO. The default number is 128 bytes.
      TX_SIZE        : SVD.UInt3 := 16#1#;
      --  This register is used to configure the maximum amount of data that
      --  can be received when hardware flow control works.
      RX_FLOW_THRHD  : SVD.UInt10 := 16#0#;
      --  This register is used to configure the threshold time that receiver
      --  takes to receive one byte. The rxfifo_tout_int interrupt will be
      --  trigger when the receiver takes more time to receive one byte with
      --  rx_tout_en set to 1.
      RX_TOUT_THRHD  : SVD.UInt10 := 16#A#;
      --  Set this bit to force power down UART memory.
      MEM_FORCE_PD   : SVD.Bit := 16#0#;
      --  Set this bit to force power up UART memory.
      MEM_FORCE_PU   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_29_31 : SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_CONF_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RX_SIZE        at 0 range 1 .. 3;
      TX_SIZE        at 0 range 4 .. 6;
      RX_FLOW_THRHD  at 0 range 7 .. 16;
      RX_TOUT_THRHD  at 0 range 17 .. 26;
      MEM_FORCE_PD   at 0 range 27 .. 27;
      MEM_FORCE_PU   at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Tx-FIFO write and read offset address.
   type MEM_TX_STATUS_Register is record
      --  Read-only. This register stores the offset address in Tx-FIFO when
      --  software writes Tx-FIFO via APB.
      APB_TX_WADDR   : SVD.UInt10;
      --  unspecified
      Reserved_10_10 : SVD.Bit;
      --  Read-only. This register stores the offset address in Tx-FIFO when
      --  Tx-FSM reads data via Tx-FIFO_Ctrl.
      TX_RADDR       : SVD.UInt10;
      --  unspecified
      Reserved_21_31 : SVD.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_TX_STATUS_Register use record
      APB_TX_WADDR   at 0 range 0 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TX_RADDR       at 0 range 11 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  Rx-FIFO write and read offset address.
   type MEM_RX_STATUS_Register is record
      --  Read-only. This register stores the offset address in RX-FIFO when
      --  software reads data from Rx-FIFO via APB. UART0 is 10'h200. UART1 is
      --  10'h280. UART2 is 10'h300.
      APB_RX_RADDR   : SVD.UInt10;
      --  unspecified
      Reserved_10_10 : SVD.Bit;
      --  Read-only. This register stores the offset address in Rx-FIFO when
      --  Rx-FIFO_Ctrl writes Rx-FIFO. UART0 is 10'h200. UART1 is 10'h280.
      --  UART2 is 10'h300.
      RX_WADDR       : SVD.UInt10;
      --  unspecified
      Reserved_21_31 : SVD.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_RX_STATUS_Register use record
      APB_RX_RADDR   at 0 range 0 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      RX_WADDR       at 0 range 11 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  UART transmit and receive status.
   type FSM_STATUS_Register is record
      --  Read-only. This is the status register of receiver.
      ST_URX_OUT    : SVD.UInt4;
      --  Read-only. This is the status register of transmitter.
      ST_UTX_OUT    : SVD.UInt4;
      --  unspecified
      Reserved_8_31 : SVD.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FSM_STATUS_Register use record
      ST_URX_OUT    at 0 range 0 .. 3;
      ST_UTX_OUT    at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Autobaud high pulse register
   type POSPULSE_Register is record
      --  Read-only. This register stores the minimal input clock count between
      --  two positive edges. It is used in boudrate-detect process.
      POSEDGE_MIN_CNT : SVD.UInt12;
      --  unspecified
      Reserved_12_31  : SVD.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POSPULSE_Register use record
      POSEDGE_MIN_CNT at 0 range 0 .. 11;
      Reserved_12_31  at 0 range 12 .. 31;
   end record;

   --  Autobaud low pulse register
   type NEGPULSE_Register is record
      --  Read-only. This register stores the minimal input clock count between
      --  two negative edges. It is used in boudrate-detect process.
      NEGEDGE_MIN_CNT : SVD.UInt12;
      --  unspecified
      Reserved_12_31  : SVD.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NEGPULSE_Register use record
      NEGEDGE_MIN_CNT at 0 range 0 .. 11;
      Reserved_12_31  at 0 range 12 .. 31;
   end record;

   --  UART core clock configuration
   type CLK_CONF_Register is record
      --  The denominator of the frequency divider factor.
      SCLK_DIV_B     : SVD.UInt6 := 16#0#;
      --  The numerator of the frequency divider factor.
      SCLK_DIV_A     : SVD.UInt6 := 16#0#;
      --  The integral part of the frequency divider factor.
      SCLK_DIV_NUM   : SVD.Byte := 16#1#;
      --  UART clock source select. 1: 80Mhz, 2: 8Mhz, 3: XTAL.
      SCLK_SEL       : SVD.UInt2 := 16#3#;
      --  Set this bit to enable UART Tx/Rx clock.
      SCLK_EN        : SVD.Bit := 16#1#;
      --  Write 1 then write 0 to this bit, reset UART Tx/Rx.
      RST_CORE       : SVD.Bit := 16#0#;
      --  Set this bit to enable UART Tx clock.
      TX_SCLK_EN     : SVD.Bit := 16#1#;
      --  Set this bit to enable UART Rx clock.
      RX_SCLK_EN     : SVD.Bit := 16#1#;
      --  Write 1 then write 0 to this bit, reset UART Tx.
      TX_RST_CORE    : SVD.Bit := 16#0#;
      --  Write 1 then write 0 to this bit, reset UART Rx.
      RX_RST_CORE    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_28_31 : SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF_Register use record
      SCLK_DIV_B     at 0 range 0 .. 5;
      SCLK_DIV_A     at 0 range 6 .. 11;
      SCLK_DIV_NUM   at 0 range 12 .. 19;
      SCLK_SEL       at 0 range 20 .. 21;
      SCLK_EN        at 0 range 22 .. 22;
      RST_CORE       at 0 range 23 .. 23;
      TX_SCLK_EN     at 0 range 24 .. 24;
      RX_SCLK_EN     at 0 range 25 .. 25;
      TX_RST_CORE    at 0 range 26 .. 26;
      RX_RST_CORE    at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  UART ID register
   type ID_Register is record
      --  This register is used to configure the uart_id.
      ID         : SVD.UInt30 := 16#500#;
      --  This bit used to select synchronize mode. 1: Registers are auto
      --  synchronized into UART Core clock and UART core should be keep the
      --  same with APB clock. 0: After configure registers, software needs to
      --  write 1 to UART_REG_UPDATE to synchronize registers.
      HIGH_SPEED : SVD.Bit := 16#1#;
      --  Software write 1 would synchronize registers into UART Core clock
      --  domain and would be cleared by hardware after synchronization is
      --  done.
      REG_UPDATE : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ID_Register use record
      ID         at 0 range 0 .. 29;
      HIGH_SPEED at 0 range 30 .. 30;
      REG_UPDATE at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  UART (Universal Asynchronous Receiver-Transmitter) Controller 0
   type UART_Peripheral is record
      --  FIFO data register
      FIFO           : aliased FIFO_Register;
      --  Raw interrupt status
      INT_RAW        : aliased INT_RAW_Register;
      --  Masked interrupt status
      INT_ST         : aliased INT_ST_Register;
      --  Interrupt enable bits
      INT_ENA        : aliased INT_ENA_Register;
      --  Interrupt clear bits
      INT_CLR        : aliased INT_CLR_Register;
      --  Clock divider configuration
      CLKDIV         : aliased CLKDIV_Register;
      --  Rx Filter configuration
      RX_FILT        : aliased RX_FILT_Register;
      --  UART status register
      STATUS         : aliased STATUS_Register;
      --  a
      CONF0          : aliased CONF0_Register;
      --  Configuration register 1
      CONF1          : aliased CONF1_Register;
      --  Autobaud minimum low pulse duration register
      LOWPULSE       : aliased LOWPULSE_Register;
      --  Autobaud minimum high pulse duration register
      HIGHPULSE      : aliased HIGHPULSE_Register;
      --  Autobaud edge change count register
      RXD_CNT        : aliased RXD_CNT_Register;
      --  Software flow-control configuration
      FLOW_CONF      : aliased FLOW_CONF_Register;
      --  Sleep-mode configuration
      SLEEP_CONF     : aliased SLEEP_CONF_Register;
      --  Software flow-control character configuration
      SWFC_CONF0     : aliased SWFC_CONF0_Register;
      --  Software flow-control character configuration
      SWFC_CONF1     : aliased SWFC_CONF1_Register;
      --  Tx Break character configuration
      TXBRK_CONF     : aliased TXBRK_CONF_Register;
      --  Frame-end idle configuration
      IDLE_CONF      : aliased IDLE_CONF_Register;
      --  RS485 mode configuration
      RS485_CONF     : aliased RS485_CONF_Register;
      --  Pre-sequence timing configuration
      AT_CMD_PRECNT  : aliased AT_CMD_PRECNT_Register;
      --  Post-sequence timing configuration
      AT_CMD_POSTCNT : aliased AT_CMD_POSTCNT_Register;
      --  Timeout configuration
      AT_CMD_GAPTOUT : aliased AT_CMD_GAPTOUT_Register;
      --  AT escape sequence detection configuration
      AT_CMD_CHAR    : aliased AT_CMD_CHAR_Register;
      --  UART threshold and allocation configuration
      MEM_CONF       : aliased MEM_CONF_Register;
      --  Tx-FIFO write and read offset address.
      MEM_TX_STATUS  : aliased MEM_TX_STATUS_Register;
      --  Rx-FIFO write and read offset address.
      MEM_RX_STATUS  : aliased MEM_RX_STATUS_Register;
      --  UART transmit and receive status.
      FSM_STATUS     : aliased FSM_STATUS_Register;
      --  Autobaud high pulse register
      POSPULSE       : aliased POSPULSE_Register;
      --  Autobaud low pulse register
      NEGPULSE       : aliased NEGPULSE_Register;
      --  UART core clock configuration
      CLK_CONF       : aliased CLK_CONF_Register;
      --  UART Version register
      DATE           : aliased SVD.UInt32;
      --  UART ID register
      ID             : aliased ID_Register;
   end record
     with Volatile;

   for UART_Peripheral use record
      FIFO           at 16#0# range 0 .. 31;
      INT_RAW        at 16#4# range 0 .. 31;
      INT_ST         at 16#8# range 0 .. 31;
      INT_ENA        at 16#C# range 0 .. 31;
      INT_CLR        at 16#10# range 0 .. 31;
      CLKDIV         at 16#14# range 0 .. 31;
      RX_FILT        at 16#18# range 0 .. 31;
      STATUS         at 16#1C# range 0 .. 31;
      CONF0          at 16#20# range 0 .. 31;
      CONF1          at 16#24# range 0 .. 31;
      LOWPULSE       at 16#28# range 0 .. 31;
      HIGHPULSE      at 16#2C# range 0 .. 31;
      RXD_CNT        at 16#30# range 0 .. 31;
      FLOW_CONF      at 16#34# range 0 .. 31;
      SLEEP_CONF     at 16#38# range 0 .. 31;
      SWFC_CONF0     at 16#3C# range 0 .. 31;
      SWFC_CONF1     at 16#40# range 0 .. 31;
      TXBRK_CONF     at 16#44# range 0 .. 31;
      IDLE_CONF      at 16#48# range 0 .. 31;
      RS485_CONF     at 16#4C# range 0 .. 31;
      AT_CMD_PRECNT  at 16#50# range 0 .. 31;
      AT_CMD_POSTCNT at 16#54# range 0 .. 31;
      AT_CMD_GAPTOUT at 16#58# range 0 .. 31;
      AT_CMD_CHAR    at 16#5C# range 0 .. 31;
      MEM_CONF       at 16#60# range 0 .. 31;
      MEM_TX_STATUS  at 16#64# range 0 .. 31;
      MEM_RX_STATUS  at 16#68# range 0 .. 31;
      FSM_STATUS     at 16#6C# range 0 .. 31;
      POSPULSE       at 16#70# range 0 .. 31;
      NEGPULSE       at 16#74# range 0 .. 31;
      CLK_CONF       at 16#78# range 0 .. 31;
      DATE           at 16#7C# range 0 .. 31;
      ID             at 16#80# range 0 .. 31;
   end record;

   --  UART (Universal Asynchronous Receiver-Transmitter) Controller 0
   UART0_Periph : aliased UART_Peripheral
     with Import, Address => UART0_Base;

   --  UART (Universal Asynchronous Receiver-Transmitter) Controller 1
   UART1_Periph : aliased UART_Peripheral
     with Import, Address => UART1_Base;

   --  UART (Universal Asynchronous Receiver-Transmitter) Controller 2
   UART2_Periph : aliased UART_Peripheral
     with Import, Address => UART2_Base;

end SVD.UART;
