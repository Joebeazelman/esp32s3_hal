pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.WCL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Core_0 Entry check configuration Register
   type Core_0_ENTRY_CHECK_Register is record
      --  unspecified
      Reserved_0_0       : SVD.Bit := 16#0#;
      --  This filed is used to enable entry address check
      CORE_0_ENTRY_CHECK : SVD.UInt13 := 16#1#;
      --  unspecified
      Reserved_14_31     : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_ENTRY_CHECK_Register use record
      Reserved_0_0       at 0 range 0 .. 0;
      CORE_0_ENTRY_CHECK at 0 range 1 .. 13;
      Reserved_14_31     at 0 range 14 .. 31;
   end record;

   --  Status register of world switch of entry 1
   type Core_0_STATUSTABLE1_Register is record
      --  This bit is used to confirm world before enter entry 1
      CORE_0_FROM_WORLD_1 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 1
      CORE_0_FROM_ENTRY_1 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 1
      CORE_0_CURRENT_1    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE1_Register use record
      CORE_0_FROM_WORLD_1 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_1 at 0 range 1 .. 4;
      CORE_0_CURRENT_1    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 2
   type Core_0_STATUSTABLE2_Register is record
      --  This bit is used to confirm world before enter entry 2
      CORE_0_FROM_WORLD_2 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 2
      CORE_0_FROM_ENTRY_2 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 2
      CORE_0_CURRENT_2    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE2_Register use record
      CORE_0_FROM_WORLD_2 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_2 at 0 range 1 .. 4;
      CORE_0_CURRENT_2    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 3
   type Core_0_STATUSTABLE3_Register is record
      --  This bit is used to confirm world before enter entry 3
      CORE_0_FROM_WORLD_3 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 3
      CORE_0_FROM_ENTRY_3 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 3
      CORE_0_CURRENT_3    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE3_Register use record
      CORE_0_FROM_WORLD_3 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_3 at 0 range 1 .. 4;
      CORE_0_CURRENT_3    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 4
   type Core_0_STATUSTABLE4_Register is record
      --  This bit is used to confirm world before enter entry 4
      CORE_0_FROM_WORLD_4 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 4
      CORE_0_FROM_ENTRY_4 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 4
      CORE_0_CURRENT_4    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE4_Register use record
      CORE_0_FROM_WORLD_4 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_4 at 0 range 1 .. 4;
      CORE_0_CURRENT_4    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 5
   type Core_0_STATUSTABLE5_Register is record
      --  This bit is used to confirm world before enter entry 5
      CORE_0_FROM_WORLD_5 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 5
      CORE_0_FROM_ENTRY_5 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 5
      CORE_0_CURRENT_5    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE5_Register use record
      CORE_0_FROM_WORLD_5 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_5 at 0 range 1 .. 4;
      CORE_0_CURRENT_5    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 6
   type Core_0_STATUSTABLE6_Register is record
      --  This bit is used to confirm world before enter entry 6
      CORE_0_FROM_WORLD_6 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 6
      CORE_0_FROM_ENTRY_6 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 6
      CORE_0_CURRENT_6    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE6_Register use record
      CORE_0_FROM_WORLD_6 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_6 at 0 range 1 .. 4;
      CORE_0_CURRENT_6    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 7
   type Core_0_STATUSTABLE7_Register is record
      --  This bit is used to confirm world before enter entry 7
      CORE_0_FROM_WORLD_7 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 7
      CORE_0_FROM_ENTRY_7 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 7
      CORE_0_CURRENT_7    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE7_Register use record
      CORE_0_FROM_WORLD_7 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_7 at 0 range 1 .. 4;
      CORE_0_CURRENT_7    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 8
   type Core_0_STATUSTABLE8_Register is record
      --  This bit is used to confirm world before enter entry 8
      CORE_0_FROM_WORLD_8 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 8
      CORE_0_FROM_ENTRY_8 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 8
      CORE_0_CURRENT_8    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE8_Register use record
      CORE_0_FROM_WORLD_8 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_8 at 0 range 1 .. 4;
      CORE_0_CURRENT_8    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 9
   type Core_0_STATUSTABLE9_Register is record
      --  This bit is used to confirm world before enter entry 9
      CORE_0_FROM_WORLD_9 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 9
      CORE_0_FROM_ENTRY_9 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 9
      CORE_0_CURRENT_9    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE9_Register use record
      CORE_0_FROM_WORLD_9 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_9 at 0 range 1 .. 4;
      CORE_0_CURRENT_9    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 10
   type Core_0_STATUSTABLE10_Register is record
      --  This bit is used to confirm world before enter entry 10
      CORE_0_FROM_WORLD_10 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 10
      CORE_0_FROM_ENTRY_10 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 10
      CORE_0_CURRENT_10    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31        : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE10_Register use record
      CORE_0_FROM_WORLD_10 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_10 at 0 range 1 .. 4;
      CORE_0_CURRENT_10    at 0 range 5 .. 5;
      Reserved_6_31        at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 11
   type Core_0_STATUSTABLE11_Register is record
      --  This bit is used to confirm world before enter entry 11
      CORE_0_FROM_WORLD_11 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 11
      CORE_0_FROM_ENTRY_11 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 11
      CORE_0_CURRENT_11    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31        : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE11_Register use record
      CORE_0_FROM_WORLD_11 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_11 at 0 range 1 .. 4;
      CORE_0_CURRENT_11    at 0 range 5 .. 5;
      Reserved_6_31        at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 12
   type Core_0_STATUSTABLE12_Register is record
      --  This bit is used to confirm world before enter entry 12
      CORE_0_FROM_WORLD_12 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 12
      CORE_0_FROM_ENTRY_12 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 12
      CORE_0_CURRENT_12    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31        : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE12_Register use record
      CORE_0_FROM_WORLD_12 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_12 at 0 range 1 .. 4;
      CORE_0_CURRENT_12    at 0 range 5 .. 5;
      Reserved_6_31        at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 13
   type Core_0_STATUSTABLE13_Register is record
      --  This bit is used to confirm world before enter entry 13
      CORE_0_FROM_WORLD_13 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 13
      CORE_0_FROM_ENTRY_13 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 13
      CORE_0_CURRENT_13    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31        : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE13_Register use record
      CORE_0_FROM_WORLD_13 at 0 range 0 .. 0;
      CORE_0_FROM_ENTRY_13 at 0 range 1 .. 4;
      CORE_0_CURRENT_13    at 0 range 5 .. 5;
      Reserved_6_31        at 0 range 6 .. 31;
   end record;

   --  Status register of statustable current
   type Core_0_STATUSTABLE_CURRENT_Register is record
      --  unspecified
      Reserved_0_0               : SVD.Bit := 16#0#;
      --  This field is used to quickly read and rewrite the current field of
      --  all STATUSTABLE registers,for example,bit 1 represents the current
      --  field of STATUSTABLE1,bit2 represents the current field of
      --  STATUSTABLE2
      CORE_0_STATUSTABLE_CURRENT : SVD.UInt13 := 16#0#;
      --  unspecified
      Reserved_14_31             : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_STATUSTABLE_CURRENT_Register use record
      Reserved_0_0               at 0 range 0 .. 0;
      CORE_0_STATUSTABLE_CURRENT at 0 range 1 .. 13;
      Reserved_14_31             at 0 range 14 .. 31;
   end record;

   --  Clear writer_buffer write number configuration register
   type Core_0_MESSAGE_MAX_Register is record
      --  This filed is used to set the max value of clear write_buffer
      CORE_0_MESSAGE_MAX : SVD.UInt4 := 16#0#;
      --  unspecified
      Reserved_4_31      : SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_MESSAGE_MAX_Register use record
      CORE_0_MESSAGE_MAX at 0 range 0 .. 3;
      Reserved_4_31      at 0 range 4 .. 31;
   end record;

   --  Clear writer_buffer status register
   type Core_0_MESSAGE_PHASE_Register is record
      --  Read-only. This bit indicates whether the check is successful
      CORE_0_MESSAGE_MATCH        : SVD.Bit;
      --  Read-only. This field indicates the data to be written next time
      CORE_0_MESSAGE_EXPECT       : SVD.UInt4;
      --  Read-only. If this bit is 1, it means that is checking clear
      --  write_buffer operation,and is checking data
      CORE_0_MESSAGE_DATAPHASE    : SVD.Bit;
      --  Read-only. If this bit is 1, it means that is checking clear
      --  write_buffer operation,and is checking address.
      CORE_0_MESSAGE_ADDRESSPHASE : SVD.Bit;
      --  unspecified
      Reserved_7_31               : SVD.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_MESSAGE_PHASE_Register use record
      CORE_0_MESSAGE_MATCH        at 0 range 0 .. 0;
      CORE_0_MESSAGE_EXPECT       at 0 range 1 .. 4;
      CORE_0_MESSAGE_DATAPHASE    at 0 range 5 .. 5;
      CORE_0_MESSAGE_ADDRESSPHASE at 0 range 6 .. 6;
      Reserved_7_31               at 0 range 7 .. 31;
   end record;

   --  Core_0 prepare world configuration Register
   type Core_0_World_PREPARE_Register is record
      --  This field to used to set world to enter, 2'b01 means WORLD0, 2'b10
      --  means WORLD1
      CORE_0_WORLD_PREPARE : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_31        : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_World_PREPARE_Register use record
      CORE_0_WORLD_PREPARE at 0 range 0 .. 1;
      Reserved_2_31        at 0 range 2 .. 31;
   end record;

   --  Core_0 Iram0 world register
   type Core_0_World_IRam0_Register is record
      --  this field is used to read current world of Iram0 bus
      CORE_0_WORLD_IRAM0 : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_31      : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_World_IRam0_Register use record
      CORE_0_WORLD_IRAM0 at 0 range 0 .. 1;
      Reserved_2_31      at 0 range 2 .. 31;
   end record;

   --  Core_0 dram0 and PIF world register
   type Core_0_World_DRam0_PIF_Register is record
      --  this field is used to read current world of Dram0 bus and PIF bus
      CORE_0_WORLD_DRAM0_PIF : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_31          : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_World_DRam0_PIF_Register use record
      CORE_0_WORLD_DRAM0_PIF at 0 range 0 .. 1;
      Reserved_2_31          at 0 range 2 .. 31;
   end record;

   --  Core_0 world status register
   type Core_0_World_Phase_Register is record
      --  Read-only. This bit indicates whether is preparing to switch to
      --  WORLD1, 1 means value.
      CORE_0_WORLD_PHASE : SVD.Bit;
      --  unspecified
      Reserved_1_31      : SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_World_Phase_Register use record
      CORE_0_WORLD_PHASE at 0 range 0 .. 0;
      Reserved_1_31      at 0 range 1 .. 31;
   end record;

   --  Core_0 NMI mask register
   type Core_0_NMI_MASK_Register is record
      --  this bit is used to mask NMI interrupt,it can directly mask NMI
      --  interrupt
      CORE_0_NMI_MASK : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31   : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_NMI_MASK_Register use record
      CORE_0_NMI_MASK at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Core_0 NMI mask phase register
   type Core_0_NMI_MASK_PHASE_Register is record
      --  Read-only. this bit is used to indicates whether the NMI interrupt is
      --  being masked, 1 means NMI interrupt is being masked
      CORE_0_NMI_MASK_PHASE : SVD.Bit;
      --  unspecified
      Reserved_1_31         : SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_0_NMI_MASK_PHASE_Register use record
      CORE_0_NMI_MASK_PHASE at 0 range 0 .. 0;
      Reserved_1_31         at 0 range 1 .. 31;
   end record;

   --  Core_1 Entry check configuration Register
   type Core_1_ENTRY_CHECK_Register is record
      --  unspecified
      Reserved_0_0       : SVD.Bit := 16#0#;
      --  This filed is used to enable entry address check
      CORE_1_ENTRY_CHECK : SVD.UInt13 := 16#1#;
      --  unspecified
      Reserved_14_31     : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_ENTRY_CHECK_Register use record
      Reserved_0_0       at 0 range 0 .. 0;
      CORE_1_ENTRY_CHECK at 0 range 1 .. 13;
      Reserved_14_31     at 0 range 14 .. 31;
   end record;

   --  Status register of world switch of entry 1
   type Core_1_STATUSTABLE1_Register is record
      --  This bit is used to confirm world before enter entry 1
      CORE_1_FROM_WORLD_1 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 1
      CORE_1_FROM_ENTRY_1 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 1
      CORE_1_CURRENT_1    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE1_Register use record
      CORE_1_FROM_WORLD_1 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_1 at 0 range 1 .. 4;
      CORE_1_CURRENT_1    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 2
   type Core_1_STATUSTABLE2_Register is record
      --  This bit is used to confirm world before enter entry 2
      CORE_1_FROM_WORLD_2 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 2
      CORE_1_FROM_ENTRY_2 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 2
      CORE_1_CURRENT_2    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE2_Register use record
      CORE_1_FROM_WORLD_2 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_2 at 0 range 1 .. 4;
      CORE_1_CURRENT_2    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 3
   type Core_1_STATUSTABLE3_Register is record
      --  This bit is used to confirm world before enter entry 3
      CORE_1_FROM_WORLD_3 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 3
      CORE_1_FROM_ENTRY_3 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 3
      CORE_1_CURRENT_3    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE3_Register use record
      CORE_1_FROM_WORLD_3 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_3 at 0 range 1 .. 4;
      CORE_1_CURRENT_3    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 4
   type Core_1_STATUSTABLE4_Register is record
      --  This bit is used to confirm world before enter entry 4
      CORE_1_FROM_WORLD_4 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 4
      CORE_1_FROM_ENTRY_4 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 4
      CORE_1_CURRENT_4    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE4_Register use record
      CORE_1_FROM_WORLD_4 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_4 at 0 range 1 .. 4;
      CORE_1_CURRENT_4    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 5
   type Core_1_STATUSTABLE5_Register is record
      --  This bit is used to confirm world before enter entry 5
      CORE_1_FROM_WORLD_5 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 5
      CORE_1_FROM_ENTRY_5 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 5
      CORE_1_CURRENT_5    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE5_Register use record
      CORE_1_FROM_WORLD_5 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_5 at 0 range 1 .. 4;
      CORE_1_CURRENT_5    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 6
   type Core_1_STATUSTABLE6_Register is record
      --  This bit is used to confirm world before enter entry 6
      CORE_1_FROM_WORLD_6 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 6
      CORE_1_FROM_ENTRY_6 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 6
      CORE_1_CURRENT_6    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE6_Register use record
      CORE_1_FROM_WORLD_6 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_6 at 0 range 1 .. 4;
      CORE_1_CURRENT_6    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 7
   type Core_1_STATUSTABLE7_Register is record
      --  This bit is used to confirm world before enter entry 7
      CORE_1_FROM_WORLD_7 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 7
      CORE_1_FROM_ENTRY_7 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 7
      CORE_1_CURRENT_7    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE7_Register use record
      CORE_1_FROM_WORLD_7 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_7 at 0 range 1 .. 4;
      CORE_1_CURRENT_7    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 8
   type Core_1_STATUSTABLE8_Register is record
      --  This bit is used to confirm world before enter entry 8
      CORE_1_FROM_WORLD_8 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 8
      CORE_1_FROM_ENTRY_8 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 8
      CORE_1_CURRENT_8    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE8_Register use record
      CORE_1_FROM_WORLD_8 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_8 at 0 range 1 .. 4;
      CORE_1_CURRENT_8    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 9
   type Core_1_STATUSTABLE9_Register is record
      --  This bit is used to confirm world before enter entry 9
      CORE_1_FROM_WORLD_9 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 9
      CORE_1_FROM_ENTRY_9 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 9
      CORE_1_CURRENT_9    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE9_Register use record
      CORE_1_FROM_WORLD_9 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_9 at 0 range 1 .. 4;
      CORE_1_CURRENT_9    at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 10
   type Core_1_STATUSTABLE10_Register is record
      --  This bit is used to confirm world before enter entry 10
      CORE_1_FROM_WORLD_10 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 10
      CORE_1_FROM_ENTRY_10 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 10
      CORE_1_CURRENT_10    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31        : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE10_Register use record
      CORE_1_FROM_WORLD_10 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_10 at 0 range 1 .. 4;
      CORE_1_CURRENT_10    at 0 range 5 .. 5;
      Reserved_6_31        at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 11
   type Core_1_STATUSTABLE11_Register is record
      --  This bit is used to confirm world before enter entry 11
      CORE_1_FROM_WORLD_11 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 11
      CORE_1_FROM_ENTRY_11 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 11
      CORE_1_CURRENT_11    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31        : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE11_Register use record
      CORE_1_FROM_WORLD_11 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_11 at 0 range 1 .. 4;
      CORE_1_CURRENT_11    at 0 range 5 .. 5;
      Reserved_6_31        at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 12
   type Core_1_STATUSTABLE12_Register is record
      --  This bit is used to confirm world before enter entry 12
      CORE_1_FROM_WORLD_12 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 12
      CORE_1_FROM_ENTRY_12 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 12
      CORE_1_CURRENT_12    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31        : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE12_Register use record
      CORE_1_FROM_WORLD_12 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_12 at 0 range 1 .. 4;
      CORE_1_CURRENT_12    at 0 range 5 .. 5;
      Reserved_6_31        at 0 range 6 .. 31;
   end record;

   --  Status register of world switch of entry 13
   type Core_1_STATUSTABLE13_Register is record
      --  This bit is used to confirm world before enter entry 13
      CORE_1_FROM_WORLD_13 : SVD.Bit := 16#0#;
      --  This filed is used to confirm in which entry before enter entry 13
      CORE_1_FROM_ENTRY_13 : SVD.UInt4 := 16#0#;
      --  This bit is used to confirm whether the current state is in entry 13
      CORE_1_CURRENT_13    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31        : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE13_Register use record
      CORE_1_FROM_WORLD_13 at 0 range 0 .. 0;
      CORE_1_FROM_ENTRY_13 at 0 range 1 .. 4;
      CORE_1_CURRENT_13    at 0 range 5 .. 5;
      Reserved_6_31        at 0 range 6 .. 31;
   end record;

   --  Status register of statustable current
   type Core_1_STATUSTABLE_CURRENT_Register is record
      --  unspecified
      Reserved_0_0               : SVD.Bit := 16#0#;
      --  This field is used to quickly read and rewrite the current field of
      --  all STATUSTABLE registers,for example,bit 1 represents the current
      --  field of STATUSTABLE1
      CORE_1_STATUSTABLE_CURRENT : SVD.UInt13 := 16#0#;
      --  unspecified
      Reserved_14_31             : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_STATUSTABLE_CURRENT_Register use record
      Reserved_0_0               at 0 range 0 .. 0;
      CORE_1_STATUSTABLE_CURRENT at 0 range 1 .. 13;
      Reserved_14_31             at 0 range 14 .. 31;
   end record;

   --  Clear writer_buffer write number configuration register
   type Core_1_MESSAGE_MAX_Register is record
      --  This filed is used to set the max value of clear write_buffer
      CORE_1_MESSAGE_MAX : SVD.UInt4 := 16#0#;
      --  unspecified
      Reserved_4_31      : SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_MESSAGE_MAX_Register use record
      CORE_1_MESSAGE_MAX at 0 range 0 .. 3;
      Reserved_4_31      at 0 range 4 .. 31;
   end record;

   --  Clear writer_buffer status register
   type Core_1_MESSAGE_PHASE_Register is record
      --  Read-only. This bit indicates whether the check is successful
      CORE_1_MESSAGE_MATCH        : SVD.Bit;
      --  Read-only. This field indicates the data to be written next time
      CORE_1_MESSAGE_EXPECT       : SVD.UInt4;
      --  Read-only. If this bit is 1, it means that is checking clear
      --  write_buffer operation, and is checking data
      CORE_1_MESSAGE_DATAPHASE    : SVD.Bit;
      --  Read-only. If this bit is 1, it means that is checking clear
      --  write_buffer operation, and is checking address.
      CORE_1_MESSAGE_ADDRESSPHASE : SVD.Bit;
      --  unspecified
      Reserved_7_31               : SVD.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_MESSAGE_PHASE_Register use record
      CORE_1_MESSAGE_MATCH        at 0 range 0 .. 0;
      CORE_1_MESSAGE_EXPECT       at 0 range 1 .. 4;
      CORE_1_MESSAGE_DATAPHASE    at 0 range 5 .. 5;
      CORE_1_MESSAGE_ADDRESSPHASE at 0 range 6 .. 6;
      Reserved_7_31               at 0 range 7 .. 31;
   end record;

   --  Core_1 prepare world configuration Register
   type Core_1_World_PREPARE_Register is record
      --  This field to used to set world to enter,2'b01 means WORLD0, 2'b10
      --  means WORLD1
      CORE_1_WORLD_PREPARE : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_31        : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_World_PREPARE_Register use record
      CORE_1_WORLD_PREPARE at 0 range 0 .. 1;
      Reserved_2_31        at 0 range 2 .. 31;
   end record;

   --  Core_1 Iram0 world register
   type Core_1_World_IRam0_Register is record
      --  this field is used to read current world of Iram0 bus
      CORE_1_WORLD_IRAM0 : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_31      : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_World_IRam0_Register use record
      CORE_1_WORLD_IRAM0 at 0 range 0 .. 1;
      Reserved_2_31      at 0 range 2 .. 31;
   end record;

   --  Core_1 dram0 and PIF world register
   type Core_1_World_DRam0_PIF_Register is record
      --  this field is used to read current world of Dram0 bus and PIF bus
      CORE_1_WORLD_DRAM0_PIF : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_31          : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_World_DRam0_PIF_Register use record
      CORE_1_WORLD_DRAM0_PIF at 0 range 0 .. 1;
      Reserved_2_31          at 0 range 2 .. 31;
   end record;

   --  Core_0 world status register
   type Core_1_World_Phase_Register is record
      --  Read-only. This bit indicates whether is preparing to switch to
      --  WORLD1,1 means value.
      CORE_1_WORLD_PHASE : SVD.Bit;
      --  unspecified
      Reserved_1_31      : SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_World_Phase_Register use record
      CORE_1_WORLD_PHASE at 0 range 0 .. 0;
      Reserved_1_31      at 0 range 1 .. 31;
   end record;

   --  Core_1 NMI mask register
   type Core_1_NMI_MASK_Register is record
      --  this bit is used to mask NMI interrupt,it can directly mask NMI
      --  interrupt
      CORE_1_NMI_MASK : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31   : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_NMI_MASK_Register use record
      CORE_1_NMI_MASK at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Core_1 NMI mask phase register
   type Core_1_NMI_MASK_PHASE_Register is record
      --  Read-only. this bit is used to indicates whether the NMI interrupt is
      --  being masked, 1 means NMI interrupt is being masked
      CORE_1_NMI_MASK_PHASE : SVD.Bit;
      --  unspecified
      Reserved_1_31         : SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for Core_1_NMI_MASK_PHASE_Register use record
      CORE_1_NMI_MASK_PHASE at 0 range 0 .. 0;
      Reserved_1_31         at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  WCL Peripheral
   type WCL_Peripheral is record
      --  Core_0 Entry 1 address configuration Register
      Core_0_ENTRY_1_ADDR          : aliased SVD.UInt32;
      --  Core_0 Entry 2 address configuration Register
      Core_0_ENTRY_2_ADDR          : aliased SVD.UInt32;
      --  Core_0 Entry 3 address configuration Register
      Core_0_ENTRY_3_ADDR          : aliased SVD.UInt32;
      --  Core_0 Entry 4 address configuration Register
      Core_0_ENTRY_4_ADDR          : aliased SVD.UInt32;
      --  Core_0 Entry 5 address configuration Register
      Core_0_ENTRY_5_ADDR          : aliased SVD.UInt32;
      --  Core_0 Entry 6 address configuration Register
      Core_0_ENTRY_6_ADDR          : aliased SVD.UInt32;
      --  Core_0 Entry 7 address configuration Register
      Core_0_ENTRY_7_ADDR          : aliased SVD.UInt32;
      --  Core_0 Entry 8 address configuration Register
      Core_0_ENTRY_8_ADDR          : aliased SVD.UInt32;
      --  Core_0 Entry 9 address configuration Register
      Core_0_ENTRY_9_ADDR          : aliased SVD.UInt32;
      --  Core_0 Entry 10 address configuration Register
      Core_0_ENTRY_10_ADDR         : aliased SVD.UInt32;
      --  Core_0 Entry 11 address configuration Register
      Core_0_ENTRY_11_ADDR         : aliased SVD.UInt32;
      --  Core_0 Entry 12 address configuration Register
      Core_0_ENTRY_12_ADDR         : aliased SVD.UInt32;
      --  Core_0 Entry 13 address configuration Register
      Core_0_ENTRY_13_ADDR         : aliased SVD.UInt32;
      --  Core_0 Entry check configuration Register
      Core_0_ENTRY_CHECK           : aliased Core_0_ENTRY_CHECK_Register;
      --  Status register of world switch of entry 1
      Core_0_STATUSTABLE1          : aliased Core_0_STATUSTABLE1_Register;
      --  Status register of world switch of entry 2
      Core_0_STATUSTABLE2          : aliased Core_0_STATUSTABLE2_Register;
      --  Status register of world switch of entry 3
      Core_0_STATUSTABLE3          : aliased Core_0_STATUSTABLE3_Register;
      --  Status register of world switch of entry 4
      Core_0_STATUSTABLE4          : aliased Core_0_STATUSTABLE4_Register;
      --  Status register of world switch of entry 5
      Core_0_STATUSTABLE5          : aliased Core_0_STATUSTABLE5_Register;
      --  Status register of world switch of entry 6
      Core_0_STATUSTABLE6          : aliased Core_0_STATUSTABLE6_Register;
      --  Status register of world switch of entry 7
      Core_0_STATUSTABLE7          : aliased Core_0_STATUSTABLE7_Register;
      --  Status register of world switch of entry 8
      Core_0_STATUSTABLE8          : aliased Core_0_STATUSTABLE8_Register;
      --  Status register of world switch of entry 9
      Core_0_STATUSTABLE9          : aliased Core_0_STATUSTABLE9_Register;
      --  Status register of world switch of entry 10
      Core_0_STATUSTABLE10         : aliased Core_0_STATUSTABLE10_Register;
      --  Status register of world switch of entry 11
      Core_0_STATUSTABLE11         : aliased Core_0_STATUSTABLE11_Register;
      --  Status register of world switch of entry 12
      Core_0_STATUSTABLE12         : aliased Core_0_STATUSTABLE12_Register;
      --  Status register of world switch of entry 13
      Core_0_STATUSTABLE13         : aliased Core_0_STATUSTABLE13_Register;
      --  Status register of statustable current
      Core_0_STATUSTABLE_CURRENT   : aliased Core_0_STATUSTABLE_CURRENT_Register;
      --  Clear writer_buffer write address configuration register
      Core_0_MESSAGE_ADDR          : aliased SVD.UInt32;
      --  Clear writer_buffer write number configuration register
      Core_0_MESSAGE_MAX           : aliased Core_0_MESSAGE_MAX_Register;
      --  Clear writer_buffer status register
      Core_0_MESSAGE_PHASE         : aliased Core_0_MESSAGE_PHASE_Register;
      --  Core_0 trigger address configuration Register
      Core_0_World_TRIGGER_ADDR    : aliased SVD.UInt32;
      --  Core_0 prepare world configuration Register
      Core_0_World_PREPARE         : aliased Core_0_World_PREPARE_Register;
      --  Core_0 configuration update register
      Core_0_World_UPDATE          : aliased SVD.UInt32;
      --  Core_0 configuration cancel register
      Core_0_World_Cancel          : aliased SVD.UInt32;
      --  Core_0 Iram0 world register
      Core_0_World_IRam0           : aliased Core_0_World_IRam0_Register;
      --  Core_0 dram0 and PIF world register
      Core_0_World_DRam0_PIF       : aliased Core_0_World_DRam0_PIF_Register;
      --  Core_0 world status register
      Core_0_World_Phase           : aliased Core_0_World_Phase_Register;
      --  Core_0 NMI mask enable register
      Core_0_NMI_MASK_ENABLE       : aliased SVD.UInt32;
      --  Core_0 NMI mask trigger address register
      Core_0_NMI_MASK_TRIGGER_ADDR : aliased SVD.UInt32;
      --  Core_0 NMI mask disable register
      Core_0_NMI_MASK_DISABLE      : aliased SVD.UInt32;
      --  Core_0 NMI mask disable register
      Core_0_NMI_MASK_CANCLE       : aliased SVD.UInt32;
      --  Core_0 NMI mask register
      Core_0_NMI_MASK              : aliased Core_0_NMI_MASK_Register;
      --  Core_0 NMI mask phase register
      Core_0_NMI_MASK_PHASE        : aliased Core_0_NMI_MASK_PHASE_Register;
      --  Core_1 Entry 1 address configuration Register
      Core_1_ENTRY_1_ADDR          : aliased SVD.UInt32;
      --  Core_1 Entry 2 address configuration Register
      Core_1_ENTRY_2_ADDR          : aliased SVD.UInt32;
      --  Core_1 Entry 3 address configuration Register
      Core_1_ENTRY_3_ADDR          : aliased SVD.UInt32;
      --  Core_1 Entry 4 address configuration Register
      Core_1_ENTRY_4_ADDR          : aliased SVD.UInt32;
      --  Core_1 Entry 5 address configuration Register
      Core_1_ENTRY_5_ADDR          : aliased SVD.UInt32;
      --  Core_1 Entry 6 address configuration Register
      Core_1_ENTRY_6_ADDR          : aliased SVD.UInt32;
      --  Core_1 Entry 7 address configuration Register
      Core_1_ENTRY_7_ADDR          : aliased SVD.UInt32;
      --  Core_1 Entry 8 address configuration Register
      Core_1_ENTRY_8_ADDR          : aliased SVD.UInt32;
      --  Core_1 Entry 9 address configuration Register
      Core_1_ENTRY_9_ADDR          : aliased SVD.UInt32;
      --  Core_1 Entry 10 address configuration Register
      Core_1_ENTRY_10_ADDR         : aliased SVD.UInt32;
      --  Core_1 Entry 11 address configuration Register
      Core_1_ENTRY_11_ADDR         : aliased SVD.UInt32;
      --  Core_1 Entry 12 address configuration Register
      Core_1_ENTRY_12_ADDR         : aliased SVD.UInt32;
      --  Core_1 Entry 13 address configuration Register
      Core_1_ENTRY_13_ADDR         : aliased SVD.UInt32;
      --  Core_1 Entry check configuration Register
      Core_1_ENTRY_CHECK           : aliased Core_1_ENTRY_CHECK_Register;
      --  Status register of world switch of entry 1
      Core_1_STATUSTABLE1          : aliased Core_1_STATUSTABLE1_Register;
      --  Status register of world switch of entry 2
      Core_1_STATUSTABLE2          : aliased Core_1_STATUSTABLE2_Register;
      --  Status register of world switch of entry 3
      Core_1_STATUSTABLE3          : aliased Core_1_STATUSTABLE3_Register;
      --  Status register of world switch of entry 4
      Core_1_STATUSTABLE4          : aliased Core_1_STATUSTABLE4_Register;
      --  Status register of world switch of entry 5
      Core_1_STATUSTABLE5          : aliased Core_1_STATUSTABLE5_Register;
      --  Status register of world switch of entry 6
      Core_1_STATUSTABLE6          : aliased Core_1_STATUSTABLE6_Register;
      --  Status register of world switch of entry 7
      Core_1_STATUSTABLE7          : aliased Core_1_STATUSTABLE7_Register;
      --  Status register of world switch of entry 8
      Core_1_STATUSTABLE8          : aliased Core_1_STATUSTABLE8_Register;
      --  Status register of world switch of entry 9
      Core_1_STATUSTABLE9          : aliased Core_1_STATUSTABLE9_Register;
      --  Status register of world switch of entry 10
      Core_1_STATUSTABLE10         : aliased Core_1_STATUSTABLE10_Register;
      --  Status register of world switch of entry 11
      Core_1_STATUSTABLE11         : aliased Core_1_STATUSTABLE11_Register;
      --  Status register of world switch of entry 12
      Core_1_STATUSTABLE12         : aliased Core_1_STATUSTABLE12_Register;
      --  Status register of world switch of entry 13
      Core_1_STATUSTABLE13         : aliased Core_1_STATUSTABLE13_Register;
      --  Status register of statustable current
      Core_1_STATUSTABLE_CURRENT   : aliased Core_1_STATUSTABLE_CURRENT_Register;
      --  Clear writer_buffer write address configuration register
      Core_1_MESSAGE_ADDR          : aliased SVD.UInt32;
      --  Clear writer_buffer write number configuration register
      Core_1_MESSAGE_MAX           : aliased Core_1_MESSAGE_MAX_Register;
      --  Clear writer_buffer status register
      Core_1_MESSAGE_PHASE         : aliased Core_1_MESSAGE_PHASE_Register;
      --  Core_1 trigger address configuration Register
      Core_1_World_TRIGGER_ADDR    : aliased SVD.UInt32;
      --  Core_1 prepare world configuration Register
      Core_1_World_PREPARE         : aliased Core_1_World_PREPARE_Register;
      --  Core_1 configuration update register
      Core_1_World_UPDATE          : aliased SVD.UInt32;
      --  Core_1 configuration cancel register
      Core_1_World_Cancel          : aliased SVD.UInt32;
      --  Core_1 Iram0 world register
      Core_1_World_IRam0           : aliased Core_1_World_IRam0_Register;
      --  Core_1 dram0 and PIF world register
      Core_1_World_DRam0_PIF       : aliased Core_1_World_DRam0_PIF_Register;
      --  Core_0 world status register
      Core_1_World_Phase           : aliased Core_1_World_Phase_Register;
      --  Core_1 NMI mask enable register
      Core_1_NMI_MASK_ENABLE       : aliased SVD.UInt32;
      --  Core_1 NMI mask trigger addr register
      Core_1_NMI_MASK_TRIGGER_ADDR : aliased SVD.UInt32;
      --  Core_1 NMI mask disable register
      Core_1_NMI_MASK_DISABLE      : aliased SVD.UInt32;
      --  Core_1 NMI mask disable register
      Core_1_NMI_MASK_CANCLE       : aliased SVD.UInt32;
      --  Core_1 NMI mask register
      Core_1_NMI_MASK              : aliased Core_1_NMI_MASK_Register;
      --  Core_1 NMI mask phase register
      Core_1_NMI_MASK_PHASE        : aliased Core_1_NMI_MASK_PHASE_Register;
   end record
     with Volatile;

   for WCL_Peripheral use record
      Core_0_ENTRY_1_ADDR          at 16#0# range 0 .. 31;
      Core_0_ENTRY_2_ADDR          at 16#4# range 0 .. 31;
      Core_0_ENTRY_3_ADDR          at 16#8# range 0 .. 31;
      Core_0_ENTRY_4_ADDR          at 16#C# range 0 .. 31;
      Core_0_ENTRY_5_ADDR          at 16#10# range 0 .. 31;
      Core_0_ENTRY_6_ADDR          at 16#14# range 0 .. 31;
      Core_0_ENTRY_7_ADDR          at 16#18# range 0 .. 31;
      Core_0_ENTRY_8_ADDR          at 16#1C# range 0 .. 31;
      Core_0_ENTRY_9_ADDR          at 16#20# range 0 .. 31;
      Core_0_ENTRY_10_ADDR         at 16#24# range 0 .. 31;
      Core_0_ENTRY_11_ADDR         at 16#28# range 0 .. 31;
      Core_0_ENTRY_12_ADDR         at 16#2C# range 0 .. 31;
      Core_0_ENTRY_13_ADDR         at 16#30# range 0 .. 31;
      Core_0_ENTRY_CHECK           at 16#7C# range 0 .. 31;
      Core_0_STATUSTABLE1          at 16#80# range 0 .. 31;
      Core_0_STATUSTABLE2          at 16#84# range 0 .. 31;
      Core_0_STATUSTABLE3          at 16#88# range 0 .. 31;
      Core_0_STATUSTABLE4          at 16#8C# range 0 .. 31;
      Core_0_STATUSTABLE5          at 16#90# range 0 .. 31;
      Core_0_STATUSTABLE6          at 16#94# range 0 .. 31;
      Core_0_STATUSTABLE7          at 16#98# range 0 .. 31;
      Core_0_STATUSTABLE8          at 16#9C# range 0 .. 31;
      Core_0_STATUSTABLE9          at 16#A0# range 0 .. 31;
      Core_0_STATUSTABLE10         at 16#A4# range 0 .. 31;
      Core_0_STATUSTABLE11         at 16#A8# range 0 .. 31;
      Core_0_STATUSTABLE12         at 16#AC# range 0 .. 31;
      Core_0_STATUSTABLE13         at 16#B0# range 0 .. 31;
      Core_0_STATUSTABLE_CURRENT   at 16#FC# range 0 .. 31;
      Core_0_MESSAGE_ADDR          at 16#100# range 0 .. 31;
      Core_0_MESSAGE_MAX           at 16#104# range 0 .. 31;
      Core_0_MESSAGE_PHASE         at 16#108# range 0 .. 31;
      Core_0_World_TRIGGER_ADDR    at 16#140# range 0 .. 31;
      Core_0_World_PREPARE         at 16#144# range 0 .. 31;
      Core_0_World_UPDATE          at 16#148# range 0 .. 31;
      Core_0_World_Cancel          at 16#14C# range 0 .. 31;
      Core_0_World_IRam0           at 16#150# range 0 .. 31;
      Core_0_World_DRam0_PIF       at 16#154# range 0 .. 31;
      Core_0_World_Phase           at 16#158# range 0 .. 31;
      Core_0_NMI_MASK_ENABLE       at 16#180# range 0 .. 31;
      Core_0_NMI_MASK_TRIGGER_ADDR at 16#184# range 0 .. 31;
      Core_0_NMI_MASK_DISABLE      at 16#188# range 0 .. 31;
      Core_0_NMI_MASK_CANCLE       at 16#18C# range 0 .. 31;
      Core_0_NMI_MASK              at 16#190# range 0 .. 31;
      Core_0_NMI_MASK_PHASE        at 16#194# range 0 .. 31;
      Core_1_ENTRY_1_ADDR          at 16#400# range 0 .. 31;
      Core_1_ENTRY_2_ADDR          at 16#404# range 0 .. 31;
      Core_1_ENTRY_3_ADDR          at 16#408# range 0 .. 31;
      Core_1_ENTRY_4_ADDR          at 16#40C# range 0 .. 31;
      Core_1_ENTRY_5_ADDR          at 16#410# range 0 .. 31;
      Core_1_ENTRY_6_ADDR          at 16#414# range 0 .. 31;
      Core_1_ENTRY_7_ADDR          at 16#418# range 0 .. 31;
      Core_1_ENTRY_8_ADDR          at 16#41C# range 0 .. 31;
      Core_1_ENTRY_9_ADDR          at 16#420# range 0 .. 31;
      Core_1_ENTRY_10_ADDR         at 16#424# range 0 .. 31;
      Core_1_ENTRY_11_ADDR         at 16#428# range 0 .. 31;
      Core_1_ENTRY_12_ADDR         at 16#42C# range 0 .. 31;
      Core_1_ENTRY_13_ADDR         at 16#430# range 0 .. 31;
      Core_1_ENTRY_CHECK           at 16#47C# range 0 .. 31;
      Core_1_STATUSTABLE1          at 16#480# range 0 .. 31;
      Core_1_STATUSTABLE2          at 16#484# range 0 .. 31;
      Core_1_STATUSTABLE3          at 16#488# range 0 .. 31;
      Core_1_STATUSTABLE4          at 16#48C# range 0 .. 31;
      Core_1_STATUSTABLE5          at 16#490# range 0 .. 31;
      Core_1_STATUSTABLE6          at 16#494# range 0 .. 31;
      Core_1_STATUSTABLE7          at 16#498# range 0 .. 31;
      Core_1_STATUSTABLE8          at 16#49C# range 0 .. 31;
      Core_1_STATUSTABLE9          at 16#4A0# range 0 .. 31;
      Core_1_STATUSTABLE10         at 16#4A4# range 0 .. 31;
      Core_1_STATUSTABLE11         at 16#4A8# range 0 .. 31;
      Core_1_STATUSTABLE12         at 16#4AC# range 0 .. 31;
      Core_1_STATUSTABLE13         at 16#4B0# range 0 .. 31;
      Core_1_STATUSTABLE_CURRENT   at 16#4FC# range 0 .. 31;
      Core_1_MESSAGE_ADDR          at 16#500# range 0 .. 31;
      Core_1_MESSAGE_MAX           at 16#504# range 0 .. 31;
      Core_1_MESSAGE_PHASE         at 16#508# range 0 .. 31;
      Core_1_World_TRIGGER_ADDR    at 16#540# range 0 .. 31;
      Core_1_World_PREPARE         at 16#544# range 0 .. 31;
      Core_1_World_UPDATE          at 16#548# range 0 .. 31;
      Core_1_World_Cancel          at 16#54C# range 0 .. 31;
      Core_1_World_IRam0           at 16#550# range 0 .. 31;
      Core_1_World_DRam0_PIF       at 16#554# range 0 .. 31;
      Core_1_World_Phase           at 16#558# range 0 .. 31;
      Core_1_NMI_MASK_ENABLE       at 16#580# range 0 .. 31;
      Core_1_NMI_MASK_TRIGGER_ADDR at 16#584# range 0 .. 31;
      Core_1_NMI_MASK_DISABLE      at 16#588# range 0 .. 31;
      Core_1_NMI_MASK_CANCLE       at 16#58C# range 0 .. 31;
      Core_1_NMI_MASK              at 16#590# range 0 .. 31;
      Core_1_NMI_MASK_PHASE        at 16#594# range 0 .. 31;
   end record;

   --  WCL Peripheral
   WCL_Periph : aliased WCL_Peripheral
     with Import, Address => WCL_Base;

end SVD.WCL;
