pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.DMA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Configure 0 register of Rx channel 0
   type IN_CONF0_CH_Register is record
      --  This bit is used to reset DMA channel 0 Rx FSM and Rx FIFO pointer.
      IN_RST           : SVD.Bit := 16#0#;
      --  reserved
      IN_LOOP_TEST     : SVD.Bit := 16#0#;
      --  Set this bit to 1 to enable INCR burst transfer for Rx channel 0
      --  reading link descriptor when accessing internal SRAM.
      INDSCR_BURST_EN  : SVD.Bit := 16#0#;
      --  Set this bit to 1 to enable INCR burst transfer for Rx channel 0
      --  receiving data when accessing internal SRAM.
      IN_DATA_BURST_EN : SVD.Bit := 16#0#;
      --  Set this bit 1 to enable automatic transmitting data from memory to
      --  memory via DMA.
      MEM_TRANS_EN     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_5_31    : SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_CONF0_CH_Register use record
      IN_RST           at 0 range 0 .. 0;
      IN_LOOP_TEST     at 0 range 1 .. 1;
      INDSCR_BURST_EN  at 0 range 2 .. 2;
      IN_DATA_BURST_EN at 0 range 3 .. 3;
      MEM_TRANS_EN     at 0 range 4 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   --  Configure 1 register of Rx channel 0
   type IN_CONF1_CH_Register is record
      --  This register is used to generate the INFIFO_FULL_WM_INT interrupt
      --  when Rx channel 0 received byte number in Rx FIFO is up to the value
      --  of the register.
      DMA_INFIFO_FULL_THRS : SVD.UInt12 := 16#C#;
      --  Set this bit to enable checking the owner attribute of the link
      --  descriptor.
      IN_CHECK_OWNER       : SVD.Bit := 16#0#;
      --  Block size of Rx channel 0 when DMA access external SRAM. 0: 16 bytes
      --  1: 32 bytes 2/3:reserved
      IN_EXT_MEM_BK_SIZE   : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_15_31       : SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_CONF1_CH_Register use record
      DMA_INFIFO_FULL_THRS at 0 range 0 .. 11;
      IN_CHECK_OWNER       at 0 range 12 .. 12;
      IN_EXT_MEM_BK_SIZE   at 0 range 13 .. 14;
      Reserved_15_31       at 0 range 15 .. 31;
   end record;

   --  Raw status interrupt of Rx channel 0
   type IN_INT_RAW_CH_Register is record
      --  The raw interrupt bit turns to high level when the last data pointed
      --  by one inlink descriptor has been received for Rx channel 0.
      IN_DONE        : SVD.Bit := 16#0#;
      --  The raw interrupt bit turns to high level when the last data pointed
      --  by one inlink descriptor has been received for Rx channel 0. For
      --  UHCI0, the raw interrupt bit turns to high level when the last data
      --  pointed by one inlink descriptor has been received and no data error
      --  is detected for Rx channel 0.
      IN_SUC_EOF     : SVD.Bit := 16#0#;
      --  The raw interrupt bit turns to high level when data error is detected
      --  only in the case that the peripheral is UHCI0 for Rx channel 0. For
      --  other peripherals, this raw interrupt is reserved.
      IN_ERR_EOF     : SVD.Bit := 16#0#;
      --  The raw interrupt bit turns to high level when detecting inlink
      --  descriptor error, including owner error, the second and third word
      --  error of inlink descriptor for Rx channel 0.
      IN_DSCR_ERR    : SVD.Bit := 16#0#;
      --  The raw interrupt bit turns to high level when Rx buffer pointed by
      --  inlink is full and receiving data is not completed, but there is no
      --  more inlink for Rx channel 0.
      IN_DSCR_EMPTY  : SVD.Bit := 16#0#;
      --  The raw interrupt bit turns to high level when received data byte
      --  number is up to threshold configured by REG_DMA_INFIFO_FULL_THRS_CH0
      --  in Rx FIFO of channel 0.
      INFIFO_FULL_WM : SVD.Bit := 16#0#;
      --  This raw interrupt bit turns to high level when level 1 fifo of Rx
      --  channel 0 is overflow.
      INFIFO_OVF_L1  : SVD.Bit := 16#0#;
      --  This raw interrupt bit turns to high level when level 1 fifo of Rx
      --  channel 0 is underflow.
      INFIFO_UDF_L1  : SVD.Bit := 16#0#;
      --  This raw interrupt bit turns to high level when level 3 fifo of Rx
      --  channel 0 is overflow.
      INFIFO_OVF_L3  : SVD.Bit := 16#0#;
      --  This raw interrupt bit turns to high level when level 3 fifo of Rx
      --  channel 0 is underflow.
      INFIFO_UDF_L3  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_31 : SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_INT_RAW_CH_Register use record
      IN_DONE        at 0 range 0 .. 0;
      IN_SUC_EOF     at 0 range 1 .. 1;
      IN_ERR_EOF     at 0 range 2 .. 2;
      IN_DSCR_ERR    at 0 range 3 .. 3;
      IN_DSCR_EMPTY  at 0 range 4 .. 4;
      INFIFO_FULL_WM at 0 range 5 .. 5;
      INFIFO_OVF_L1  at 0 range 6 .. 6;
      INFIFO_UDF_L1  at 0 range 7 .. 7;
      INFIFO_OVF_L3  at 0 range 8 .. 8;
      INFIFO_UDF_L3  at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Masked interrupt of Rx channel 0
   type IN_INT_ST_CH_Register is record
      --  Read-only. The raw interrupt status bit for the IN_DONE_CH_INT
      --  interrupt.
      IN_DONE        : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the IN_SUC_EOF_CH_INT
      --  interrupt.
      IN_SUC_EOF     : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the IN_ERR_EOF_CH_INT
      --  interrupt.
      IN_ERR_EOF     : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the IN_DSCR_ERR_CH_INT
      --  interrupt.
      IN_DSCR_ERR    : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the IN_DSCR_EMPTY_CH_INT
      --  interrupt.
      IN_DSCR_EMPTY  : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the INFIFO_FULL_WM_CH_INT
      --  interrupt.
      INFIFO_FULL_WM : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the INFIFO_OVF_L1_CH_INT
      --  interrupt.
      INFIFO_OVF_L1  : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the INFIFO_UDF_L1_CH_INT
      --  interrupt.
      INFIFO_UDF_L1  : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the INFIFO_OVF_L3_CH_INT
      --  interrupt.
      INFIFO_OVF_L3  : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the INFIFO_UDF_L3_CH_INT
      --  interrupt.
      INFIFO_UDF_L3  : SVD.Bit;
      --  unspecified
      Reserved_10_31 : SVD.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_INT_ST_CH_Register use record
      IN_DONE        at 0 range 0 .. 0;
      IN_SUC_EOF     at 0 range 1 .. 1;
      IN_ERR_EOF     at 0 range 2 .. 2;
      IN_DSCR_ERR    at 0 range 3 .. 3;
      IN_DSCR_EMPTY  at 0 range 4 .. 4;
      INFIFO_FULL_WM at 0 range 5 .. 5;
      INFIFO_OVF_L1  at 0 range 6 .. 6;
      INFIFO_UDF_L1  at 0 range 7 .. 7;
      INFIFO_OVF_L3  at 0 range 8 .. 8;
      INFIFO_UDF_L3  at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Interrupt enable bits of Rx channel 0
   type IN_INT_ENA_CH_Register is record
      --  The interrupt enable bit for the IN_DONE_CH_INT interrupt.
      IN_DONE        : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the IN_SUC_EOF_CH_INT interrupt.
      IN_SUC_EOF     : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the IN_ERR_EOF_CH_INT interrupt.
      IN_ERR_EOF     : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the IN_DSCR_ERR_CH_INT interrupt.
      IN_DSCR_ERR    : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the IN_DSCR_EMPTY_CH_INT interrupt.
      IN_DSCR_EMPTY  : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the INFIFO_FULL_WM_CH_INT interrupt.
      INFIFO_FULL_WM : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the INFIFO_OVF_L1_CH_INT interrupt.
      INFIFO_OVF_L1  : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the INFIFO_UDF_L1_CH_INT interrupt.
      INFIFO_UDF_L1  : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the INFIFO_OVF_L3_CH_INT interrupt.
      INFIFO_OVF_L3  : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the INFIFO_UDF_L3_CH_INT interrupt.
      INFIFO_UDF_L3  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_31 : SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_INT_ENA_CH_Register use record
      IN_DONE        at 0 range 0 .. 0;
      IN_SUC_EOF     at 0 range 1 .. 1;
      IN_ERR_EOF     at 0 range 2 .. 2;
      IN_DSCR_ERR    at 0 range 3 .. 3;
      IN_DSCR_EMPTY  at 0 range 4 .. 4;
      INFIFO_FULL_WM at 0 range 5 .. 5;
      INFIFO_OVF_L1  at 0 range 6 .. 6;
      INFIFO_UDF_L1  at 0 range 7 .. 7;
      INFIFO_OVF_L3  at 0 range 8 .. 8;
      INFIFO_UDF_L3  at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Interrupt clear bits of Rx channel 0
   type IN_INT_CLR_CH_Register is record
      --  Write-only. Set this bit to clear the IN_DONE_CH_INT interrupt.
      IN_DONE            : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the IN_SUC_EOF_CH_INT interrupt.
      IN_SUC_EOF         : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the IN_ERR_EOF_CH_INT interrupt.
      IN_ERR_EOF         : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the IN_DSCR_ERR_CH_INT interrupt.
      IN_DSCR_ERR        : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the IN_DSCR_EMPTY_CH_INT interrupt.
      IN_DSCR_EMPTY      : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the INFIFO_FULL_WM_CH_INT
      --  interrupt.
      DMA_INFIFO_FULL_WM : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the INFIFO_OVF_L1_CH_INT interrupt.
      INFIFO_OVF_L1      : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the INFIFO_UDF_L1_CH_INT interrupt.
      INFIFO_UDF_L1      : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the INFIFO_OVF_L3_CH_INT interrupt.
      INFIFO_OVF_L3      : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the INFIFO_UDF_L3_CH_INT interrupt.
      INFIFO_UDF_L3      : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_31     : SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_INT_CLR_CH_Register use record
      IN_DONE            at 0 range 0 .. 0;
      IN_SUC_EOF         at 0 range 1 .. 1;
      IN_ERR_EOF         at 0 range 2 .. 2;
      IN_DSCR_ERR        at 0 range 3 .. 3;
      IN_DSCR_EMPTY      at 0 range 4 .. 4;
      DMA_INFIFO_FULL_WM at 0 range 5 .. 5;
      INFIFO_OVF_L1      at 0 range 6 .. 6;
      INFIFO_UDF_L1      at 0 range 7 .. 7;
      INFIFO_OVF_L3      at 0 range 8 .. 8;
      INFIFO_UDF_L3      at 0 range 9 .. 9;
      Reserved_10_31     at 0 range 10 .. 31;
   end record;

   --  Receive FIFO status of Rx channel 0
   type INFIFO_STATUS_CH_Register is record
      --  Read-only. L1 Rx FIFO full signal for Rx channel 0.
      INFIFO_FULL_L1        : SVD.Bit;
      --  Read-only. L1 Rx FIFO empty signal for Rx channel 0.
      INFIFO_EMPTY_L1       : SVD.Bit;
      --  Read-only. L2 Rx FIFO full signal for Rx channel 0.
      INFIFO_FULL_L2        : SVD.Bit;
      --  Read-only. L2 Rx FIFO empty signal for Rx channel 0.
      INFIFO_EMPTY_L2       : SVD.Bit;
      --  Read-only. L3 Rx FIFO full signal for Rx channel 0.
      INFIFO_FULL_L3        : SVD.Bit;
      --  Read-only. L3 Rx FIFO empty signal for Rx channel 0.
      INFIFO_EMPTY_L3       : SVD.Bit;
      --  Read-only. The register stores the byte number of the data in L1 Rx
      --  FIFO for Rx channel 0.
      INFIFO_CNT_L1         : SVD.UInt6;
      --  Read-only. The register stores the byte number of the data in L2 Rx
      --  FIFO for Rx channel 0.
      INFIFO_CNT_L2         : SVD.UInt7;
      --  Read-only. The register stores the byte number of the data in L3 Rx
      --  FIFO for Rx channel 0.
      INFIFO_CNT_L3         : SVD.UInt5;
      --  Read-only. reserved
      IN_REMAIN_UNDER_1B_L3 : SVD.Bit;
      --  Read-only. reserved
      IN_REMAIN_UNDER_2B_L3 : SVD.Bit;
      --  Read-only. reserved
      IN_REMAIN_UNDER_3B_L3 : SVD.Bit;
      --  Read-only. reserved
      IN_REMAIN_UNDER_4B_L3 : SVD.Bit;
      --  Read-only. reserved
      IN_BUF_HUNGRY         : SVD.Bit;
      --  unspecified
      Reserved_29_31        : SVD.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INFIFO_STATUS_CH_Register use record
      INFIFO_FULL_L1        at 0 range 0 .. 0;
      INFIFO_EMPTY_L1       at 0 range 1 .. 1;
      INFIFO_FULL_L2        at 0 range 2 .. 2;
      INFIFO_EMPTY_L2       at 0 range 3 .. 3;
      INFIFO_FULL_L3        at 0 range 4 .. 4;
      INFIFO_EMPTY_L3       at 0 range 5 .. 5;
      INFIFO_CNT_L1         at 0 range 6 .. 11;
      INFIFO_CNT_L2         at 0 range 12 .. 18;
      INFIFO_CNT_L3         at 0 range 19 .. 23;
      IN_REMAIN_UNDER_1B_L3 at 0 range 24 .. 24;
      IN_REMAIN_UNDER_2B_L3 at 0 range 25 .. 25;
      IN_REMAIN_UNDER_3B_L3 at 0 range 26 .. 26;
      IN_REMAIN_UNDER_4B_L3 at 0 range 27 .. 27;
      IN_BUF_HUNGRY         at 0 range 28 .. 28;
      Reserved_29_31        at 0 range 29 .. 31;
   end record;

   --  Pop control register of Rx channel 0
   type IN_POP_CH_Register is record
      --  Read-only. This register stores the data popping from DMA FIFO.
      INFIFO_RDATA   : SVD.UInt12 := 16#800#;
      --  Set this bit to pop data from DMA FIFO.
      INFIFO_POP     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_13_31 : SVD.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_POP_CH_Register use record
      INFIFO_RDATA   at 0 range 0 .. 11;
      INFIFO_POP     at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Link descriptor configure and control register of Rx channel 0
   type IN_LINK_CH_Register is record
      --  This register stores the 20 least significant bits of the first
      --  inlink descriptor's address.
      INLINK_ADDR     : SVD.UInt20 := 16#0#;
      --  Set this bit to return to current inlink descriptor's address, when
      --  there are some errors in current receiving data.
      INLINK_AUTO_RET : SVD.Bit := 16#1#;
      --  Set this bit to stop dealing with the inlink descriptors.
      INLINK_STOP     : SVD.Bit := 16#0#;
      --  Set this bit to start dealing with the inlink descriptors.
      INLINK_START    : SVD.Bit := 16#0#;
      --  Set this bit to mount a new inlink descriptor.
      INLINK_RESTART  : SVD.Bit := 16#0#;
      --  Read-only. 1: the inlink descriptor's FSM is in idle state. 0: the
      --  inlink descriptor's FSM is working.
      INLINK_PARK     : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_25_31  : SVD.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_LINK_CH_Register use record
      INLINK_ADDR     at 0 range 0 .. 19;
      INLINK_AUTO_RET at 0 range 20 .. 20;
      INLINK_STOP     at 0 range 21 .. 21;
      INLINK_START    at 0 range 22 .. 22;
      INLINK_RESTART  at 0 range 23 .. 23;
      INLINK_PARK     at 0 range 24 .. 24;
      Reserved_25_31  at 0 range 25 .. 31;
   end record;

   --  Receive status of Rx channel 0
   type IN_STATE_CH_Register is record
      --  Read-only. This register stores the current inlink descriptor's
      --  address.
      INLINK_DSCR_ADDR : SVD.UInt18;
      --  Read-only. reserved
      IN_DSCR_STATE    : SVD.UInt2;
      --  Read-only. reserved
      IN_STATE         : SVD.UInt3;
      --  unspecified
      Reserved_23_31   : SVD.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_STATE_CH_Register use record
      INLINK_DSCR_ADDR at 0 range 0 .. 17;
      IN_DSCR_STATE    at 0 range 18 .. 19;
      IN_STATE         at 0 range 20 .. 22;
      Reserved_23_31   at 0 range 23 .. 31;
   end record;

   --  Weight register of Rx channel 0
   type IN_WIGHT_CH_Register is record
      --  unspecified
      Reserved_0_7   : SVD.Byte := 16#0#;
      --  The weight of Rx channel 0.
      RX_WEIGHT      : SVD.UInt4 := 16#F#;
      --  unspecified
      Reserved_12_31 : SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_WIGHT_CH_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      RX_WEIGHT      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Priority register of Rx channel 0
   type IN_PRI_CH_Register is record
      --  The priority of Rx channel 0. The larger of the value, the higher of
      --  the priority.
      RX_PRI        : SVD.UInt4 := 16#0#;
      --  unspecified
      Reserved_4_31 : SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_PRI_CH_Register use record
      RX_PRI        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Peripheral selection of Rx channel 0
   type IN_PERI_SEL_CH_Register is record
      --  This register is used to select peripheral for Rx channel 0. 0:SPI2.
      --  1: SPI3. 2: UHCI0. 3: I2S0. 4: I2S1. 5: LCD_CAM. 6: AES. 7: SHA. 8:
      --  ADC_DAC. 9: RMT.
      PERI_IN_SEL   : SVD.UInt6 := 16#3F#;
      --  unspecified
      Reserved_6_31 : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_PERI_SEL_CH_Register use record
      PERI_IN_SEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Configure 0 register of Tx channel 0
   type OUT_CONF0_CH_Register is record
      --  This bit is used to reset DMA channel 0 Tx FSM and Tx FIFO pointer.
      OUT_RST           : SVD.Bit := 16#0#;
      --  reserved
      OUT_LOOP_TEST     : SVD.Bit := 16#0#;
      --  Set this bit to enable automatic outlink-writeback when all the data
      --  in tx buffer has been transmitted.
      OUT_AUTO_WRBACK   : SVD.Bit := 16#0#;
      --  EOF flag generation mode when transmitting data. 1: EOF flag for Tx
      --  channel 0 is generated when data need to transmit has been popped
      --  from FIFO in DMA
      OUT_EOF_MODE      : SVD.Bit := 16#1#;
      --  Set this bit to 1 to enable INCR burst transfer for Tx channel 0
      --  reading link descriptor when accessing internal SRAM.
      OUTDSCR_BURST_EN  : SVD.Bit := 16#0#;
      --  Set this bit to 1 to enable INCR burst transfer for Tx channel 0
      --  transmitting data when accessing internal SRAM.
      OUT_DATA_BURST_EN : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31     : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_CONF0_CH_Register use record
      OUT_RST           at 0 range 0 .. 0;
      OUT_LOOP_TEST     at 0 range 1 .. 1;
      OUT_AUTO_WRBACK   at 0 range 2 .. 2;
      OUT_EOF_MODE      at 0 range 3 .. 3;
      OUTDSCR_BURST_EN  at 0 range 4 .. 4;
      OUT_DATA_BURST_EN at 0 range 5 .. 5;
      Reserved_6_31     at 0 range 6 .. 31;
   end record;

   --  Configure 1 register of Tx channel 0
   type OUT_CONF1_CH_Register is record
      --  unspecified
      Reserved_0_11       : SVD.UInt12 := 16#0#;
      --  Set this bit to enable checking the owner attribute of the link
      --  descriptor.
      OUT_CHECK_OWNER     : SVD.Bit := 16#0#;
      --  Block size of Tx channel 0 when DMA access external SRAM. 0: 16 bytes
      --  1: 32 bytes 2/3:reserved
      OUT_EXT_MEM_BK_SIZE : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_15_31      : SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_CONF1_CH_Register use record
      Reserved_0_11       at 0 range 0 .. 11;
      OUT_CHECK_OWNER     at 0 range 12 .. 12;
      OUT_EXT_MEM_BK_SIZE at 0 range 13 .. 14;
      Reserved_15_31      at 0 range 15 .. 31;
   end record;

   --  Raw status interrupt of Tx channel 0
   type OUT_INT_RAW_CH_Register is record
      --  The raw interrupt bit turns to high level when the last data pointed
      --  by one outlink descriptor has been transmitted to peripherals for Tx
      --  channel 0.
      OUT_DONE       : SVD.Bit := 16#0#;
      --  The raw interrupt bit turns to high level when the last data pointed
      --  by one outlink descriptor has been read from memory for Tx channel 0.
      OUT_EOF        : SVD.Bit := 16#0#;
      --  The raw interrupt bit turns to high level when detecting outlink
      --  descriptor error, including owner error, the second and third word
      --  error of outlink descriptor for Tx channel 0.
      OUT_DSCR_ERR   : SVD.Bit := 16#0#;
      --  The raw interrupt bit turns to high level when data corresponding a
      --  outlink (includes one link descriptor or few link descriptors) is
      --  transmitted out for Tx channel 0.
      OUT_TOTAL_EOF  : SVD.Bit := 16#0#;
      --  This raw interrupt bit turns to high level when level 1 fifo of Tx
      --  channel 0 is overflow.
      OUTFIFO_OVF_L1 : SVD.Bit := 16#0#;
      --  This raw interrupt bit turns to high level when level 1 fifo of Tx
      --  channel 0 is underflow.
      OUTFIFO_UDF_L1 : SVD.Bit := 16#0#;
      --  This raw interrupt bit turns to high level when level 3 fifo of Tx
      --  channel 0 is overflow.
      OUTFIFO_OVF_L3 : SVD.Bit := 16#0#;
      --  This raw interrupt bit turns to high level when level 3 fifo of Tx
      --  channel 0 is underflow.
      OUTFIFO_UDF_L3 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_8_31  : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_INT_RAW_CH_Register use record
      OUT_DONE       at 0 range 0 .. 0;
      OUT_EOF        at 0 range 1 .. 1;
      OUT_DSCR_ERR   at 0 range 2 .. 2;
      OUT_TOTAL_EOF  at 0 range 3 .. 3;
      OUTFIFO_OVF_L1 at 0 range 4 .. 4;
      OUTFIFO_UDF_L1 at 0 range 5 .. 5;
      OUTFIFO_OVF_L3 at 0 range 6 .. 6;
      OUTFIFO_UDF_L3 at 0 range 7 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   --  Masked interrupt of Tx channel 0
   type OUT_INT_ST_CH_Register is record
      --  Read-only. The raw interrupt status bit for the OUT_DONE_CH_INT
      --  interrupt.
      OUT_DONE       : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the OUT_EOF_CH_INT
      --  interrupt.
      OUT_EOF        : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the OUT_DSCR_ERR_CH_INT
      --  interrupt.
      OUT_DSCR_ERR   : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the OUT_TOTAL_EOF_CH_INT
      --  interrupt.
      OUT_TOTAL_EOF  : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_OVF_L1_CH_INT
      --  interrupt.
      OUTFIFO_OVF_L1 : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_UDF_L1_CH_INT
      --  interrupt.
      OUTFIFO_UDF_L1 : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_OVF_L3_CH_INT
      --  interrupt.
      OUTFIFO_OVF_L3 : SVD.Bit;
      --  Read-only. The raw interrupt status bit for the OUTFIFO_UDF_L3_CH_INT
      --  interrupt.
      OUTFIFO_UDF_L3 : SVD.Bit;
      --  unspecified
      Reserved_8_31  : SVD.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_INT_ST_CH_Register use record
      OUT_DONE       at 0 range 0 .. 0;
      OUT_EOF        at 0 range 1 .. 1;
      OUT_DSCR_ERR   at 0 range 2 .. 2;
      OUT_TOTAL_EOF  at 0 range 3 .. 3;
      OUTFIFO_OVF_L1 at 0 range 4 .. 4;
      OUTFIFO_UDF_L1 at 0 range 5 .. 5;
      OUTFIFO_OVF_L3 at 0 range 6 .. 6;
      OUTFIFO_UDF_L3 at 0 range 7 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   --  Interrupt enable bits of Tx channel 0
   type OUT_INT_ENA_CH_Register is record
      --  The interrupt enable bit for the OUT_DONE_CH_INT interrupt.
      OUT_DONE       : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the OUT_EOF_CH_INT interrupt.
      OUT_EOF        : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the OUT_DSCR_ERR_CH_INT interrupt.
      OUT_DSCR_ERR   : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the OUT_TOTAL_EOF_CH_INT interrupt.
      OUT_TOTAL_EOF  : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the OUTFIFO_OVF_L1_CH_INT interrupt.
      OUTFIFO_OVF_L1 : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the OUTFIFO_UDF_L1_CH_INT interrupt.
      OUTFIFO_UDF_L1 : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the OUTFIFO_OVF_L3_CH_INT interrupt.
      OUTFIFO_OVF_L3 : SVD.Bit := 16#0#;
      --  The interrupt enable bit for the OUTFIFO_UDF_L3_CH_INT interrupt.
      OUTFIFO_UDF_L3 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_8_31  : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_INT_ENA_CH_Register use record
      OUT_DONE       at 0 range 0 .. 0;
      OUT_EOF        at 0 range 1 .. 1;
      OUT_DSCR_ERR   at 0 range 2 .. 2;
      OUT_TOTAL_EOF  at 0 range 3 .. 3;
      OUTFIFO_OVF_L1 at 0 range 4 .. 4;
      OUTFIFO_UDF_L1 at 0 range 5 .. 5;
      OUTFIFO_OVF_L3 at 0 range 6 .. 6;
      OUTFIFO_UDF_L3 at 0 range 7 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   --  Interrupt clear bits of Tx channel 0
   type OUT_INT_CLR_CH_Register is record
      --  Write-only. Set this bit to clear the OUT_DONE_CH_INT interrupt.
      OUT_DONE       : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the OUT_EOF_CH_INT interrupt.
      OUT_EOF        : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the OUT_DSCR_ERR_CH_INT interrupt.
      OUT_DSCR_ERR   : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the OUT_TOTAL_EOF_CH_INT interrupt.
      OUT_TOTAL_EOF  : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the OUTFIFO_OVF_L1_CH_INT
      --  interrupt.
      OUTFIFO_OVF_L1 : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the OUTFIFO_UDF_L1_CH_INT
      --  interrupt.
      OUTFIFO_UDF_L1 : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the OUTFIFO_OVF_L3_CH_INT
      --  interrupt.
      OUTFIFO_OVF_L3 : SVD.Bit := 16#0#;
      --  Write-only. Set this bit to clear the OUTFIFO_UDF_L3_CH_INT
      --  interrupt.
      OUTFIFO_UDF_L3 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_8_31  : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_INT_CLR_CH_Register use record
      OUT_DONE       at 0 range 0 .. 0;
      OUT_EOF        at 0 range 1 .. 1;
      OUT_DSCR_ERR   at 0 range 2 .. 2;
      OUT_TOTAL_EOF  at 0 range 3 .. 3;
      OUTFIFO_OVF_L1 at 0 range 4 .. 4;
      OUTFIFO_UDF_L1 at 0 range 5 .. 5;
      OUTFIFO_OVF_L3 at 0 range 6 .. 6;
      OUTFIFO_UDF_L3 at 0 range 7 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   --  Transmit FIFO status of Tx channel 0
   type OUTFIFO_STATUS_CH_Register is record
      --  Read-only. L1 Tx FIFO full signal for Tx channel 0.
      OUTFIFO_FULL_L1        : SVD.Bit;
      --  Read-only. L1 Tx FIFO empty signal for Tx channel 0.
      OUTFIFO_EMPTY_L1       : SVD.Bit;
      --  Read-only. L2 Tx FIFO full signal for Tx channel 0.
      OUTFIFO_FULL_L2        : SVD.Bit;
      --  Read-only. L2 Tx FIFO empty signal for Tx channel 0.
      OUTFIFO_EMPTY_L2       : SVD.Bit;
      --  Read-only. L3 Tx FIFO full signal for Tx channel 0.
      OUTFIFO_FULL_L3        : SVD.Bit;
      --  Read-only. L3 Tx FIFO empty signal for Tx channel 0.
      OUTFIFO_EMPTY_L3       : SVD.Bit;
      --  Read-only. The register stores the byte number of the data in L1 Tx
      --  FIFO for Tx channel 0.
      OUTFIFO_CNT_L1         : SVD.UInt5;
      --  Read-only. The register stores the byte number of the data in L2 Tx
      --  FIFO for Tx channel 0.
      OUTFIFO_CNT_L2         : SVD.UInt7;
      --  Read-only. The register stores the byte number of the data in L3 Tx
      --  FIFO for Tx channel 0.
      OUTFIFO_CNT_L3         : SVD.UInt5;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_1B_L3 : SVD.Bit;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_2B_L3 : SVD.Bit;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_3B_L3 : SVD.Bit;
      --  Read-only. reserved
      OUT_REMAIN_UNDER_4B_L3 : SVD.Bit;
      --  unspecified
      Reserved_27_31         : SVD.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUTFIFO_STATUS_CH_Register use record
      OUTFIFO_FULL_L1        at 0 range 0 .. 0;
      OUTFIFO_EMPTY_L1       at 0 range 1 .. 1;
      OUTFIFO_FULL_L2        at 0 range 2 .. 2;
      OUTFIFO_EMPTY_L2       at 0 range 3 .. 3;
      OUTFIFO_FULL_L3        at 0 range 4 .. 4;
      OUTFIFO_EMPTY_L3       at 0 range 5 .. 5;
      OUTFIFO_CNT_L1         at 0 range 6 .. 10;
      OUTFIFO_CNT_L2         at 0 range 11 .. 17;
      OUTFIFO_CNT_L3         at 0 range 18 .. 22;
      OUT_REMAIN_UNDER_1B_L3 at 0 range 23 .. 23;
      OUT_REMAIN_UNDER_2B_L3 at 0 range 24 .. 24;
      OUT_REMAIN_UNDER_3B_L3 at 0 range 25 .. 25;
      OUT_REMAIN_UNDER_4B_L3 at 0 range 26 .. 26;
      Reserved_27_31         at 0 range 27 .. 31;
   end record;

   --  Push control register of Rx channel 0
   type OUT_PUSH_CH_Register is record
      --  This register stores the data that need to be pushed into DMA FIFO.
      OUTFIFO_WDATA  : SVD.UInt9 := 16#0#;
      --  Set this bit to push data into DMA FIFO.
      OUTFIFO_PUSH   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_31 : SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PUSH_CH_Register use record
      OUTFIFO_WDATA  at 0 range 0 .. 8;
      OUTFIFO_PUSH   at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Link descriptor configure and control register of Tx channel 0
   type OUT_LINK_CH_Register is record
      --  This register stores the 20 least significant bits of the first
      --  outlink descriptor's address.
      OUTLINK_ADDR    : SVD.UInt20 := 16#0#;
      --  Set this bit to stop dealing with the outlink descriptors.
      OUTLINK_STOP    : SVD.Bit := 16#0#;
      --  Set this bit to start dealing with the outlink descriptors.
      OUTLINK_START   : SVD.Bit := 16#0#;
      --  Set this bit to restart a new outlink from the last address.
      OUTLINK_RESTART : SVD.Bit := 16#0#;
      --  Read-only. 1: the outlink descriptor's FSM is in idle state. 0: the
      --  outlink descriptor's FSM is working.
      OUTLINK_PARK    : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_24_31  : SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_LINK_CH_Register use record
      OUTLINK_ADDR    at 0 range 0 .. 19;
      OUTLINK_STOP    at 0 range 20 .. 20;
      OUTLINK_START   at 0 range 21 .. 21;
      OUTLINK_RESTART at 0 range 22 .. 22;
      OUTLINK_PARK    at 0 range 23 .. 23;
      Reserved_24_31  at 0 range 24 .. 31;
   end record;

   --  Transmit status of Tx channel 0
   type OUT_STATE_CH_Register is record
      --  Read-only. This register stores the current outlink descriptor's
      --  address.
      OUTLINK_DSCR_ADDR : SVD.UInt18;
      --  Read-only. reserved
      OUT_DSCR_STATE    : SVD.UInt2;
      --  Read-only. reserved
      OUT_STATE         : SVD.UInt3;
      --  unspecified
      Reserved_23_31    : SVD.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_STATE_CH_Register use record
      OUTLINK_DSCR_ADDR at 0 range 0 .. 17;
      OUT_DSCR_STATE    at 0 range 18 .. 19;
      OUT_STATE         at 0 range 20 .. 22;
      Reserved_23_31    at 0 range 23 .. 31;
   end record;

   --  Weight register of Rx channel 0
   type OUT_WIGHT_CH_Register is record
      --  unspecified
      Reserved_0_7   : SVD.Byte := 16#0#;
      --  The weight of Tx channel 0.
      TX_WEIGHT      : SVD.UInt4 := 16#F#;
      --  unspecified
      Reserved_12_31 : SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_WIGHT_CH_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TX_WEIGHT      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Priority register of Tx channel 0.
   type OUT_PRI_CH_Register is record
      --  The priority of Tx channel 0. The larger of the value, the higher of
      --  the priority.
      TX_PRI        : SVD.UInt4 := 16#0#;
      --  unspecified
      Reserved_4_31 : SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PRI_CH_Register use record
      TX_PRI        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Peripheral selection of Tx channel 0
   type OUT_PERI_SEL_CH_Register is record
      --  This register is used to select peripheral for Tx channel 0. 0:SPI2.
      --  1: SPI3. 2: UHCI0. 3: I2S0. 4: I2S1. 5: LCD_CAM. 6: AES. 7: SHA. 8:
      --  ADC_DAC. 9: RMT.
      PERI_OUT_SEL  : SVD.UInt6 := 16#3F#;
      --  unspecified
      Reserved_6_31 : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PERI_SEL_CH_Register use record
      PERI_OUT_SEL  at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  reserved
   type AHB_TEST_Register is record
      --  reserved
      AHB_TESTMODE  : SVD.UInt3 := 16#0#;
      --  unspecified
      Reserved_3_3  : SVD.Bit := 16#0#;
      --  reserved
      AHB_TESTADDR  : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_6_31 : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHB_TEST_Register use record
      AHB_TESTMODE  at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      AHB_TESTADDR  at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  reserved
   type PD_CONF_Register is record
      --  unspecified
      Reserved_0_3     : SVD.UInt4 := 16#0#;
      --  Set this bit to force power down DMA internal memory.
      DMA_RAM_FORCE_PD : SVD.Bit := 16#0#;
      --  Set this bit to force power up DMA internal memory
      DMA_RAM_FORCE_PU : SVD.Bit := 16#1#;
      --  1: Force to open the clock and bypass the gate-clock when accessing
      --  the RAM in DMA. 0: A gate-clock will be used when accessing the RAM
      --  in DMA.
      DMA_RAM_CLK_FO   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_7_31    : SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PD_CONF_Register use record
      Reserved_0_3     at 0 range 0 .. 3;
      DMA_RAM_FORCE_PD at 0 range 4 .. 4;
      DMA_RAM_FORCE_PU at 0 range 5 .. 5;
      DMA_RAM_CLK_FO   at 0 range 6 .. 6;
      Reserved_7_31    at 0 range 7 .. 31;
   end record;

   --  MISC register
   type MISC_CONF_Register is record
      --  Set this bit, then clear this bit to reset the internal ahb FSM.
      AHBM_RST_INTER : SVD.Bit := 16#0#;
      --  Set this bit, then clear this bit to reset the external ahb FSM.
      AHBM_RST_EXTER : SVD.Bit := 16#0#;
      --  Set this bit to disable priority arbitration function.
      ARB_PRI_DIS    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_3_3   : SVD.Bit := 16#0#;
      --  1'h1: Force clock on for register. 1'h0: Support clock only when
      --  application writes registers.
      CLK_EN         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_5_31  : SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISC_CONF_Register use record
      AHBM_RST_INTER at 0 range 0 .. 0;
      AHBM_RST_EXTER at 0 range 1 .. 1;
      ARB_PRI_DIS    at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CLK_EN         at 0 range 4 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   --  Receive L2 FIFO depth of Rx channel 0
   type IN_SRAM_SIZE_CH_Register is record
      --  This register is used to configure the size of L2 Tx FIFO for Rx
      --  channel 0. 0:16 bytes. 1:24 bytes. 2:32 bytes. 3: 40 bytes. 4: 48
      --  bytes. 5:56 bytes. 6: 64 bytes. 7: 72 bytes. 8: 80 bytes.
      IN_SIZE       : SVD.UInt7 := 16#E#;
      --  unspecified
      Reserved_7_31 : SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IN_SRAM_SIZE_CH_Register use record
      IN_SIZE       at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Transmit L2 FIFO depth of Tx channel 0
   type OUT_SRAM_SIZE_CH_Register is record
      --  This register is used to configure the size of L2 Tx FIFO for Tx
      --  channel 0. 0:16 bytes. 1:24 bytes. 2:32 bytes. 3: 40 bytes. 4: 48
      --  bytes. 5:56 bytes. 6: 64 bytes. 7: 72 bytes. 8: 80 bytes.
      OUT_SIZE      : SVD.UInt7 := 16#E#;
      --  unspecified
      Reserved_7_31 : SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_SRAM_SIZE_CH_Register use record
      OUT_SIZE      at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Reject status accessing external RAM
   type EXTMEM_REJECT_ST_Register is record
      --  Read-only. The reject accessing. Bit 0: if this bit is 1, the
      --  rejected accessing is READ. Bit 1: if this bit is 1, the rejected
      --  accessing is WRITE.
      EXTMEM_REJECT_ATRR        : SVD.UInt2;
      --  Read-only. The register indicate the reject accessing from which
      --  channel.
      EXTMEM_REJECT_CHANNEL_NUM : SVD.UInt4;
      --  Read-only. This register indicate reject accessing from which
      --  peripheral.
      EXTMEM_REJECT_PERI_NUM    : SVD.UInt6;
      --  unspecified
      Reserved_12_31            : SVD.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTMEM_REJECT_ST_Register use record
      EXTMEM_REJECT_ATRR        at 0 range 0 .. 1;
      EXTMEM_REJECT_CHANNEL_NUM at 0 range 2 .. 5;
      EXTMEM_REJECT_PERI_NUM    at 0 range 6 .. 11;
      Reserved_12_31            at 0 range 12 .. 31;
   end record;

   --  Raw interrupt status of external RAM permission
   type EXTMEM_REJECT_INT_RAW_Register is record
      --  The raw interrupt bit turns to high level when accessing external RAM
      --  is rejected by permission control.
      EXTMEM_REJECT_INT_RAW : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31         : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTMEM_REJECT_INT_RAW_Register use record
      EXTMEM_REJECT_INT_RAW at 0 range 0 .. 0;
      Reserved_1_31         at 0 range 1 .. 31;
   end record;

   --  Masked interrupt status of external RAM permission
   type EXTMEM_REJECT_INT_ST_Register is record
      --  Read-only. The raw interrupt status bit for the EXTMEM_REJECT_INT
      --  interrupt.
      EXTMEM_REJECT_INT_ST : SVD.Bit;
      --  unspecified
      Reserved_1_31        : SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTMEM_REJECT_INT_ST_Register use record
      EXTMEM_REJECT_INT_ST at 0 range 0 .. 0;
      Reserved_1_31        at 0 range 1 .. 31;
   end record;

   --  Interrupt enable bits of external RAM permission
   type EXTMEM_REJECT_INT_ENA_Register is record
      --  The interrupt enable bit for the EXTMEM_REJECT_INT interrupt.
      EXTMEM_REJECT_INT_ENA : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31         : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTMEM_REJECT_INT_ENA_Register use record
      EXTMEM_REJECT_INT_ENA at 0 range 0 .. 0;
      Reserved_1_31         at 0 range 1 .. 31;
   end record;

   --  Interrupt clear bits of external RAM permission
   type EXTMEM_REJECT_INT_CLR_Register is record
      --  Write-only. Set this bit to clear the EXTMEM_REJECT_INT interrupt.
      EXTMEM_REJECT_INT_CLR : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31         : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTMEM_REJECT_INT_CLR_Register use record
      EXTMEM_REJECT_INT_CLR at 0 range 0 .. 0;
      Reserved_1_31         at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DMA (Direct Memory Access) Controller
   type DMA_Peripheral is record
      --  Configure 0 register of Rx channel 0
      IN_CONF0_CH0             : aliased IN_CONF0_CH_Register;
      --  Configure 1 register of Rx channel 0
      IN_CONF1_CH0             : aliased IN_CONF1_CH_Register;
      --  Raw status interrupt of Rx channel 0
      IN_INT_RAW_CH0           : aliased IN_INT_RAW_CH_Register;
      --  Masked interrupt of Rx channel 0
      IN_INT_ST_CH0            : aliased IN_INT_ST_CH_Register;
      --  Interrupt enable bits of Rx channel 0
      IN_INT_ENA_CH0           : aliased IN_INT_ENA_CH_Register;
      --  Interrupt clear bits of Rx channel 0
      IN_INT_CLR_CH0           : aliased IN_INT_CLR_CH_Register;
      --  Receive FIFO status of Rx channel 0
      INFIFO_STATUS_CH0        : aliased INFIFO_STATUS_CH_Register;
      --  Pop control register of Rx channel 0
      IN_POP_CH0               : aliased IN_POP_CH_Register;
      --  Link descriptor configure and control register of Rx channel 0
      IN_LINK_CH0              : aliased IN_LINK_CH_Register;
      --  Receive status of Rx channel 0
      IN_STATE_CH0             : aliased IN_STATE_CH_Register;
      --  Inlink descriptor address when EOF occurs of Rx channel 0
      IN_SUC_EOF_DES_ADDR_CH0  : aliased SVD.UInt32;
      --  Inlink descriptor address when errors occur of Rx channel 0
      IN_ERR_EOF_DES_ADDR_CH0  : aliased SVD.UInt32;
      --  Current inlink descriptor address of Rx channel 0
      IN_DSCR_CH0              : aliased SVD.UInt32;
      --  The last inlink descriptor address of Rx channel 0
      IN_DSCR_BF0_CH0          : aliased SVD.UInt32;
      --  The second-to-last inlink descriptor address of Rx channel 0
      IN_DSCR_BF1_CH0          : aliased SVD.UInt32;
      --  Weight register of Rx channel 0
      IN_WIGHT_CH0             : aliased IN_WIGHT_CH_Register;
      --  Priority register of Rx channel 0
      IN_PRI_CH0               : aliased IN_PRI_CH_Register;
      --  Peripheral selection of Rx channel 0
      IN_PERI_SEL_CH0          : aliased IN_PERI_SEL_CH_Register;
      --  Configure 0 register of Tx channel 0
      OUT_CONF0_CH0            : aliased OUT_CONF0_CH_Register;
      --  Configure 1 register of Tx channel 0
      OUT_CONF1_CH0            : aliased OUT_CONF1_CH_Register;
      --  Raw status interrupt of Tx channel 0
      OUT_INT_RAW_CH0          : aliased OUT_INT_RAW_CH_Register;
      --  Masked interrupt of Tx channel 0
      OUT_INT_ST_CH0           : aliased OUT_INT_ST_CH_Register;
      --  Interrupt enable bits of Tx channel 0
      OUT_INT_ENA_CH0          : aliased OUT_INT_ENA_CH_Register;
      --  Interrupt clear bits of Tx channel 0
      OUT_INT_CLR_CH0          : aliased OUT_INT_CLR_CH_Register;
      --  Transmit FIFO status of Tx channel 0
      OUTFIFO_STATUS_CH0       : aliased OUTFIFO_STATUS_CH_Register;
      --  Push control register of Rx channel 0
      OUT_PUSH_CH0             : aliased OUT_PUSH_CH_Register;
      --  Link descriptor configure and control register of Tx channel 0
      OUT_LINK_CH0             : aliased OUT_LINK_CH_Register;
      --  Transmit status of Tx channel 0
      OUT_STATE_CH0            : aliased OUT_STATE_CH_Register;
      --  Outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_DES_ADDR_CH0     : aliased SVD.UInt32;
      --  The last outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_BFR_DES_ADDR_CH0 : aliased SVD.UInt32;
      --  Current inlink descriptor address of Tx channel 0
      OUT_DSCR_CH0             : aliased SVD.UInt32;
      --  The last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF0_CH0         : aliased SVD.UInt32;
      --  The second-to-last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF1_CH0         : aliased SVD.UInt32;
      --  Weight register of Rx channel 0
      OUT_WIGHT_CH0            : aliased OUT_WIGHT_CH_Register;
      --  Priority register of Tx channel 0.
      OUT_PRI_CH0              : aliased OUT_PRI_CH_Register;
      --  Peripheral selection of Tx channel 0
      OUT_PERI_SEL_CH0         : aliased OUT_PERI_SEL_CH_Register;
      --  Configure 0 register of Rx channel 0
      IN_CONF0_CH1             : aliased IN_CONF0_CH_Register;
      --  Configure 1 register of Rx channel 0
      IN_CONF1_CH1             : aliased IN_CONF1_CH_Register;
      --  Raw status interrupt of Rx channel 0
      IN_INT_RAW_CH1           : aliased IN_INT_RAW_CH_Register;
      --  Masked interrupt of Rx channel 0
      IN_INT_ST_CH1            : aliased IN_INT_ST_CH_Register;
      --  Interrupt enable bits of Rx channel 0
      IN_INT_ENA_CH1           : aliased IN_INT_ENA_CH_Register;
      --  Interrupt clear bits of Rx channel 0
      IN_INT_CLR_CH1           : aliased IN_INT_CLR_CH_Register;
      --  Receive FIFO status of Rx channel 0
      INFIFO_STATUS_CH1        : aliased INFIFO_STATUS_CH_Register;
      --  Pop control register of Rx channel 0
      IN_POP_CH1               : aliased IN_POP_CH_Register;
      --  Link descriptor configure and control register of Rx channel 0
      IN_LINK_CH1              : aliased IN_LINK_CH_Register;
      --  Receive status of Rx channel 0
      IN_STATE_CH1             : aliased IN_STATE_CH_Register;
      --  Inlink descriptor address when EOF occurs of Rx channel 0
      IN_SUC_EOF_DES_ADDR_CH1  : aliased SVD.UInt32;
      --  Inlink descriptor address when errors occur of Rx channel 0
      IN_ERR_EOF_DES_ADDR_CH1  : aliased SVD.UInt32;
      --  Current inlink descriptor address of Rx channel 0
      IN_DSCR_CH1              : aliased SVD.UInt32;
      --  The last inlink descriptor address of Rx channel 0
      IN_DSCR_BF0_CH1          : aliased SVD.UInt32;
      --  The second-to-last inlink descriptor address of Rx channel 0
      IN_DSCR_BF1_CH1          : aliased SVD.UInt32;
      --  Weight register of Rx channel 0
      IN_WIGHT_CH1             : aliased IN_WIGHT_CH_Register;
      --  Priority register of Rx channel 0
      IN_PRI_CH1               : aliased IN_PRI_CH_Register;
      --  Peripheral selection of Rx channel 0
      IN_PERI_SEL_CH1          : aliased IN_PERI_SEL_CH_Register;
      --  Configure 0 register of Tx channel 0
      OUT_CONF0_CH1            : aliased OUT_CONF0_CH_Register;
      --  Configure 1 register of Tx channel 0
      OUT_CONF1_CH1            : aliased OUT_CONF1_CH_Register;
      --  Raw status interrupt of Tx channel 0
      OUT_INT_RAW_CH1          : aliased OUT_INT_RAW_CH_Register;
      --  Masked interrupt of Tx channel 0
      OUT_INT_ST_CH1           : aliased OUT_INT_ST_CH_Register;
      --  Interrupt enable bits of Tx channel 0
      OUT_INT_ENA_CH1          : aliased OUT_INT_ENA_CH_Register;
      --  Interrupt clear bits of Tx channel 0
      OUT_INT_CLR_CH1          : aliased OUT_INT_CLR_CH_Register;
      --  Transmit FIFO status of Tx channel 0
      OUTFIFO_STATUS_CH1       : aliased OUTFIFO_STATUS_CH_Register;
      --  Push control register of Rx channel 0
      OUT_PUSH_CH1             : aliased OUT_PUSH_CH_Register;
      --  Link descriptor configure and control register of Tx channel 0
      OUT_LINK_CH1             : aliased OUT_LINK_CH_Register;
      --  Transmit status of Tx channel 0
      OUT_STATE_CH1            : aliased OUT_STATE_CH_Register;
      --  Outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_DES_ADDR_CH1     : aliased SVD.UInt32;
      --  The last outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_BFR_DES_ADDR_CH1 : aliased SVD.UInt32;
      --  Current inlink descriptor address of Tx channel 0
      OUT_DSCR_CH1             : aliased SVD.UInt32;
      --  The last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF0_CH1         : aliased SVD.UInt32;
      --  The second-to-last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF1_CH1         : aliased SVD.UInt32;
      --  Weight register of Rx channel 0
      OUT_WIGHT_CH1            : aliased OUT_WIGHT_CH_Register;
      --  Priority register of Tx channel 0.
      OUT_PRI_CH1              : aliased OUT_PRI_CH_Register;
      --  Peripheral selection of Tx channel 0
      OUT_PERI_SEL_CH1         : aliased OUT_PERI_SEL_CH_Register;
      --  Configure 0 register of Rx channel 0
      IN_CONF0_CH2             : aliased IN_CONF0_CH_Register;
      --  Configure 1 register of Rx channel 0
      IN_CONF1_CH2             : aliased IN_CONF1_CH_Register;
      --  Raw status interrupt of Rx channel 0
      IN_INT_RAW_CH2           : aliased IN_INT_RAW_CH_Register;
      --  Masked interrupt of Rx channel 0
      IN_INT_ST_CH2            : aliased IN_INT_ST_CH_Register;
      --  Interrupt enable bits of Rx channel 0
      IN_INT_ENA_CH2           : aliased IN_INT_ENA_CH_Register;
      --  Interrupt clear bits of Rx channel 0
      IN_INT_CLR_CH2           : aliased IN_INT_CLR_CH_Register;
      --  Receive FIFO status of Rx channel 0
      INFIFO_STATUS_CH2        : aliased INFIFO_STATUS_CH_Register;
      --  Pop control register of Rx channel 0
      IN_POP_CH2               : aliased IN_POP_CH_Register;
      --  Link descriptor configure and control register of Rx channel 0
      IN_LINK_CH2              : aliased IN_LINK_CH_Register;
      --  Receive status of Rx channel 0
      IN_STATE_CH2             : aliased IN_STATE_CH_Register;
      --  Inlink descriptor address when EOF occurs of Rx channel 0
      IN_SUC_EOF_DES_ADDR_CH2  : aliased SVD.UInt32;
      --  Inlink descriptor address when errors occur of Rx channel 0
      IN_ERR_EOF_DES_ADDR_CH2  : aliased SVD.UInt32;
      --  Current inlink descriptor address of Rx channel 0
      IN_DSCR_CH2              : aliased SVD.UInt32;
      --  The last inlink descriptor address of Rx channel 0
      IN_DSCR_BF0_CH2          : aliased SVD.UInt32;
      --  The second-to-last inlink descriptor address of Rx channel 0
      IN_DSCR_BF1_CH2          : aliased SVD.UInt32;
      --  Weight register of Rx channel 0
      IN_WIGHT_CH2             : aliased IN_WIGHT_CH_Register;
      --  Priority register of Rx channel 0
      IN_PRI_CH2               : aliased IN_PRI_CH_Register;
      --  Peripheral selection of Rx channel 0
      IN_PERI_SEL_CH2          : aliased IN_PERI_SEL_CH_Register;
      --  Configure 0 register of Tx channel 0
      OUT_CONF0_CH2            : aliased OUT_CONF0_CH_Register;
      --  Configure 1 register of Tx channel 0
      OUT_CONF1_CH2            : aliased OUT_CONF1_CH_Register;
      --  Raw status interrupt of Tx channel 0
      OUT_INT_RAW_CH2          : aliased OUT_INT_RAW_CH_Register;
      --  Masked interrupt of Tx channel 0
      OUT_INT_ST_CH2           : aliased OUT_INT_ST_CH_Register;
      --  Interrupt enable bits of Tx channel 0
      OUT_INT_ENA_CH2          : aliased OUT_INT_ENA_CH_Register;
      --  Interrupt clear bits of Tx channel 0
      OUT_INT_CLR_CH2          : aliased OUT_INT_CLR_CH_Register;
      --  Transmit FIFO status of Tx channel 0
      OUTFIFO_STATUS_CH2       : aliased OUTFIFO_STATUS_CH_Register;
      --  Push control register of Rx channel 0
      OUT_PUSH_CH2             : aliased OUT_PUSH_CH_Register;
      --  Link descriptor configure and control register of Tx channel 0
      OUT_LINK_CH2             : aliased OUT_LINK_CH_Register;
      --  Transmit status of Tx channel 0
      OUT_STATE_CH2            : aliased OUT_STATE_CH_Register;
      --  Outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_DES_ADDR_CH2     : aliased SVD.UInt32;
      --  The last outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_BFR_DES_ADDR_CH2 : aliased SVD.UInt32;
      --  Current inlink descriptor address of Tx channel 0
      OUT_DSCR_CH2             : aliased SVD.UInt32;
      --  The last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF0_CH2         : aliased SVD.UInt32;
      --  The second-to-last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF1_CH2         : aliased SVD.UInt32;
      --  Weight register of Rx channel 0
      OUT_WIGHT_CH2            : aliased OUT_WIGHT_CH_Register;
      --  Priority register of Tx channel 0.
      OUT_PRI_CH2              : aliased OUT_PRI_CH_Register;
      --  Peripheral selection of Tx channel 0
      OUT_PERI_SEL_CH2         : aliased OUT_PERI_SEL_CH_Register;
      --  Configure 0 register of Rx channel 0
      IN_CONF0_CH3             : aliased IN_CONF0_CH_Register;
      --  Configure 1 register of Rx channel 0
      IN_CONF1_CH3             : aliased IN_CONF1_CH_Register;
      --  Raw status interrupt of Rx channel 0
      IN_INT_RAW_CH3           : aliased IN_INT_RAW_CH_Register;
      --  Masked interrupt of Rx channel 0
      IN_INT_ST_CH3            : aliased IN_INT_ST_CH_Register;
      --  Interrupt enable bits of Rx channel 0
      IN_INT_ENA_CH3           : aliased IN_INT_ENA_CH_Register;
      --  Interrupt clear bits of Rx channel 0
      IN_INT_CLR_CH3           : aliased IN_INT_CLR_CH_Register;
      --  Receive FIFO status of Rx channel 0
      INFIFO_STATUS_CH3        : aliased INFIFO_STATUS_CH_Register;
      --  Pop control register of Rx channel 0
      IN_POP_CH3               : aliased IN_POP_CH_Register;
      --  Link descriptor configure and control register of Rx channel 0
      IN_LINK_CH3              : aliased IN_LINK_CH_Register;
      --  Receive status of Rx channel 0
      IN_STATE_CH3             : aliased IN_STATE_CH_Register;
      --  Inlink descriptor address when EOF occurs of Rx channel 0
      IN_SUC_EOF_DES_ADDR_CH3  : aliased SVD.UInt32;
      --  Inlink descriptor address when errors occur of Rx channel 0
      IN_ERR_EOF_DES_ADDR_CH3  : aliased SVD.UInt32;
      --  Current inlink descriptor address of Rx channel 0
      IN_DSCR_CH3              : aliased SVD.UInt32;
      --  The last inlink descriptor address of Rx channel 0
      IN_DSCR_BF0_CH3          : aliased SVD.UInt32;
      --  The second-to-last inlink descriptor address of Rx channel 0
      IN_DSCR_BF1_CH3          : aliased SVD.UInt32;
      --  Weight register of Rx channel 0
      IN_WIGHT_CH3             : aliased IN_WIGHT_CH_Register;
      --  Priority register of Rx channel 0
      IN_PRI_CH3               : aliased IN_PRI_CH_Register;
      --  Peripheral selection of Rx channel 0
      IN_PERI_SEL_CH3          : aliased IN_PERI_SEL_CH_Register;
      --  Configure 0 register of Tx channel 0
      OUT_CONF0_CH3            : aliased OUT_CONF0_CH_Register;
      --  Configure 1 register of Tx channel 0
      OUT_CONF1_CH3            : aliased OUT_CONF1_CH_Register;
      --  Raw status interrupt of Tx channel 0
      OUT_INT_RAW_CH3          : aliased OUT_INT_RAW_CH_Register;
      --  Masked interrupt of Tx channel 0
      OUT_INT_ST_CH3           : aliased OUT_INT_ST_CH_Register;
      --  Interrupt enable bits of Tx channel 0
      OUT_INT_ENA_CH3          : aliased OUT_INT_ENA_CH_Register;
      --  Interrupt clear bits of Tx channel 0
      OUT_INT_CLR_CH3          : aliased OUT_INT_CLR_CH_Register;
      --  Transmit FIFO status of Tx channel 0
      OUTFIFO_STATUS_CH3       : aliased OUTFIFO_STATUS_CH_Register;
      --  Push control register of Rx channel 0
      OUT_PUSH_CH3             : aliased OUT_PUSH_CH_Register;
      --  Link descriptor configure and control register of Tx channel 0
      OUT_LINK_CH3             : aliased OUT_LINK_CH_Register;
      --  Transmit status of Tx channel 0
      OUT_STATE_CH3            : aliased OUT_STATE_CH_Register;
      --  Outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_DES_ADDR_CH3     : aliased SVD.UInt32;
      --  The last outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_BFR_DES_ADDR_CH3 : aliased SVD.UInt32;
      --  Current inlink descriptor address of Tx channel 0
      OUT_DSCR_CH3             : aliased SVD.UInt32;
      --  The last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF0_CH3         : aliased SVD.UInt32;
      --  The second-to-last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF1_CH3         : aliased SVD.UInt32;
      --  Weight register of Rx channel 0
      OUT_WIGHT_CH3            : aliased OUT_WIGHT_CH_Register;
      --  Priority register of Tx channel 0.
      OUT_PRI_CH3              : aliased OUT_PRI_CH_Register;
      --  Peripheral selection of Tx channel 0
      OUT_PERI_SEL_CH3         : aliased OUT_PERI_SEL_CH_Register;
      --  Configure 0 register of Rx channel 0
      IN_CONF0_CH4             : aliased IN_CONF0_CH_Register;
      --  Configure 1 register of Rx channel 0
      IN_CONF1_CH4             : aliased IN_CONF1_CH_Register;
      --  Raw status interrupt of Rx channel 0
      IN_INT_RAW_CH4           : aliased IN_INT_RAW_CH_Register;
      --  Masked interrupt of Rx channel 0
      IN_INT_ST_CH4            : aliased IN_INT_ST_CH_Register;
      --  Interrupt enable bits of Rx channel 0
      IN_INT_ENA_CH4           : aliased IN_INT_ENA_CH_Register;
      --  Interrupt clear bits of Rx channel 0
      IN_INT_CLR_CH4           : aliased IN_INT_CLR_CH_Register;
      --  Receive FIFO status of Rx channel 0
      INFIFO_STATUS_CH4        : aliased INFIFO_STATUS_CH_Register;
      --  Pop control register of Rx channel 0
      IN_POP_CH4               : aliased IN_POP_CH_Register;
      --  Link descriptor configure and control register of Rx channel 0
      IN_LINK_CH4              : aliased IN_LINK_CH_Register;
      --  Receive status of Rx channel 0
      IN_STATE_CH4             : aliased IN_STATE_CH_Register;
      --  Inlink descriptor address when EOF occurs of Rx channel 0
      IN_SUC_EOF_DES_ADDR_CH4  : aliased SVD.UInt32;
      --  Inlink descriptor address when errors occur of Rx channel 0
      IN_ERR_EOF_DES_ADDR_CH4  : aliased SVD.UInt32;
      --  Current inlink descriptor address of Rx channel 0
      IN_DSCR_CH4              : aliased SVD.UInt32;
      --  The last inlink descriptor address of Rx channel 0
      IN_DSCR_BF0_CH4          : aliased SVD.UInt32;
      --  The second-to-last inlink descriptor address of Rx channel 0
      IN_DSCR_BF1_CH4          : aliased SVD.UInt32;
      --  Weight register of Rx channel 0
      IN_WIGHT_CH4             : aliased IN_WIGHT_CH_Register;
      --  Priority register of Rx channel 0
      IN_PRI_CH4               : aliased IN_PRI_CH_Register;
      --  Peripheral selection of Rx channel 0
      IN_PERI_SEL_CH4          : aliased IN_PERI_SEL_CH_Register;
      --  Configure 0 register of Tx channel 0
      OUT_CONF0_CH4            : aliased OUT_CONF0_CH_Register;
      --  Configure 1 register of Tx channel 0
      OUT_CONF1_CH4            : aliased OUT_CONF1_CH_Register;
      --  Raw status interrupt of Tx channel 0
      OUT_INT_RAW_CH4          : aliased OUT_INT_RAW_CH_Register;
      --  Masked interrupt of Tx channel 0
      OUT_INT_ST_CH4           : aliased OUT_INT_ST_CH_Register;
      --  Interrupt enable bits of Tx channel 0
      OUT_INT_ENA_CH4          : aliased OUT_INT_ENA_CH_Register;
      --  Interrupt clear bits of Tx channel 0
      OUT_INT_CLR_CH4          : aliased OUT_INT_CLR_CH_Register;
      --  Transmit FIFO status of Tx channel 0
      OUTFIFO_STATUS_CH4       : aliased OUTFIFO_STATUS_CH_Register;
      --  Push control register of Rx channel 0
      OUT_PUSH_CH4             : aliased OUT_PUSH_CH_Register;
      --  Link descriptor configure and control register of Tx channel 0
      OUT_LINK_CH4             : aliased OUT_LINK_CH_Register;
      --  Transmit status of Tx channel 0
      OUT_STATE_CH4            : aliased OUT_STATE_CH_Register;
      --  Outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_DES_ADDR_CH4     : aliased SVD.UInt32;
      --  The last outlink descriptor address when EOF occurs of Tx channel 0
      OUT_EOF_BFR_DES_ADDR_CH4 : aliased SVD.UInt32;
      --  Current inlink descriptor address of Tx channel 0
      OUT_DSCR_CH4             : aliased SVD.UInt32;
      --  The last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF0_CH4         : aliased SVD.UInt32;
      --  The second-to-last inlink descriptor address of Tx channel 0
      OUT_DSCR_BF1_CH4         : aliased SVD.UInt32;
      --  Weight register of Rx channel 0
      OUT_WIGHT_CH4            : aliased OUT_WIGHT_CH_Register;
      --  Priority register of Tx channel 0.
      OUT_PRI_CH4              : aliased OUT_PRI_CH_Register;
      --  Peripheral selection of Tx channel 0
      OUT_PERI_SEL_CH4         : aliased OUT_PERI_SEL_CH_Register;
      --  reserved
      AHB_TEST                 : aliased AHB_TEST_Register;
      --  reserved
      PD_CONF                  : aliased PD_CONF_Register;
      --  MISC register
      MISC_CONF                : aliased MISC_CONF_Register;
      --  Receive L2 FIFO depth of Rx channel 0
      IN_SRAM_SIZE_CH0         : aliased IN_SRAM_SIZE_CH_Register;
      --  Transmit L2 FIFO depth of Tx channel 0
      OUT_SRAM_SIZE_CH0        : aliased OUT_SRAM_SIZE_CH_Register;
      --  Receive L2 FIFO depth of Rx channel 0
      IN_SRAM_SIZE_CH1         : aliased IN_SRAM_SIZE_CH_Register;
      --  Transmit L2 FIFO depth of Tx channel 0
      OUT_SRAM_SIZE_CH1        : aliased OUT_SRAM_SIZE_CH_Register;
      --  Receive L2 FIFO depth of Rx channel 0
      IN_SRAM_SIZE_CH2         : aliased IN_SRAM_SIZE_CH_Register;
      --  Transmit L2 FIFO depth of Tx channel 0
      OUT_SRAM_SIZE_CH2        : aliased OUT_SRAM_SIZE_CH_Register;
      --  Receive L2 FIFO depth of Rx channel 0
      IN_SRAM_SIZE_CH3         : aliased IN_SRAM_SIZE_CH_Register;
      --  Transmit L2 FIFO depth of Tx channel 0
      OUT_SRAM_SIZE_CH3        : aliased OUT_SRAM_SIZE_CH_Register;
      --  Receive L2 FIFO depth of Rx channel 0
      IN_SRAM_SIZE_CH4         : aliased IN_SRAM_SIZE_CH_Register;
      --  Transmit L2 FIFO depth of Tx channel 0
      OUT_SRAM_SIZE_CH4        : aliased OUT_SRAM_SIZE_CH_Register;
      --  Reject address accessing external RAM
      EXTMEM_REJECT_ADDR       : aliased SVD.UInt32;
      --  Reject status accessing external RAM
      EXTMEM_REJECT_ST         : aliased EXTMEM_REJECT_ST_Register;
      --  Raw interrupt status of external RAM permission
      EXTMEM_REJECT_INT_RAW    : aliased EXTMEM_REJECT_INT_RAW_Register;
      --  Masked interrupt status of external RAM permission
      EXTMEM_REJECT_INT_ST     : aliased EXTMEM_REJECT_INT_ST_Register;
      --  Interrupt enable bits of external RAM permission
      EXTMEM_REJECT_INT_ENA    : aliased EXTMEM_REJECT_INT_ENA_Register;
      --  Interrupt clear bits of external RAM permission
      EXTMEM_REJECT_INT_CLR    : aliased EXTMEM_REJECT_INT_CLR_Register;
      --  Version control register
      DATE                     : aliased SVD.UInt32;
   end record
     with Volatile;

   for DMA_Peripheral use record
      IN_CONF0_CH0             at 16#0# range 0 .. 31;
      IN_CONF1_CH0             at 16#4# range 0 .. 31;
      IN_INT_RAW_CH0           at 16#8# range 0 .. 31;
      IN_INT_ST_CH0            at 16#C# range 0 .. 31;
      IN_INT_ENA_CH0           at 16#10# range 0 .. 31;
      IN_INT_CLR_CH0           at 16#14# range 0 .. 31;
      INFIFO_STATUS_CH0        at 16#18# range 0 .. 31;
      IN_POP_CH0               at 16#1C# range 0 .. 31;
      IN_LINK_CH0              at 16#20# range 0 .. 31;
      IN_STATE_CH0             at 16#24# range 0 .. 31;
      IN_SUC_EOF_DES_ADDR_CH0  at 16#28# range 0 .. 31;
      IN_ERR_EOF_DES_ADDR_CH0  at 16#2C# range 0 .. 31;
      IN_DSCR_CH0              at 16#30# range 0 .. 31;
      IN_DSCR_BF0_CH0          at 16#34# range 0 .. 31;
      IN_DSCR_BF1_CH0          at 16#38# range 0 .. 31;
      IN_WIGHT_CH0             at 16#3C# range 0 .. 31;
      IN_PRI_CH0               at 16#44# range 0 .. 31;
      IN_PERI_SEL_CH0          at 16#48# range 0 .. 31;
      OUT_CONF0_CH0            at 16#60# range 0 .. 31;
      OUT_CONF1_CH0            at 16#64# range 0 .. 31;
      OUT_INT_RAW_CH0          at 16#68# range 0 .. 31;
      OUT_INT_ST_CH0           at 16#6C# range 0 .. 31;
      OUT_INT_ENA_CH0          at 16#70# range 0 .. 31;
      OUT_INT_CLR_CH0          at 16#74# range 0 .. 31;
      OUTFIFO_STATUS_CH0       at 16#78# range 0 .. 31;
      OUT_PUSH_CH0             at 16#7C# range 0 .. 31;
      OUT_LINK_CH0             at 16#80# range 0 .. 31;
      OUT_STATE_CH0            at 16#84# range 0 .. 31;
      OUT_EOF_DES_ADDR_CH0     at 16#88# range 0 .. 31;
      OUT_EOF_BFR_DES_ADDR_CH0 at 16#8C# range 0 .. 31;
      OUT_DSCR_CH0             at 16#90# range 0 .. 31;
      OUT_DSCR_BF0_CH0         at 16#94# range 0 .. 31;
      OUT_DSCR_BF1_CH0         at 16#98# range 0 .. 31;
      OUT_WIGHT_CH0            at 16#9C# range 0 .. 31;
      OUT_PRI_CH0              at 16#A4# range 0 .. 31;
      OUT_PERI_SEL_CH0         at 16#A8# range 0 .. 31;
      IN_CONF0_CH1             at 16#C0# range 0 .. 31;
      IN_CONF1_CH1             at 16#C4# range 0 .. 31;
      IN_INT_RAW_CH1           at 16#C8# range 0 .. 31;
      IN_INT_ST_CH1            at 16#CC# range 0 .. 31;
      IN_INT_ENA_CH1           at 16#D0# range 0 .. 31;
      IN_INT_CLR_CH1           at 16#D4# range 0 .. 31;
      INFIFO_STATUS_CH1        at 16#D8# range 0 .. 31;
      IN_POP_CH1               at 16#DC# range 0 .. 31;
      IN_LINK_CH1              at 16#E0# range 0 .. 31;
      IN_STATE_CH1             at 16#E4# range 0 .. 31;
      IN_SUC_EOF_DES_ADDR_CH1  at 16#E8# range 0 .. 31;
      IN_ERR_EOF_DES_ADDR_CH1  at 16#EC# range 0 .. 31;
      IN_DSCR_CH1              at 16#F0# range 0 .. 31;
      IN_DSCR_BF0_CH1          at 16#F4# range 0 .. 31;
      IN_DSCR_BF1_CH1          at 16#F8# range 0 .. 31;
      IN_WIGHT_CH1             at 16#FC# range 0 .. 31;
      IN_PRI_CH1               at 16#104# range 0 .. 31;
      IN_PERI_SEL_CH1          at 16#108# range 0 .. 31;
      OUT_CONF0_CH1            at 16#120# range 0 .. 31;
      OUT_CONF1_CH1            at 16#124# range 0 .. 31;
      OUT_INT_RAW_CH1          at 16#128# range 0 .. 31;
      OUT_INT_ST_CH1           at 16#12C# range 0 .. 31;
      OUT_INT_ENA_CH1          at 16#130# range 0 .. 31;
      OUT_INT_CLR_CH1          at 16#134# range 0 .. 31;
      OUTFIFO_STATUS_CH1       at 16#138# range 0 .. 31;
      OUT_PUSH_CH1             at 16#13C# range 0 .. 31;
      OUT_LINK_CH1             at 16#140# range 0 .. 31;
      OUT_STATE_CH1            at 16#144# range 0 .. 31;
      OUT_EOF_DES_ADDR_CH1     at 16#148# range 0 .. 31;
      OUT_EOF_BFR_DES_ADDR_CH1 at 16#14C# range 0 .. 31;
      OUT_DSCR_CH1             at 16#150# range 0 .. 31;
      OUT_DSCR_BF0_CH1         at 16#154# range 0 .. 31;
      OUT_DSCR_BF1_CH1         at 16#158# range 0 .. 31;
      OUT_WIGHT_CH1            at 16#15C# range 0 .. 31;
      OUT_PRI_CH1              at 16#164# range 0 .. 31;
      OUT_PERI_SEL_CH1         at 16#168# range 0 .. 31;
      IN_CONF0_CH2             at 16#180# range 0 .. 31;
      IN_CONF1_CH2             at 16#184# range 0 .. 31;
      IN_INT_RAW_CH2           at 16#188# range 0 .. 31;
      IN_INT_ST_CH2            at 16#18C# range 0 .. 31;
      IN_INT_ENA_CH2           at 16#190# range 0 .. 31;
      IN_INT_CLR_CH2           at 16#194# range 0 .. 31;
      INFIFO_STATUS_CH2        at 16#198# range 0 .. 31;
      IN_POP_CH2               at 16#19C# range 0 .. 31;
      IN_LINK_CH2              at 16#1A0# range 0 .. 31;
      IN_STATE_CH2             at 16#1A4# range 0 .. 31;
      IN_SUC_EOF_DES_ADDR_CH2  at 16#1A8# range 0 .. 31;
      IN_ERR_EOF_DES_ADDR_CH2  at 16#1AC# range 0 .. 31;
      IN_DSCR_CH2              at 16#1B0# range 0 .. 31;
      IN_DSCR_BF0_CH2          at 16#1B4# range 0 .. 31;
      IN_DSCR_BF1_CH2          at 16#1B8# range 0 .. 31;
      IN_WIGHT_CH2             at 16#1BC# range 0 .. 31;
      IN_PRI_CH2               at 16#1C4# range 0 .. 31;
      IN_PERI_SEL_CH2          at 16#1C8# range 0 .. 31;
      OUT_CONF0_CH2            at 16#1E0# range 0 .. 31;
      OUT_CONF1_CH2            at 16#1E4# range 0 .. 31;
      OUT_INT_RAW_CH2          at 16#1E8# range 0 .. 31;
      OUT_INT_ST_CH2           at 16#1EC# range 0 .. 31;
      OUT_INT_ENA_CH2          at 16#1F0# range 0 .. 31;
      OUT_INT_CLR_CH2          at 16#1F4# range 0 .. 31;
      OUTFIFO_STATUS_CH2       at 16#1F8# range 0 .. 31;
      OUT_PUSH_CH2             at 16#1FC# range 0 .. 31;
      OUT_LINK_CH2             at 16#200# range 0 .. 31;
      OUT_STATE_CH2            at 16#204# range 0 .. 31;
      OUT_EOF_DES_ADDR_CH2     at 16#208# range 0 .. 31;
      OUT_EOF_BFR_DES_ADDR_CH2 at 16#20C# range 0 .. 31;
      OUT_DSCR_CH2             at 16#210# range 0 .. 31;
      OUT_DSCR_BF0_CH2         at 16#214# range 0 .. 31;
      OUT_DSCR_BF1_CH2         at 16#218# range 0 .. 31;
      OUT_WIGHT_CH2            at 16#21C# range 0 .. 31;
      OUT_PRI_CH2              at 16#224# range 0 .. 31;
      OUT_PERI_SEL_CH2         at 16#228# range 0 .. 31;
      IN_CONF0_CH3             at 16#240# range 0 .. 31;
      IN_CONF1_CH3             at 16#244# range 0 .. 31;
      IN_INT_RAW_CH3           at 16#248# range 0 .. 31;
      IN_INT_ST_CH3            at 16#24C# range 0 .. 31;
      IN_INT_ENA_CH3           at 16#250# range 0 .. 31;
      IN_INT_CLR_CH3           at 16#254# range 0 .. 31;
      INFIFO_STATUS_CH3        at 16#258# range 0 .. 31;
      IN_POP_CH3               at 16#25C# range 0 .. 31;
      IN_LINK_CH3              at 16#260# range 0 .. 31;
      IN_STATE_CH3             at 16#264# range 0 .. 31;
      IN_SUC_EOF_DES_ADDR_CH3  at 16#268# range 0 .. 31;
      IN_ERR_EOF_DES_ADDR_CH3  at 16#26C# range 0 .. 31;
      IN_DSCR_CH3              at 16#270# range 0 .. 31;
      IN_DSCR_BF0_CH3          at 16#274# range 0 .. 31;
      IN_DSCR_BF1_CH3          at 16#278# range 0 .. 31;
      IN_WIGHT_CH3             at 16#27C# range 0 .. 31;
      IN_PRI_CH3               at 16#284# range 0 .. 31;
      IN_PERI_SEL_CH3          at 16#288# range 0 .. 31;
      OUT_CONF0_CH3            at 16#2A0# range 0 .. 31;
      OUT_CONF1_CH3            at 16#2A4# range 0 .. 31;
      OUT_INT_RAW_CH3          at 16#2A8# range 0 .. 31;
      OUT_INT_ST_CH3           at 16#2AC# range 0 .. 31;
      OUT_INT_ENA_CH3          at 16#2B0# range 0 .. 31;
      OUT_INT_CLR_CH3          at 16#2B4# range 0 .. 31;
      OUTFIFO_STATUS_CH3       at 16#2B8# range 0 .. 31;
      OUT_PUSH_CH3             at 16#2BC# range 0 .. 31;
      OUT_LINK_CH3             at 16#2C0# range 0 .. 31;
      OUT_STATE_CH3            at 16#2C4# range 0 .. 31;
      OUT_EOF_DES_ADDR_CH3     at 16#2C8# range 0 .. 31;
      OUT_EOF_BFR_DES_ADDR_CH3 at 16#2CC# range 0 .. 31;
      OUT_DSCR_CH3             at 16#2D0# range 0 .. 31;
      OUT_DSCR_BF0_CH3         at 16#2D4# range 0 .. 31;
      OUT_DSCR_BF1_CH3         at 16#2D8# range 0 .. 31;
      OUT_WIGHT_CH3            at 16#2DC# range 0 .. 31;
      OUT_PRI_CH3              at 16#2E4# range 0 .. 31;
      OUT_PERI_SEL_CH3         at 16#2E8# range 0 .. 31;
      IN_CONF0_CH4             at 16#300# range 0 .. 31;
      IN_CONF1_CH4             at 16#304# range 0 .. 31;
      IN_INT_RAW_CH4           at 16#308# range 0 .. 31;
      IN_INT_ST_CH4            at 16#30C# range 0 .. 31;
      IN_INT_ENA_CH4           at 16#310# range 0 .. 31;
      IN_INT_CLR_CH4           at 16#314# range 0 .. 31;
      INFIFO_STATUS_CH4        at 16#318# range 0 .. 31;
      IN_POP_CH4               at 16#31C# range 0 .. 31;
      IN_LINK_CH4              at 16#320# range 0 .. 31;
      IN_STATE_CH4             at 16#324# range 0 .. 31;
      IN_SUC_EOF_DES_ADDR_CH4  at 16#328# range 0 .. 31;
      IN_ERR_EOF_DES_ADDR_CH4  at 16#32C# range 0 .. 31;
      IN_DSCR_CH4              at 16#330# range 0 .. 31;
      IN_DSCR_BF0_CH4          at 16#334# range 0 .. 31;
      IN_DSCR_BF1_CH4          at 16#338# range 0 .. 31;
      IN_WIGHT_CH4             at 16#33C# range 0 .. 31;
      IN_PRI_CH4               at 16#344# range 0 .. 31;
      IN_PERI_SEL_CH4          at 16#348# range 0 .. 31;
      OUT_CONF0_CH4            at 16#360# range 0 .. 31;
      OUT_CONF1_CH4            at 16#364# range 0 .. 31;
      OUT_INT_RAW_CH4          at 16#368# range 0 .. 31;
      OUT_INT_ST_CH4           at 16#36C# range 0 .. 31;
      OUT_INT_ENA_CH4          at 16#370# range 0 .. 31;
      OUT_INT_CLR_CH4          at 16#374# range 0 .. 31;
      OUTFIFO_STATUS_CH4       at 16#378# range 0 .. 31;
      OUT_PUSH_CH4             at 16#37C# range 0 .. 31;
      OUT_LINK_CH4             at 16#380# range 0 .. 31;
      OUT_STATE_CH4            at 16#384# range 0 .. 31;
      OUT_EOF_DES_ADDR_CH4     at 16#388# range 0 .. 31;
      OUT_EOF_BFR_DES_ADDR_CH4 at 16#38C# range 0 .. 31;
      OUT_DSCR_CH4             at 16#390# range 0 .. 31;
      OUT_DSCR_BF0_CH4         at 16#394# range 0 .. 31;
      OUT_DSCR_BF1_CH4         at 16#398# range 0 .. 31;
      OUT_WIGHT_CH4            at 16#39C# range 0 .. 31;
      OUT_PRI_CH4              at 16#3A4# range 0 .. 31;
      OUT_PERI_SEL_CH4         at 16#3A8# range 0 .. 31;
      AHB_TEST                 at 16#3C0# range 0 .. 31;
      PD_CONF                  at 16#3C4# range 0 .. 31;
      MISC_CONF                at 16#3C8# range 0 .. 31;
      IN_SRAM_SIZE_CH0         at 16#3CC# range 0 .. 31;
      OUT_SRAM_SIZE_CH0        at 16#3D0# range 0 .. 31;
      IN_SRAM_SIZE_CH1         at 16#3D4# range 0 .. 31;
      OUT_SRAM_SIZE_CH1        at 16#3D8# range 0 .. 31;
      IN_SRAM_SIZE_CH2         at 16#3DC# range 0 .. 31;
      OUT_SRAM_SIZE_CH2        at 16#3E0# range 0 .. 31;
      IN_SRAM_SIZE_CH3         at 16#3E4# range 0 .. 31;
      OUT_SRAM_SIZE_CH3        at 16#3E8# range 0 .. 31;
      IN_SRAM_SIZE_CH4         at 16#3EC# range 0 .. 31;
      OUT_SRAM_SIZE_CH4        at 16#3F0# range 0 .. 31;
      EXTMEM_REJECT_ADDR       at 16#3F4# range 0 .. 31;
      EXTMEM_REJECT_ST         at 16#3F8# range 0 .. 31;
      EXTMEM_REJECT_INT_RAW    at 16#3FC# range 0 .. 31;
      EXTMEM_REJECT_INT_ST     at 16#400# range 0 .. 31;
      EXTMEM_REJECT_INT_ENA    at 16#404# range 0 .. 31;
      EXTMEM_REJECT_INT_CLR    at 16#408# range 0 .. 31;
      DATE                     at 16#40C# range 0 .. 31;
   end record;

   --  DMA (Direct Memory Access) Controller
   DMA_Periph : aliased DMA_Peripheral
     with Import, Address => DMA_Base;

end SVD.DMA;
