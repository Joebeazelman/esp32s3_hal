pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.PERI_BACKUP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  x
   type CONFIG_Register is record
      --  Read-only. x
      FLOW_ERR      : SVD.UInt3 := 16#0#;
      --  x
      ADDR_MAP_MODE : SVD.Bit := 16#0#;
      --  x
      BURST_LIMIT   : SVD.UInt5 := 16#8#;
      --  x
      TOUT_THRES    : SVD.UInt10 := 16#32#;
      --  x
      SIZE          : SVD.UInt10 := 16#0#;
      --  Write-only. x
      START         : SVD.Bit := 16#0#;
      --  x
      TO_MEM        : SVD.Bit := 16#0#;
      --  x
      ENA           : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      FLOW_ERR      at 0 range 0 .. 2;
      ADDR_MAP_MODE at 0 range 3 .. 3;
      BURST_LIMIT   at 0 range 4 .. 8;
      TOUT_THRES    at 0 range 9 .. 18;
      SIZE          at 0 range 19 .. 28;
      START         at 0 range 29 .. 29;
      TO_MEM        at 0 range 30 .. 30;
      ENA           at 0 range 31 .. 31;
   end record;

   --  x
   type INT_RAW_Register is record
      --  Read-only. x
      DONE_INT_RAW  : SVD.Bit;
      --  Read-only. x
      ERR_INT_RAW   : SVD.Bit;
      --  unspecified
      Reserved_2_31 : SVD.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      DONE_INT_RAW  at 0 range 0 .. 0;
      ERR_INT_RAW   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  x
   type INT_ST_Register is record
      --  Read-only. x
      DONE_INT_ST   : SVD.Bit;
      --  Read-only. x
      ERR_INT_ST    : SVD.Bit;
      --  unspecified
      Reserved_2_31 : SVD.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      DONE_INT_ST   at 0 range 0 .. 0;
      ERR_INT_ST    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  x
   type INT_ENA_Register is record
      --  x
      DONE_INT_ENA  : SVD.Bit := 16#0#;
      --  x
      ERR_INT_ENA   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31 : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      DONE_INT_ENA  at 0 range 0 .. 0;
      ERR_INT_ENA   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  x
   type INT_CLR_Register is record
      --  Write-only. x
      DONE_INT_CLR  : SVD.Bit := 16#0#;
      --  Write-only. x
      ERR_INT_CLR   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31 : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      DONE_INT_CLR  at 0 range 0 .. 0;
      ERR_INT_CLR   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  x
   type DATE_Register is record
      --  x
      DATE           : SVD.UInt28 := 16#2012300#;
      --  unspecified
      Reserved_28_30 : SVD.UInt3 := 16#0#;
      --  register file clk gating
      CLK_EN         : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      DATE           at 0 range 0 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      CLK_EN         at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERI_BACKUP Peripheral
   type PERI_BACKUP_Peripheral is record
      --  x
      CONFIG   : aliased CONFIG_Register;
      --  x
      APB_ADDR : aliased SVD.UInt32;
      --  x
      MEM_ADDR : aliased SVD.UInt32;
      --  x
      REG_MAP0 : aliased SVD.UInt32;
      --  x
      REG_MAP1 : aliased SVD.UInt32;
      --  x
      REG_MAP2 : aliased SVD.UInt32;
      --  x
      REG_MAP3 : aliased SVD.UInt32;
      --  x
      INT_RAW  : aliased INT_RAW_Register;
      --  x
      INT_ST   : aliased INT_ST_Register;
      --  x
      INT_ENA  : aliased INT_ENA_Register;
      --  x
      INT_CLR  : aliased INT_CLR_Register;
      --  x
      DATE     : aliased DATE_Register;
   end record
     with Volatile;

   for PERI_BACKUP_Peripheral use record
      CONFIG   at 16#0# range 0 .. 31;
      APB_ADDR at 16#4# range 0 .. 31;
      MEM_ADDR at 16#8# range 0 .. 31;
      REG_MAP0 at 16#C# range 0 .. 31;
      REG_MAP1 at 16#10# range 0 .. 31;
      REG_MAP2 at 16#14# range 0 .. 31;
      REG_MAP3 at 16#18# range 0 .. 31;
      INT_RAW  at 16#1C# range 0 .. 31;
      INT_ST   at 16#20# range 0 .. 31;
      INT_ENA  at 16#24# range 0 .. 31;
      INT_CLR  at 16#28# range 0 .. 31;
      DATE     at 16#FC# range 0 .. 31;
   end record;

   --  PERI_BACKUP Peripheral
   PERI_BACKUP_Periph : aliased PERI_BACKUP_Peripheral
     with Import, Address => PERI_BACKUP_Base;

end SVD.PERI_BACKUP;
