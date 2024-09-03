pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.RTC_I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  configure low scl period
   type SCL_LOW_Register is record
      --  time period that scl =0
      PERIOD         : SVD.UInt20 := 16#100#;
      --  unspecified
      Reserved_20_31 : SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCL_LOW_Register use record
      PERIOD         at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  configure i2c ctrl
   type CTRL_Register is record
      --  1=push pull,0=open drain
      SDA_FORCE_OUT        : SVD.Bit := 16#0#;
      --  1=push pull,0=open drain
      SCL_FORCE_OUT        : SVD.Bit := 16#0#;
      --  1=master,0=slave
      MS_MODE              : SVD.Bit := 16#0#;
      --  force start
      TRANS_START          : SVD.Bit := 16#0#;
      --  transit lsb first
      TX_LSB_FIRST         : SVD.Bit := 16#0#;
      --  receive lsb first
      RX_LSB_FIRST         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_28        : SVD.UInt23 := 16#0#;
      --  configure i2c ctrl clk enable
      I2C_CTRL_CLK_GATE_EN : SVD.Bit := 16#0#;
      --  rtc i2c sw reset
      I2C_RESET            : SVD.Bit := 16#0#;
      --  rtc i2c reg clk gating
      I2CCLK_EN            : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      SDA_FORCE_OUT        at 0 range 0 .. 0;
      SCL_FORCE_OUT        at 0 range 1 .. 1;
      MS_MODE              at 0 range 2 .. 2;
      TRANS_START          at 0 range 3 .. 3;
      TX_LSB_FIRST         at 0 range 4 .. 4;
      RX_LSB_FIRST         at 0 range 5 .. 5;
      Reserved_6_28        at 0 range 6 .. 28;
      I2C_CTRL_CLK_GATE_EN at 0 range 29 .. 29;
      I2C_RESET            at 0 range 30 .. 30;
      I2CCLK_EN            at 0 range 31 .. 31;
   end record;

   --  get i2c status
   type STATUS_Register is record
      --  Read-only. ack response
      ACK_REC             : SVD.Bit;
      --  Read-only. slave read or write
      SLAVE_RW            : SVD.Bit;
      --  Read-only. arbitration is lost
      ARB_LOST            : SVD.Bit;
      --  Read-only. bus is busy
      BUS_BUSY            : SVD.Bit;
      --  Read-only. slave reg sub address
      SLAVE_ADDRESSED     : SVD.Bit;
      --  Read-only. One byte transit done
      BYTE_TRANS          : SVD.Bit;
      --  Read-only. which operation is working
      OP_CNT              : SVD.UInt2;
      --  unspecified
      Reserved_8_15       : SVD.Byte;
      --  Read-only. shifter content
      SHIFT               : SVD.Byte;
      --  Read-only. i2c last main status
      SCL_MAIN_STATE_LAST : SVD.UInt3;
      --  unspecified
      Reserved_27_27      : SVD.Bit;
      --  Read-only. scl last status
      SCL_STATE_LAST      : SVD.UInt3;
      --  unspecified
      Reserved_31_31      : SVD.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      ACK_REC             at 0 range 0 .. 0;
      SLAVE_RW            at 0 range 1 .. 1;
      ARB_LOST            at 0 range 2 .. 2;
      BUS_BUSY            at 0 range 3 .. 3;
      SLAVE_ADDRESSED     at 0 range 4 .. 4;
      BYTE_TRANS          at 0 range 5 .. 5;
      OP_CNT              at 0 range 6 .. 7;
      Reserved_8_15       at 0 range 8 .. 15;
      SHIFT               at 0 range 16 .. 23;
      SCL_MAIN_STATE_LAST at 0 range 24 .. 26;
      Reserved_27_27      at 0 range 27 .. 27;
      SCL_STATE_LAST      at 0 range 28 .. 30;
      Reserved_31_31      at 0 range 31 .. 31;
   end record;

   --  configure time out
   type TO_Register is record
      --  time out threshold
      TIME_OUT       : SVD.UInt20 := 16#10000#;
      --  unspecified
      Reserved_20_31 : SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TO_Register use record
      TIME_OUT       at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  configure slave id
   type SLAVE_ADDR_Register is record
      --  slave address
      SLAVE_ADDR     : SVD.UInt15 := 16#0#;
      --  unspecified
      Reserved_15_30 : SVD.UInt16 := 16#0#;
      --  i2c 10bit mode enable
      ADDR_10BIT_EN  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLAVE_ADDR_Register use record
      SLAVE_ADDR     at 0 range 0 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      ADDR_10BIT_EN  at 0 range 31 .. 31;
   end record;

   --  configure high scl period
   type SCL_HIGH_Register is record
      --  time period that scl = 1
      PERIOD         : SVD.UInt20 := 16#100#;
      --  unspecified
      Reserved_20_31 : SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCL_HIGH_Register use record
      PERIOD         at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  configure sda duty
   type SDA_DUTY_Register is record
      --  time period for SDA to toggle after SCL goes low
      NUM            : SVD.UInt20 := 16#10#;
      --  unspecified
      Reserved_20_31 : SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDA_DUTY_Register use record
      NUM            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  configure scl start period
   type SCL_START_PERIOD_Register is record
      --  time period for SCL to toggle after I2C start is triggered
      SCL_START_PERIOD : SVD.UInt20 := 16#8#;
      --  unspecified
      Reserved_20_31   : SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCL_START_PERIOD_Register use record
      SCL_START_PERIOD at 0 range 0 .. 19;
      Reserved_20_31   at 0 range 20 .. 31;
   end record;

   --  configure scl stop period
   type SCL_STOP_PERIOD_Register is record
      --  time period for SCL to stop after I2C end is triggered
      SCL_STOP_PERIOD : SVD.UInt20 := 16#8#;
      --  unspecified
      Reserved_20_31  : SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCL_STOP_PERIOD_Register use record
      SCL_STOP_PERIOD at 0 range 0 .. 19;
      Reserved_20_31  at 0 range 20 .. 31;
   end record;

   --  interrupt clear register
   type INT_CLR_Register is record
      --  Write-only. clear slave transit complete interrupt
      SLAVE_TRAN_COMP_INT_CLR  : SVD.Bit := 16#0#;
      --  Write-only. clear arbitration lost interrupt
      ARBITRATION_LOST_INT_CLR : SVD.Bit := 16#0#;
      --  Write-only. clear master transit complete interrupt
      MASTER_TRAN_COMP_INT_CLR : SVD.Bit := 16#0#;
      --  Write-only. clear transit complete interrupt
      TRANS_COMPLETE_INT_CLR   : SVD.Bit := 16#0#;
      --  Write-only. clear time out interrupt
      TIME_OUT_INT_CLR         : SVD.Bit := 16#0#;
      --  Write-only. clear ack error interrupt
      ACK_ERR_INT_CLR          : SVD.Bit := 16#0#;
      --  Write-only. clear receive data interrupt
      RX_DATA_INT_CLR          : SVD.Bit := 16#0#;
      --  Write-only. clear transit load data complete interrupt
      TX_DATA_INT_CLR          : SVD.Bit := 16#0#;
      --  Write-only. clear detect start interrupt
      DETECT_START_INT_CLR     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_9_31            : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      SLAVE_TRAN_COMP_INT_CLR  at 0 range 0 .. 0;
      ARBITRATION_LOST_INT_CLR at 0 range 1 .. 1;
      MASTER_TRAN_COMP_INT_CLR at 0 range 2 .. 2;
      TRANS_COMPLETE_INT_CLR   at 0 range 3 .. 3;
      TIME_OUT_INT_CLR         at 0 range 4 .. 4;
      ACK_ERR_INT_CLR          at 0 range 5 .. 5;
      RX_DATA_INT_CLR          at 0 range 6 .. 6;
      TX_DATA_INT_CLR          at 0 range 7 .. 7;
      DETECT_START_INT_CLR     at 0 range 8 .. 8;
      Reserved_9_31            at 0 range 9 .. 31;
   end record;

   --  interrupt raw register
   type INT_RAW_Register is record
      --  Read-only. slave transit complete interrupt raw
      SLAVE_TRAN_COMP_INT_RAW  : SVD.Bit;
      --  Read-only. arbitration lost interrupt raw
      ARBITRATION_LOST_INT_RAW : SVD.Bit;
      --  Read-only. master transit complete interrupt raw
      MASTER_TRAN_COMP_INT_RAW : SVD.Bit;
      --  Read-only. transit complete interrupt raw
      TRANS_COMPLETE_INT_RAW   : SVD.Bit;
      --  Read-only. time out interrupt raw
      TIME_OUT_INT_RAW         : SVD.Bit;
      --  Read-only. ack error interrupt raw
      ACK_ERR_INT_RAW          : SVD.Bit;
      --  Read-only. receive data interrupt raw
      RX_DATA_INT_RAW          : SVD.Bit;
      --  Read-only. transit data interrupt raw
      TX_DATA_INT_RAW          : SVD.Bit;
      --  Read-only. detect start interrupt raw
      DETECT_START_INT_RAW     : SVD.Bit;
      --  unspecified
      Reserved_9_31            : SVD.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      SLAVE_TRAN_COMP_INT_RAW  at 0 range 0 .. 0;
      ARBITRATION_LOST_INT_RAW at 0 range 1 .. 1;
      MASTER_TRAN_COMP_INT_RAW at 0 range 2 .. 2;
      TRANS_COMPLETE_INT_RAW   at 0 range 3 .. 3;
      TIME_OUT_INT_RAW         at 0 range 4 .. 4;
      ACK_ERR_INT_RAW          at 0 range 5 .. 5;
      RX_DATA_INT_RAW          at 0 range 6 .. 6;
      TX_DATA_INT_RAW          at 0 range 7 .. 7;
      DETECT_START_INT_RAW     at 0 range 8 .. 8;
      Reserved_9_31            at 0 range 9 .. 31;
   end record;

   --  interrupt state register
   type INT_ST_Register is record
      --  Read-only. slave transit complete interrupt state
      SLAVE_TRAN_COMP_INT_ST  : SVD.Bit;
      --  Read-only. arbitration lost interrupt state
      ARBITRATION_LOST_INT_ST : SVD.Bit;
      --  Read-only. master transit complete interrupt state
      MASTER_TRAN_COMP_INT_ST : SVD.Bit;
      --  Read-only. transit complete interrupt state
      TRANS_COMPLETE_INT_ST   : SVD.Bit;
      --  Read-only. time out interrupt state
      TIME_OUT_INT_ST         : SVD.Bit;
      --  Read-only. ack error interrupt state
      ACK_ERR_INT_ST          : SVD.Bit;
      --  Read-only. receive data interrupt state
      RX_DATA_INT_ST          : SVD.Bit;
      --  Read-only. transit data interrupt state
      TX_DATA_INT_ST          : SVD.Bit;
      --  Read-only. detect start interrupt state
      DETECT_START_INT_ST     : SVD.Bit;
      --  unspecified
      Reserved_9_31           : SVD.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      SLAVE_TRAN_COMP_INT_ST  at 0 range 0 .. 0;
      ARBITRATION_LOST_INT_ST at 0 range 1 .. 1;
      MASTER_TRAN_COMP_INT_ST at 0 range 2 .. 2;
      TRANS_COMPLETE_INT_ST   at 0 range 3 .. 3;
      TIME_OUT_INT_ST         at 0 range 4 .. 4;
      ACK_ERR_INT_ST          at 0 range 5 .. 5;
      RX_DATA_INT_ST          at 0 range 6 .. 6;
      TX_DATA_INT_ST          at 0 range 7 .. 7;
      DETECT_START_INT_ST     at 0 range 8 .. 8;
      Reserved_9_31           at 0 range 9 .. 31;
   end record;

   --  interrupt enable register
   type INT_ENA_Register is record
      --  enable slave transit complete interrupt
      SLAVE_TRAN_COMP_INT_ENA  : SVD.Bit := 16#0#;
      --  enable arbitration lost interrupt
      ARBITRATION_LOST_INT_ENA : SVD.Bit := 16#0#;
      --  enable master transit complete interrupt
      MASTER_TRAN_COMP_INT_ENA : SVD.Bit := 16#0#;
      --  enable transit complete interrupt
      TRANS_COMPLETE_INT_ENA   : SVD.Bit := 16#0#;
      --  enable time out interrupt
      TIME_OUT_INT_ENA         : SVD.Bit := 16#0#;
      --  enable eack error interrupt
      ACK_ERR_INT_ENA          : SVD.Bit := 16#0#;
      --  enable receive data interrupt
      RX_DATA_INT_ENA          : SVD.Bit := 16#0#;
      --  enable transit data interrupt
      TX_DATA_INT_ENA          : SVD.Bit := 16#0#;
      --  enable detect start interrupt
      DETECT_START_INT_ENA     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_9_31            : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      SLAVE_TRAN_COMP_INT_ENA  at 0 range 0 .. 0;
      ARBITRATION_LOST_INT_ENA at 0 range 1 .. 1;
      MASTER_TRAN_COMP_INT_ENA at 0 range 2 .. 2;
      TRANS_COMPLETE_INT_ENA   at 0 range 3 .. 3;
      TIME_OUT_INT_ENA         at 0 range 4 .. 4;
      ACK_ERR_INT_ENA          at 0 range 5 .. 5;
      RX_DATA_INT_ENA          at 0 range 6 .. 6;
      TX_DATA_INT_ENA          at 0 range 7 .. 7;
      DETECT_START_INT_ENA     at 0 range 8 .. 8;
      Reserved_9_31            at 0 range 9 .. 31;
   end record;

   --  get i2c data status
   type DATA_Register is record
      --  Read-only. data received
      I2C_RDATA      : SVD.Byte := 16#0#;
      --  data sent by slave
      SLAVE_TX_DATA  : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_16_30 : SVD.UInt15 := 16#0#;
      --  Read-only. i2c done
      I2C_DONE       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_Register use record
      I2C_RDATA      at 0 range 0 .. 7;
      SLAVE_TX_DATA  at 0 range 8 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      I2C_DONE       at 0 range 31 .. 31;
   end record;

   --  i2c commond0 register
   type CMD0_Register is record
      --  command0
      COMMAND0       : SVD.UInt14 := 16#903#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command0_done
      COMMAND0_DONE  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD0_Register use record
      COMMAND0       at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND0_DONE  at 0 range 31 .. 31;
   end record;

   --  i2c commond1 register
   type CMD1_Register is record
      --  command1
      COMMAND1       : SVD.UInt14 := 16#1901#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command1_done
      COMMAND1_DONE  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD1_Register use record
      COMMAND1       at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND1_DONE  at 0 range 31 .. 31;
   end record;

   --  i2c commond2 register
   type CMD2_Register is record
      --  command2
      COMMAND2       : SVD.UInt14 := 16#902#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command2_done
      COMMAND2_DONE  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD2_Register use record
      COMMAND2       at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND2_DONE  at 0 range 31 .. 31;
   end record;

   --  i2c commond3 register
   type CMD3_Register is record
      --  command3
      COMMAND3       : SVD.UInt14 := 16#101#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command3_done
      COMMAND3_DONE  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD3_Register use record
      COMMAND3       at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND3_DONE  at 0 range 31 .. 31;
   end record;

   --  i2c commond4 register
   type CMD4_Register is record
      --  command4
      COMMAND4       : SVD.UInt14 := 16#901#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command4_done
      COMMAND4_DONE  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD4_Register use record
      COMMAND4       at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND4_DONE  at 0 range 31 .. 31;
   end record;

   --  i2c commond5_register
   type CMD5_Register is record
      --  command5
      COMMAND5       : SVD.UInt14 := 16#1701#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command5_done
      COMMAND5_DONE  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD5_Register use record
      COMMAND5       at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND5_DONE  at 0 range 31 .. 31;
   end record;

   --  i2c commond6 register
   type CMD6_Register is record
      --  command6
      COMMAND6       : SVD.UInt14 := 16#1901#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command6_done
      COMMAND6_DONE  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD6_Register use record
      COMMAND6       at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND6_DONE  at 0 range 31 .. 31;
   end record;

   --  i2c commond7 register
   type CMD7_Register is record
      --  command7
      COMMAND7       : SVD.UInt14 := 16#904#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command7_done
      COMMAND7_DONE  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD7_Register use record
      COMMAND7       at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND7_DONE  at 0 range 31 .. 31;
   end record;

   --  i2c commond8 register
   type CMD8_Register is record
      --  command8
      COMMAND8       : SVD.UInt14 := 16#1901#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command8_done
      COMMAND8_DONE  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD8_Register use record
      COMMAND8       at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND8_DONE  at 0 range 31 .. 31;
   end record;

   --  i2c commond9 register
   type CMD9_Register is record
      --  command9
      COMMAND9       : SVD.UInt14 := 16#903#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command9_done
      COMMAND9_DONE  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD9_Register use record
      COMMAND9       at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND9_DONE  at 0 range 31 .. 31;
   end record;

   --  i2c commond10 register
   type CMD10_Register is record
      --  command10
      COMMAND10      : SVD.UInt14 := 16#101#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command10_done
      COMMAND10_DONE : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD10_Register use record
      COMMAND10      at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND10_DONE at 0 range 31 .. 31;
   end record;

   --  i2c commond11 register
   type CMD11_Register is record
      --  command11
      COMMAND11      : SVD.UInt14 := 16#901#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command11_done
      COMMAND11_DONE : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD11_Register use record
      COMMAND11      at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND11_DONE at 0 range 31 .. 31;
   end record;

   --  i2c commond12 register
   type CMD12_Register is record
      --  command12
      COMMAND12      : SVD.UInt14 := 16#1701#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command12_done
      COMMAND12_DONE : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD12_Register use record
      COMMAND12      at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND12_DONE at 0 range 31 .. 31;
   end record;

   --  i2c commond13 register
   type CMD13_Register is record
      --  command13
      COMMAND13      : SVD.UInt14 := 16#1901#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command13_done
      COMMAND13_DONE : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD13_Register use record
      COMMAND13      at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND13_DONE at 0 range 31 .. 31;
   end record;

   --  i2c commond14 register
   type CMD14_Register is record
      --  command14
      COMMAND14      : SVD.UInt14 := 16#0#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command14_done
      COMMAND14_DONE : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD14_Register use record
      COMMAND14      at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND14_DONE at 0 range 31 .. 31;
   end record;

   --  i2c commond15 register
   type CMD15_Register is record
      --  command15
      COMMAND15      : SVD.UInt14 := 16#0#;
      --  unspecified
      Reserved_14_30 : SVD.UInt17 := 16#0#;
      --  Read-only. command15_done
      COMMAND15_DONE : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD15_Register use record
      COMMAND15      at 0 range 0 .. 13;
      Reserved_14_30 at 0 range 14 .. 30;
      COMMAND15_DONE at 0 range 31 .. 31;
   end record;

   --  version register
   type DATE_Register is record
      --  version
      I2C_DATE       : SVD.UInt28 := 16#1905310#;
      --  unspecified
      Reserved_28_31 : SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      I2C_DATE       at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Low-power I2C (Inter-Integrated Circuit) Controller
   type RTC_I2C_Peripheral is record
      --  configure low scl period
      SCL_LOW          : aliased SCL_LOW_Register;
      --  configure i2c ctrl
      CTRL             : aliased CTRL_Register;
      --  get i2c status
      STATUS           : aliased STATUS_Register;
      --  configure time out
      TO               : aliased TO_Register;
      --  configure slave id
      SLAVE_ADDR       : aliased SLAVE_ADDR_Register;
      --  configure high scl period
      SCL_HIGH         : aliased SCL_HIGH_Register;
      --  configure sda duty
      SDA_DUTY         : aliased SDA_DUTY_Register;
      --  configure scl start period
      SCL_START_PERIOD : aliased SCL_START_PERIOD_Register;
      --  configure scl stop period
      SCL_STOP_PERIOD  : aliased SCL_STOP_PERIOD_Register;
      --  interrupt clear register
      INT_CLR          : aliased INT_CLR_Register;
      --  interrupt raw register
      INT_RAW          : aliased INT_RAW_Register;
      --  interrupt state register
      INT_ST           : aliased INT_ST_Register;
      --  interrupt enable register
      INT_ENA          : aliased INT_ENA_Register;
      --  get i2c data status
      DATA             : aliased DATA_Register;
      --  i2c commond0 register
      CMD0             : aliased CMD0_Register;
      --  i2c commond1 register
      CMD1             : aliased CMD1_Register;
      --  i2c commond2 register
      CMD2             : aliased CMD2_Register;
      --  i2c commond3 register
      CMD3             : aliased CMD3_Register;
      --  i2c commond4 register
      CMD4             : aliased CMD4_Register;
      --  i2c commond5_register
      CMD5             : aliased CMD5_Register;
      --  i2c commond6 register
      CMD6             : aliased CMD6_Register;
      --  i2c commond7 register
      CMD7             : aliased CMD7_Register;
      --  i2c commond8 register
      CMD8             : aliased CMD8_Register;
      --  i2c commond9 register
      CMD9             : aliased CMD9_Register;
      --  i2c commond10 register
      CMD10            : aliased CMD10_Register;
      --  i2c commond11 register
      CMD11            : aliased CMD11_Register;
      --  i2c commond12 register
      CMD12            : aliased CMD12_Register;
      --  i2c commond13 register
      CMD13            : aliased CMD13_Register;
      --  i2c commond14 register
      CMD14            : aliased CMD14_Register;
      --  i2c commond15 register
      CMD15            : aliased CMD15_Register;
      --  version register
      DATE             : aliased DATE_Register;
   end record
     with Volatile;

   for RTC_I2C_Peripheral use record
      SCL_LOW          at 16#0# range 0 .. 31;
      CTRL             at 16#4# range 0 .. 31;
      STATUS           at 16#8# range 0 .. 31;
      TO               at 16#C# range 0 .. 31;
      SLAVE_ADDR       at 16#10# range 0 .. 31;
      SCL_HIGH         at 16#14# range 0 .. 31;
      SDA_DUTY         at 16#18# range 0 .. 31;
      SCL_START_PERIOD at 16#1C# range 0 .. 31;
      SCL_STOP_PERIOD  at 16#20# range 0 .. 31;
      INT_CLR          at 16#24# range 0 .. 31;
      INT_RAW          at 16#28# range 0 .. 31;
      INT_ST           at 16#2C# range 0 .. 31;
      INT_ENA          at 16#30# range 0 .. 31;
      DATA             at 16#34# range 0 .. 31;
      CMD0             at 16#38# range 0 .. 31;
      CMD1             at 16#3C# range 0 .. 31;
      CMD2             at 16#40# range 0 .. 31;
      CMD3             at 16#44# range 0 .. 31;
      CMD4             at 16#48# range 0 .. 31;
      CMD5             at 16#4C# range 0 .. 31;
      CMD6             at 16#50# range 0 .. 31;
      CMD7             at 16#54# range 0 .. 31;
      CMD8             at 16#58# range 0 .. 31;
      CMD9             at 16#5C# range 0 .. 31;
      CMD10            at 16#60# range 0 .. 31;
      CMD11            at 16#64# range 0 .. 31;
      CMD12            at 16#68# range 0 .. 31;
      CMD13            at 16#6C# range 0 .. 31;
      CMD14            at 16#70# range 0 .. 31;
      CMD15            at 16#74# range 0 .. 31;
      DATE             at 16#FC# range 0 .. 31;
   end record;

   --  Low-power I2C (Inter-Integrated Circuit) Controller
   RTC_I2C_Periph : aliased RTC_I2C_Peripheral
     with Import, Address => RTC_I2C_Base;

end SVD.RTC_I2C;
