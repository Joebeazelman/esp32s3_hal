pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.TWAI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Mode Register
   type MODE_Register is record
      --  This bit is used to configure the operating mode of the TWAI
      --  Controller. 1: Reset mode; 0: Operating mode.
      RESET_MODE       : SVD.Bit := 16#1#;
      --  1: Listen only mode. In this mode the nodes will only receive
      --  messages from the bus, without generating the acknowledge signal nor
      --  updating the RX error counter.
      LISTEN_ONLY_MODE : SVD.Bit := 16#0#;
      --  1: Self test mode. In this mode the TX nodes can perform a successful
      --  transmission without receiving the acknowledge signal. This mode is
      --  often used to test a single node with the self reception request
      --  command.
      SELF_TEST_MODE   : SVD.Bit := 16#0#;
      --  This bit is used to configure the filter mode. 0: Dual filter mode;
      --  1: Single filter mode.
      RX_FILTER_MODE   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_4_31    : SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      RESET_MODE       at 0 range 0 .. 0;
      LISTEN_ONLY_MODE at 0 range 1 .. 1;
      SELF_TEST_MODE   at 0 range 2 .. 2;
      RX_FILTER_MODE   at 0 range 3 .. 3;
      Reserved_4_31    at 0 range 4 .. 31;
   end record;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Set the bit to 1 to allow the driving nodes start
      --  transmission.
      TX_REQ        : SVD.Bit := 16#0#;
      --  Write-only. Set the bit to 1 to cancel a pending transmission
      --  request.
      ABORT_TX      : SVD.Bit := 16#0#;
      --  Write-only. Set the bit to 1 to release the RX buffer.
      RELEASE_BUF   : SVD.Bit := 16#0#;
      --  Write-only. Set the bit to 1 to clear the data overrun status bit.
      CLR_OVERRUN   : SVD.Bit := 16#0#;
      --  Write-only. Self reception request command. Set the bit to 1 to allow
      --  a message be transmitted and received simultaneously.
      SELF_RX_REQ   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_5_31 : SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      TX_REQ        at 0 range 0 .. 0;
      ABORT_TX      at 0 range 1 .. 1;
      RELEASE_BUF   at 0 range 2 .. 2;
      CLR_OVERRUN   at 0 range 3 .. 3;
      SELF_RX_REQ   at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Status register
   type STATUS_Register is record
      --  Read-only. 1: The data in the RX buffer is not empty, with at least
      --  one received data packet.
      RX_BUF_ST     : SVD.Bit;
      --  Read-only. 1: The RX FIFO is full and data overrun has occurred.
      OVERRUN_ST    : SVD.Bit;
      --  Read-only. 1: The TX buffer is empty, the CPU may write a message
      --  into it.
      TX_BUF_ST     : SVD.Bit;
      --  Read-only. 1: The TWAI controller has successfully received a packet
      --  from the bus.
      TX_COMPLETE   : SVD.Bit;
      --  Read-only. 1: The TWAI Controller is receiving a message from the
      --  bus.
      RX_ST         : SVD.Bit;
      --  Read-only. 1: The TWAI Controller is transmitting a message to the
      --  bus.
      TX_ST         : SVD.Bit;
      --  Read-only. 1: At least one of the RX/TX error counter has reached or
      --  exceeded the value set in register TWAI_ERR_WARNING_LIMIT_REG.
      ERR_ST        : SVD.Bit;
      --  Read-only. 1: In bus-off status, the TWAI Controller is no longer
      --  involved in bus activities.
      BUS_OFF_ST    : SVD.Bit;
      --  Read-only. This bit reflects whether the data packet in the RX FIFO
      --  is complete. 1: The current packet is missing; 0: The current packet
      --  is complete
      MISS_ST       : SVD.Bit;
      --  unspecified
      Reserved_9_31 : SVD.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      RX_BUF_ST     at 0 range 0 .. 0;
      OVERRUN_ST    at 0 range 1 .. 1;
      TX_BUF_ST     at 0 range 2 .. 2;
      TX_COMPLETE   at 0 range 3 .. 3;
      RX_ST         at 0 range 4 .. 4;
      TX_ST         at 0 range 5 .. 5;
      ERR_ST        at 0 range 6 .. 6;
      BUS_OFF_ST    at 0 range 7 .. 7;
      MISS_ST       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Interrupt Register
   type INT_RAW_Register is record
      --  Read-only. Receive interrupt. If this bit is set to 1, it indicates
      --  there are messages to be handled in the RX FIFO.
      RX_INT_ST          : SVD.Bit;
      --  Read-only. Transmit interrupt. If this bit is set to 1, it indicates
      --  the message transmitting mis- sion is finished and a new transmission
      --  is able to execute.
      TX_INT_ST          : SVD.Bit;
      --  Read-only. Error warning interrupt. If this bit is set to 1, it
      --  indicates the error status signal and the bus-off status signal of
      --  Status register have changed (e.g., switched from 0 to 1 or from 1 to
      --  0).
      ERR_WARN_INT_ST    : SVD.Bit;
      --  Read-only. Data overrun interrupt. If this bit is set to 1, it
      --  indicates a data overrun interrupt is generated in the RX FIFO.
      OVERRUN_INT_ST     : SVD.Bit;
      --  unspecified
      Reserved_4_4       : SVD.Bit;
      --  Read-only. Error passive interrupt. If this bit is set to 1, it
      --  indicates the TWAI Controller is switched between error active status
      --  and error passive status due to the change of error counters.
      ERR_PASSIVE_INT_ST : SVD.Bit;
      --  Read-only. Arbitration lost interrupt. If this bit is set to 1, it
      --  indicates an arbitration lost interrupt is generated.
      ARB_LOST_INT_ST    : SVD.Bit;
      --  Read-only. Error interrupt. If this bit is set to 1, it indicates an
      --  error is detected on the bus.
      BUS_ERR_INT_ST     : SVD.Bit;
      --  unspecified
      Reserved_8_31      : SVD.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      RX_INT_ST          at 0 range 0 .. 0;
      TX_INT_ST          at 0 range 1 .. 1;
      ERR_WARN_INT_ST    at 0 range 2 .. 2;
      OVERRUN_INT_ST     at 0 range 3 .. 3;
      Reserved_4_4       at 0 range 4 .. 4;
      ERR_PASSIVE_INT_ST at 0 range 5 .. 5;
      ARB_LOST_INT_ST    at 0 range 6 .. 6;
      BUS_ERR_INT_ST     at 0 range 7 .. 7;
      Reserved_8_31      at 0 range 8 .. 31;
   end record;

   --  Interrupt Enable Register
   type INT_ENA_Register is record
      --  Set this bit to 1 to enable receive interrupt.
      RX_INT_ENA          : SVD.Bit := 16#0#;
      --  Set this bit to 1 to enable transmit interrupt.
      TX_INT_ENA          : SVD.Bit := 16#0#;
      --  Set this bit to 1 to enable error warning interrupt.
      ERR_WARN_INT_ENA    : SVD.Bit := 16#0#;
      --  Set this bit to 1 to enable data overrun interrupt.
      OVERRUN_INT_ENA     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_4_4        : SVD.Bit := 16#0#;
      --  Set this bit to 1 to enable error passive interrupt.
      ERR_PASSIVE_INT_ENA : SVD.Bit := 16#0#;
      --  Set this bit to 1 to enable arbitration lost interrupt.
      ARB_LOST_INT_ENA    : SVD.Bit := 16#0#;
      --  Set this bit to 1 to enable error interrupt.
      BUS_ERR_INT_ENA     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_8_31       : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      RX_INT_ENA          at 0 range 0 .. 0;
      TX_INT_ENA          at 0 range 1 .. 1;
      ERR_WARN_INT_ENA    at 0 range 2 .. 2;
      OVERRUN_INT_ENA     at 0 range 3 .. 3;
      Reserved_4_4        at 0 range 4 .. 4;
      ERR_PASSIVE_INT_ENA at 0 range 5 .. 5;
      ARB_LOST_INT_ENA    at 0 range 6 .. 6;
      BUS_ERR_INT_ENA     at 0 range 7 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   --  Bus Timing Register 0
   type BUS_TIMING_0_Register is record
      --  Baud Rate Prescaler, determines the frequency dividing ratio.
      BAUD_PRESC      : SVD.UInt14 := 16#0#;
      --  Synchronization Jump Width (SJW), 1 \verb+~+ 14 Tq wide.
      SYNC_JUMP_WIDTH : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUS_TIMING_0_Register use record
      BAUD_PRESC      at 0 range 0 .. 13;
      SYNC_JUMP_WIDTH at 0 range 14 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   --  Bus Timing Register 1
   type BUS_TIMING_1_Register is record
      --  The width of PBS1.
      TIME_SEG1     : SVD.UInt4 := 16#0#;
      --  The width of PBS2.
      TIME_SEG2     : SVD.UInt3 := 16#0#;
      --  The number of sample points. 0: the bus is sampled once; 1: the bus
      --  is sampled three times
      TIME_SAMP     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUS_TIMING_1_Register use record
      TIME_SEG1     at 0 range 0 .. 3;
      TIME_SEG2     at 0 range 4 .. 6;
      TIME_SAMP     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Arbitration Lost Capture Register
   type ARB_LOST_CAP_Register is record
      --  Read-only. This register contains information about the bit position
      --  of lost arbitration.
      ARB_LOST_CAP  : SVD.UInt5;
      --  unspecified
      Reserved_5_31 : SVD.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ARB_LOST_CAP_Register use record
      ARB_LOST_CAP  at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Error Code Capture Register
   type ERR_CODE_CAP_Register is record
      --  Read-only. This register contains information about the location of
      --  errors, see Table 181 for details.
      ECC_SEGMENT   : SVD.UInt5;
      --  Read-only. This register contains information about transmission
      --  direction of the node when error occurs. 1: Error occurs when
      --  receiving a message; 0: Error occurs when transmitting a message
      ECC_DIRECTION : SVD.Bit;
      --  Read-only. This register contains information about error types: 00:
      --  bit error; 01: form error; 10: stuff error; 11: other type of error
      ECC_TYPE      : SVD.UInt2;
      --  unspecified
      Reserved_8_31 : SVD.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERR_CODE_CAP_Register use record
      ECC_SEGMENT   at 0 range 0 .. 4;
      ECC_DIRECTION at 0 range 5 .. 5;
      ECC_TYPE      at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Error Warning Limit Register
   type ERR_WARNING_LIMIT_Register is record
      --  Error warning threshold. In the case when any of a error counter
      --  value exceeds the threshold, or all the error counter values are
      --  below the threshold, an error warning interrupt will be triggered
      --  (given the enable signal is valid).
      ERR_WARNING_LIMIT : SVD.Byte := 16#60#;
      --  unspecified
      Reserved_8_31     : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERR_WARNING_LIMIT_Register use record
      ERR_WARNING_LIMIT at 0 range 0 .. 7;
      Reserved_8_31     at 0 range 8 .. 31;
   end record;

   --  Receive Error Counter Register
   type RX_ERR_CNT_Register is record
      --  The RX error counter register, reflects value changes under reception
      --  status.
      RX_ERR_CNT    : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX_ERR_CNT_Register use record
      RX_ERR_CNT    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Transmit Error Counter Register
   type TX_ERR_CNT_Register is record
      --  The TX error counter register, reflects value changes under
      --  transmission status.
      TX_ERR_CNT    : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TX_ERR_CNT_Register use record
      TX_ERR_CNT    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 0
   type DATA_0_Register is record
      --  In reset mode, it is acceptance code register 0 with R/W Permission.
      --  In operation mode, it stores the 0th byte information of the data to
      --  be transmitted under operating mode.
      TX_BYTE_0     : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_0_Register use record
      TX_BYTE_0     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 1
   type DATA_1_Register is record
      --  In reset mode, it is acceptance code register 1 with R/W Permission.
      --  In operation mode, it stores the 1st byte information of the data to
      --  be transmitted under operating mode.
      TX_BYTE_1     : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_1_Register use record
      TX_BYTE_1     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 2
   type DATA_2_Register is record
      --  In reset mode, it is acceptance code register 2 with R/W Permission.
      --  In operation mode, it stores the 2nd byte information of the data to
      --  be transmitted under operating mode.
      TX_BYTE_2     : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_2_Register use record
      TX_BYTE_2     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 3
   type DATA_3_Register is record
      --  In reset mode, it is acceptance code register 3 with R/W Permission.
      --  In operation mode, it stores the 3rd byte information of the data to
      --  be transmitted under operating mode.
      TX_BYTE_3     : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_3_Register use record
      TX_BYTE_3     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 4
   type DATA_4_Register is record
      --  In reset mode, it is acceptance mask register 0 with R/W Permission.
      --  In operation mode, it stores the 4th byte information of the data to
      --  be transmitted under operating mode.
      TX_BYTE_4     : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_4_Register use record
      TX_BYTE_4     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 5
   type DATA_5_Register is record
      --  In reset mode, it is acceptance mask register 1 with R/W Permission.
      --  In operation mode, it stores the 5th byte information of the data to
      --  be transmitted under operating mode.
      TX_BYTE_5     : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_5_Register use record
      TX_BYTE_5     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 6
   type DATA_6_Register is record
      --  In reset mode, it is acceptance mask register 2 with R/W Permission.
      --  In operation mode, it stores the 6th byte information of the data to
      --  be transmitted under operating mode.
      TX_BYTE_6     : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_6_Register use record
      TX_BYTE_6     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 7
   type DATA_7_Register is record
      --  In reset mode, it is acceptance mask register 3 with R/W Permission.
      --  In operation mode, it stores the 7th byte information of the data to
      --  be transmitted under operating mode.
      TX_BYTE_7     : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_7_Register use record
      TX_BYTE_7     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 8
   type DATA_8_Register is record
      --  Stored the 8th byte information of the data to be transmitted under
      --  operating mode.
      TX_BYTE_8     : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_8_Register use record
      TX_BYTE_8     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 9
   type DATA_9_Register is record
      --  Stored the 9th byte information of the data to be transmitted under
      --  operating mode.
      TX_BYTE_9     : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_9_Register use record
      TX_BYTE_9     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 10
   type DATA_10_Register is record
      --  Stored the 10th byte information of the data to be transmitted under
      --  operating mode.
      TX_BYTE_10    : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_10_Register use record
      TX_BYTE_10    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 11
   type DATA_11_Register is record
      --  Stored the 11th byte information of the data to be transmitted under
      --  operating mode.
      TX_BYTE_11    : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_11_Register use record
      TX_BYTE_11    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data register 12
   type DATA_12_Register is record
      --  Stored the 12th byte information of the data to be transmitted under
      --  operating mode.
      TX_BYTE_12    : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA_12_Register use record
      TX_BYTE_12    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Receive Message Counter Register
   type RX_MESSAGE_CNT_Register is record
      --  Read-only. This register reflects the number of messages available
      --  within the RX FIFO.
      RX_MESSAGE_COUNTER : SVD.UInt7;
      --  unspecified
      Reserved_7_31      : SVD.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX_MESSAGE_CNT_Register use record
      RX_MESSAGE_COUNTER at 0 range 0 .. 6;
      Reserved_7_31      at 0 range 7 .. 31;
   end record;

   --  Clock Divider register
   type CLOCK_DIVIDER_Register is record
      --  These bits are used to configure frequency dividing coefficients of
      --  the external CLKOUT pin.
      CD            : SVD.Byte := 16#0#;
      --  This bit can be configured under reset mode. 1: Disable the external
      --  CLKOUT pin; 0: Enable the external CLKOUT pin
      CLOCK_OFF     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_9_31 : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLOCK_DIVIDER_Register use record
      CD            at 0 range 0 .. 7;
      CLOCK_OFF     at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Two-Wire Automotive Interface
   type TWAI0_Peripheral is record
      --  Mode Register
      MODE              : aliased MODE_Register;
      --  Command Register
      CMD               : aliased CMD_Register;
      --  Status register
      STATUS            : aliased STATUS_Register;
      --  Interrupt Register
      INT_RAW           : aliased INT_RAW_Register;
      --  Interrupt Enable Register
      INT_ENA           : aliased INT_ENA_Register;
      --  Bus Timing Register 0
      BUS_TIMING_0      : aliased BUS_TIMING_0_Register;
      --  Bus Timing Register 1
      BUS_TIMING_1      : aliased BUS_TIMING_1_Register;
      --  Arbitration Lost Capture Register
      ARB_LOST_CAP      : aliased ARB_LOST_CAP_Register;
      --  Error Code Capture Register
      ERR_CODE_CAP      : aliased ERR_CODE_CAP_Register;
      --  Error Warning Limit Register
      ERR_WARNING_LIMIT : aliased ERR_WARNING_LIMIT_Register;
      --  Receive Error Counter Register
      RX_ERR_CNT        : aliased RX_ERR_CNT_Register;
      --  Transmit Error Counter Register
      TX_ERR_CNT        : aliased TX_ERR_CNT_Register;
      --  Data register 0
      DATA_0            : aliased DATA_0_Register;
      --  Data register 1
      DATA_1            : aliased DATA_1_Register;
      --  Data register 2
      DATA_2            : aliased DATA_2_Register;
      --  Data register 3
      DATA_3            : aliased DATA_3_Register;
      --  Data register 4
      DATA_4            : aliased DATA_4_Register;
      --  Data register 5
      DATA_5            : aliased DATA_5_Register;
      --  Data register 6
      DATA_6            : aliased DATA_6_Register;
      --  Data register 7
      DATA_7            : aliased DATA_7_Register;
      --  Data register 8
      DATA_8            : aliased DATA_8_Register;
      --  Data register 9
      DATA_9            : aliased DATA_9_Register;
      --  Data register 10
      DATA_10           : aliased DATA_10_Register;
      --  Data register 11
      DATA_11           : aliased DATA_11_Register;
      --  Data register 12
      DATA_12           : aliased DATA_12_Register;
      --  Receive Message Counter Register
      RX_MESSAGE_CNT    : aliased RX_MESSAGE_CNT_Register;
      --  Clock Divider register
      CLOCK_DIVIDER     : aliased CLOCK_DIVIDER_Register;
   end record
     with Volatile;

   for TWAI0_Peripheral use record
      MODE              at 16#0# range 0 .. 31;
      CMD               at 16#4# range 0 .. 31;
      STATUS            at 16#8# range 0 .. 31;
      INT_RAW           at 16#C# range 0 .. 31;
      INT_ENA           at 16#10# range 0 .. 31;
      BUS_TIMING_0      at 16#18# range 0 .. 31;
      BUS_TIMING_1      at 16#1C# range 0 .. 31;
      ARB_LOST_CAP      at 16#2C# range 0 .. 31;
      ERR_CODE_CAP      at 16#30# range 0 .. 31;
      ERR_WARNING_LIMIT at 16#34# range 0 .. 31;
      RX_ERR_CNT        at 16#38# range 0 .. 31;
      TX_ERR_CNT        at 16#3C# range 0 .. 31;
      DATA_0            at 16#40# range 0 .. 31;
      DATA_1            at 16#44# range 0 .. 31;
      DATA_2            at 16#48# range 0 .. 31;
      DATA_3            at 16#4C# range 0 .. 31;
      DATA_4            at 16#50# range 0 .. 31;
      DATA_5            at 16#54# range 0 .. 31;
      DATA_6            at 16#58# range 0 .. 31;
      DATA_7            at 16#5C# range 0 .. 31;
      DATA_8            at 16#60# range 0 .. 31;
      DATA_9            at 16#64# range 0 .. 31;
      DATA_10           at 16#68# range 0 .. 31;
      DATA_11           at 16#6C# range 0 .. 31;
      DATA_12           at 16#70# range 0 .. 31;
      RX_MESSAGE_CNT    at 16#74# range 0 .. 31;
      CLOCK_DIVIDER     at 16#7C# range 0 .. 31;
   end record;

   --  Two-Wire Automotive Interface
   TWAI0_Periph : aliased TWAI0_Peripheral
     with Import, Address => TWAI0_Base;

end SVD.TWAI;
