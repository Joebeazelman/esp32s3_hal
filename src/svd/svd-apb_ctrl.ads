pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.APB_CTRL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ******* Description ***********
   type SYSCLK_CONF_Register is record
      --  ******* Description ***********
      PRE_DIV_CNT    : SVD.UInt10 := 16#1#;
      --  ******* Description ***********
      CLK_320M_EN    : SVD.Bit := 16#0#;
      --  ******* Description ***********
      CLK_EN         : SVD.Bit := 16#0#;
      --  ******* Description ***********
      RST_TICK_CNT   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_13_31 : SVD.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCLK_CONF_Register use record
      PRE_DIV_CNT    at 0 range 0 .. 9;
      CLK_320M_EN    at 0 range 10 .. 10;
      CLK_EN         at 0 range 11 .. 11;
      RST_TICK_CNT   at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  ******* Description ***********
   type TICK_CONF_Register is record
      --  ******* Description ***********
      XTAL_TICK_NUM  : SVD.Byte := 16#27#;
      --  ******* Description ***********
      CK8M_TICK_NUM  : SVD.Byte := 16#7#;
      --  ******* Description ***********
      TICK_ENABLE    : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_17_31 : SVD.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TICK_CONF_Register use record
      XTAL_TICK_NUM  at 0 range 0 .. 7;
      CK8M_TICK_NUM  at 0 range 8 .. 15;
      TICK_ENABLE    at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  ******* Description ***********
   type CLK_OUT_EN_Register is record
      --  ******* Description ***********
      CLK20_OEN       : SVD.Bit := 16#1#;
      --  ******* Description ***********
      CLK22_OEN       : SVD.Bit := 16#1#;
      --  ******* Description ***********
      CLK44_OEN       : SVD.Bit := 16#1#;
      --  ******* Description ***********
      CLK_BB_OEN      : SVD.Bit := 16#1#;
      --  ******* Description ***********
      CLK80_OEN       : SVD.Bit := 16#1#;
      --  ******* Description ***********
      CLK160_OEN      : SVD.Bit := 16#1#;
      --  ******* Description ***********
      CLK_320M_OEN    : SVD.Bit := 16#1#;
      --  ******* Description ***********
      CLK_ADC_INF_OEN : SVD.Bit := 16#1#;
      --  ******* Description ***********
      CLK_DAC_CPU_OEN : SVD.Bit := 16#1#;
      --  ******* Description ***********
      CLK40X_BB_OEN   : SVD.Bit := 16#1#;
      --  ******* Description ***********
      CLK_XTAL_OEN    : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_11_31  : SVD.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_OUT_EN_Register use record
      CLK20_OEN       at 0 range 0 .. 0;
      CLK22_OEN       at 0 range 1 .. 1;
      CLK44_OEN       at 0 range 2 .. 2;
      CLK_BB_OEN      at 0 range 3 .. 3;
      CLK80_OEN       at 0 range 4 .. 4;
      CLK160_OEN      at 0 range 5 .. 5;
      CLK_320M_OEN    at 0 range 6 .. 6;
      CLK_ADC_INF_OEN at 0 range 7 .. 7;
      CLK_DAC_CPU_OEN at 0 range 8 .. 8;
      CLK40X_BB_OEN   at 0 range 9 .. 9;
      CLK_XTAL_OEN    at 0 range 10 .. 10;
      Reserved_11_31  at 0 range 11 .. 31;
   end record;

   --  ******* Description ***********
   type HOST_INF_SEL_Register is record
      --  ******* Description ***********
      PERI_IO_SWAP  : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HOST_INF_SEL_Register use record
      PERI_IO_SWAP  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ******* Description ***********
   type EXT_MEM_PMS_LOCK_Register is record
      --  ******* Description ***********
      EXT_MEM_PMS_LOCK : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31    : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXT_MEM_PMS_LOCK_Register use record
      EXT_MEM_PMS_LOCK at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  ******* Description ***********
   type EXT_MEM_WRITEBACK_BYPASS_Register is record
      --  Set 1 to bypass cache writeback request to external memory so that
      --  spi will not check its attribute.
      WRITEBACK_BYPASS : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31    : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXT_MEM_WRITEBACK_BYPASS_Register use record
      WRITEBACK_BYPASS at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  ******* Description ***********
   type FLASH_ACE0_ATTR_Register is record
      --  ******* Description ***********
      FLASH_ACE0_ATTR : SVD.UInt9 := 16#FF#;
      --  unspecified
      Reserved_9_31   : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACE0_ATTR_Register use record
      FLASH_ACE0_ATTR at 0 range 0 .. 8;
      Reserved_9_31   at 0 range 9 .. 31;
   end record;

   --  ******* Description ***********
   type FLASH_ACE1_ATTR_Register is record
      --  ******* Description ***********
      FLASH_ACE1_ATTR : SVD.UInt9 := 16#FF#;
      --  unspecified
      Reserved_9_31   : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACE1_ATTR_Register use record
      FLASH_ACE1_ATTR at 0 range 0 .. 8;
      Reserved_9_31   at 0 range 9 .. 31;
   end record;

   --  ******* Description ***********
   type FLASH_ACE2_ATTR_Register is record
      --  ******* Description ***********
      FLASH_ACE2_ATTR : SVD.UInt9 := 16#FF#;
      --  unspecified
      Reserved_9_31   : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACE2_ATTR_Register use record
      FLASH_ACE2_ATTR at 0 range 0 .. 8;
      Reserved_9_31   at 0 range 9 .. 31;
   end record;

   --  ******* Description ***********
   type FLASH_ACE3_ATTR_Register is record
      --  ******* Description ***********
      FLASH_ACE3_ATTR : SVD.UInt9 := 16#FF#;
      --  unspecified
      Reserved_9_31   : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACE3_ATTR_Register use record
      FLASH_ACE3_ATTR at 0 range 0 .. 8;
      Reserved_9_31   at 0 range 9 .. 31;
   end record;

   --  ******* Description ***********
   type FLASH_ACE0_SIZE_Register is record
      --  ******* Description ***********
      FLASH_ACE0_SIZE : SVD.UInt16 := 16#1000#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACE0_SIZE_Register use record
      FLASH_ACE0_SIZE at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type FLASH_ACE1_SIZE_Register is record
      --  ******* Description ***********
      FLASH_ACE1_SIZE : SVD.UInt16 := 16#1000#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACE1_SIZE_Register use record
      FLASH_ACE1_SIZE at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type FLASH_ACE2_SIZE_Register is record
      --  ******* Description ***********
      FLASH_ACE2_SIZE : SVD.UInt16 := 16#1000#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACE2_SIZE_Register use record
      FLASH_ACE2_SIZE at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type FLASH_ACE3_SIZE_Register is record
      --  ******* Description ***********
      FLASH_ACE3_SIZE : SVD.UInt16 := 16#1000#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASH_ACE3_SIZE_Register use record
      FLASH_ACE3_SIZE at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type SRAM_ACE0_ATTR_Register is record
      --  ******* Description ***********
      SRAM_ACE0_ATTR : SVD.UInt9 := 16#FF#;
      --  unspecified
      Reserved_9_31  : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_ACE0_ATTR_Register use record
      SRAM_ACE0_ATTR at 0 range 0 .. 8;
      Reserved_9_31  at 0 range 9 .. 31;
   end record;

   --  ******* Description ***********
   type SRAM_ACE1_ATTR_Register is record
      --  ******* Description ***********
      SRAM_ACE1_ATTR : SVD.UInt9 := 16#FF#;
      --  unspecified
      Reserved_9_31  : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_ACE1_ATTR_Register use record
      SRAM_ACE1_ATTR at 0 range 0 .. 8;
      Reserved_9_31  at 0 range 9 .. 31;
   end record;

   --  ******* Description ***********
   type SRAM_ACE2_ATTR_Register is record
      --  ******* Description ***********
      SRAM_ACE2_ATTR : SVD.UInt9 := 16#FF#;
      --  unspecified
      Reserved_9_31  : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_ACE2_ATTR_Register use record
      SRAM_ACE2_ATTR at 0 range 0 .. 8;
      Reserved_9_31  at 0 range 9 .. 31;
   end record;

   --  ******* Description ***********
   type SRAM_ACE3_ATTR_Register is record
      --  ******* Description ***********
      SRAM_ACE3_ATTR : SVD.UInt9 := 16#FF#;
      --  unspecified
      Reserved_9_31  : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_ACE3_ATTR_Register use record
      SRAM_ACE3_ATTR at 0 range 0 .. 8;
      Reserved_9_31  at 0 range 9 .. 31;
   end record;

   --  ******* Description ***********
   type SRAM_ACE0_SIZE_Register is record
      --  ******* Description ***********
      SRAM_ACE0_SIZE : SVD.UInt16 := 16#1000#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_ACE0_SIZE_Register use record
      SRAM_ACE0_SIZE at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type SRAM_ACE1_SIZE_Register is record
      --  ******* Description ***********
      SRAM_ACE1_SIZE : SVD.UInt16 := 16#1000#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_ACE1_SIZE_Register use record
      SRAM_ACE1_SIZE at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type SRAM_ACE2_SIZE_Register is record
      --  ******* Description ***********
      SRAM_ACE2_SIZE : SVD.UInt16 := 16#1000#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_ACE2_SIZE_Register use record
      SRAM_ACE2_SIZE at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type SRAM_ACE3_SIZE_Register is record
      --  ******* Description ***********
      SRAM_ACE3_SIZE : SVD.UInt16 := 16#1000#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAM_ACE3_SIZE_Register use record
      SRAM_ACE3_SIZE at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type SPI_MEM_PMS_CTRL_Register is record
      --  Read-only. ******* Description ***********
      SPI_MEM_REJECT_INT : SVD.Bit := 16#0#;
      --  Write-only. ******* Description ***********
      SPI_MEM_REJECT_CLR : SVD.Bit := 16#0#;
      --  Read-only. ******* Description ***********
      SPI_MEM_REJECT_CDE : SVD.UInt5 := 16#0#;
      --  unspecified
      Reserved_7_31      : SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_PMS_CTRL_Register use record
      SPI_MEM_REJECT_INT at 0 range 0 .. 0;
      SPI_MEM_REJECT_CLR at 0 range 1 .. 1;
      SPI_MEM_REJECT_CDE at 0 range 2 .. 6;
      Reserved_7_31      at 0 range 7 .. 31;
   end record;

   --  ******* Description ***********
   type SDIO_CTRL_Register is record
      --  ******* Description ***********
      SDIO_WIN_ACCESS_EN : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31      : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIO_CTRL_Register use record
      SDIO_WIN_ACCESS_EN at 0 range 0 .. 0;
      Reserved_1_31      at 0 range 1 .. 31;
   end record;

   --  ******* Description ***********
   type REDCY_SIG0_Register is record
      --  ******* Description ***********
      REDCY_SIG0  : SVD.UInt31 := 16#0#;
      --  Read-only. ******* Description ***********
      REDCY_ANDOR : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REDCY_SIG0_Register use record
      REDCY_SIG0  at 0 range 0 .. 30;
      REDCY_ANDOR at 0 range 31 .. 31;
   end record;

   --  ******* Description ***********
   type REDCY_SIG1_Register is record
      --  ******* Description ***********
      REDCY_SIG1   : SVD.UInt31 := 16#0#;
      --  Read-only. ******* Description ***********
      REDCY_NANDOR : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REDCY_SIG1_Register use record
      REDCY_SIG1   at 0 range 0 .. 30;
      REDCY_NANDOR at 0 range 31 .. 31;
   end record;

   --  ******* Description ***********
   type FRONT_END_MEM_PD_Register is record
      --  ******* Description ***********
      AGC_MEM_FORCE_PU  : SVD.Bit := 16#1#;
      --  ******* Description ***********
      AGC_MEM_FORCE_PD  : SVD.Bit := 16#0#;
      --  ******* Description ***********
      PBUS_MEM_FORCE_PU : SVD.Bit := 16#1#;
      --  ******* Description ***********
      PBUS_MEM_FORCE_PD : SVD.Bit := 16#0#;
      --  ******* Description ***********
      DC_MEM_FORCE_PU   : SVD.Bit := 16#1#;
      --  ******* Description ***********
      DC_MEM_FORCE_PD   : SVD.Bit := 16#0#;
      --  ******* Description ***********
      FREQ_MEM_FORCE_PU : SVD.Bit := 16#1#;
      --  ******* Description ***********
      FREQ_MEM_FORCE_PD : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_8_31     : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRONT_END_MEM_PD_Register use record
      AGC_MEM_FORCE_PU  at 0 range 0 .. 0;
      AGC_MEM_FORCE_PD  at 0 range 1 .. 1;
      PBUS_MEM_FORCE_PU at 0 range 2 .. 2;
      PBUS_MEM_FORCE_PD at 0 range 3 .. 3;
      DC_MEM_FORCE_PU   at 0 range 4 .. 4;
      DC_MEM_FORCE_PD   at 0 range 5 .. 5;
      FREQ_MEM_FORCE_PU at 0 range 6 .. 6;
      FREQ_MEM_FORCE_PD at 0 range 7 .. 7;
      Reserved_8_31     at 0 range 8 .. 31;
   end record;

   --  ******* Description ***********
   type SPI_MEM_ECC_CTRL_Register is record
      --  unspecified
      Reserved_0_17   : SVD.UInt18 := 16#0#;
      --  Set the page size of the used MSPI flash. 0: 256 bytes. 1: 512 bytes.
      --  2: 1024 bytes. 3: 2048 bytes.
      FLASH_PAGE_SIZE : SVD.UInt2 := 16#0#;
      --  Set the page size of the used MSPI external RAM. 0: 256 bytes. 1: 512
      --  bytes. 2: 1024 bytes. 3: 2048 bytes.
      SRAM_PAGE_SIZE  : SVD.UInt2 := 16#2#;
      --  unspecified
      Reserved_22_31  : SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI_MEM_ECC_CTRL_Register use record
      Reserved_0_17   at 0 range 0 .. 17;
      FLASH_PAGE_SIZE at 0 range 18 .. 19;
      SRAM_PAGE_SIZE  at 0 range 20 .. 21;
      Reserved_22_31  at 0 range 22 .. 31;
   end record;

   --  ******* Description ***********
   type CLKGATE_FORCE_ON_Register is record
      --  ******* Description ***********
      ROM_CLKGATE_FORCE_ON  : SVD.UInt3 := 16#7#;
      --  ******* Description ***********
      SRAM_CLKGATE_FORCE_ON : SVD.UInt11 := 16#7FF#;
      --  unspecified
      Reserved_14_31        : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKGATE_FORCE_ON_Register use record
      ROM_CLKGATE_FORCE_ON  at 0 range 0 .. 2;
      SRAM_CLKGATE_FORCE_ON at 0 range 3 .. 13;
      Reserved_14_31        at 0 range 14 .. 31;
   end record;

   --  ******* Description ***********
   type MEM_POWER_DOWN_Register is record
      --  ******* Description ***********
      ROM_POWER_DOWN  : SVD.UInt3 := 16#0#;
      --  ******* Description ***********
      SRAM_POWER_DOWN : SVD.UInt11 := 16#0#;
      --  unspecified
      Reserved_14_31  : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_POWER_DOWN_Register use record
      ROM_POWER_DOWN  at 0 range 0 .. 2;
      SRAM_POWER_DOWN at 0 range 3 .. 13;
      Reserved_14_31  at 0 range 14 .. 31;
   end record;

   --  ******* Description ***********
   type MEM_POWER_UP_Register is record
      --  ******* Description ***********
      ROM_POWER_UP   : SVD.UInt3 := 16#7#;
      --  ******* Description ***********
      SRAM_POWER_UP  : SVD.UInt11 := 16#7FF#;
      --  unspecified
      Reserved_14_31 : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MEM_POWER_UP_Register use record
      ROM_POWER_UP   at 0 range 0 .. 2;
      SRAM_POWER_UP  at 0 range 3 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  ******* Description ***********
   type RETENTION_CTRL_Register is record
      --  ******* Description ***********
      RETENTION_CPU_LINK_ADDR : SVD.UInt27 := 16#0#;
      --  ******* Description ***********
      NOBYPASS_CPU_ISO_RST    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_28_31          : SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RETENTION_CTRL_Register use record
      RETENTION_CPU_LINK_ADDR at 0 range 0 .. 26;
      NOBYPASS_CPU_ISO_RST    at 0 range 27 .. 27;
      Reserved_28_31          at 0 range 28 .. 31;
   end record;

   --  ******* Description ***********
   type RETENTION_CTRL1_Register is record
      --  ******* Description ***********
      RETENTION_TAG_LINK_ADDR : SVD.UInt27 := 16#0#;
      --  unspecified
      Reserved_27_31          : SVD.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RETENTION_CTRL1_Register use record
      RETENTION_TAG_LINK_ADDR at 0 range 0 .. 26;
      Reserved_27_31          at 0 range 27 .. 31;
   end record;

   --  ******* Description ***********
   type RETENTION_CTRL2_Register is record
      --  unspecified
      Reserved_0_3           : SVD.UInt4 := 16#0#;
      --  ******* Description ***********
      RET_ICACHE_SIZE        : SVD.Byte := 16#FF#;
      --  unspecified
      Reserved_12_12         : SVD.Bit := 16#0#;
      --  ******* Description ***********
      RET_ICACHE_VLD_SIZE    : SVD.Byte := 16#FF#;
      --  unspecified
      Reserved_21_21         : SVD.Bit := 16#0#;
      --  ******* Description ***********
      RET_ICACHE_START_POINT : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_30_30         : SVD.Bit := 16#0#;
      --  ******* Description ***********
      RET_ICACHE_ENABLE      : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RETENTION_CTRL2_Register use record
      Reserved_0_3           at 0 range 0 .. 3;
      RET_ICACHE_SIZE        at 0 range 4 .. 11;
      Reserved_12_12         at 0 range 12 .. 12;
      RET_ICACHE_VLD_SIZE    at 0 range 13 .. 20;
      Reserved_21_21         at 0 range 21 .. 21;
      RET_ICACHE_START_POINT at 0 range 22 .. 29;
      Reserved_30_30         at 0 range 30 .. 30;
      RET_ICACHE_ENABLE      at 0 range 31 .. 31;
   end record;

   --  ******* Description ***********
   type RETENTION_CTRL3_Register is record
      --  unspecified
      Reserved_0_3           : SVD.UInt4 := 16#0#;
      --  ******* Description ***********
      RET_DCACHE_SIZE        : SVD.UInt9 := 16#1FF#;
      --  ******* Description ***********
      RET_DCACHE_VLD_SIZE    : SVD.UInt9 := 16#1FF#;
      --  ******* Description ***********
      RET_DCACHE_START_POINT : SVD.UInt9 := 16#0#;
      --  ******* Description ***********
      RET_DCACHE_ENABLE      : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RETENTION_CTRL3_Register use record
      Reserved_0_3           at 0 range 0 .. 3;
      RET_DCACHE_SIZE        at 0 range 4 .. 12;
      RET_DCACHE_VLD_SIZE    at 0 range 13 .. 21;
      RET_DCACHE_START_POINT at 0 range 22 .. 30;
      RET_DCACHE_ENABLE      at 0 range 31 .. 31;
   end record;

   --  ******* Description ***********
   type RETENTION_CTRL5_Register is record
      --  ******* Description ***********
      RETENTION_DISABLE : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31     : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RETENTION_CTRL5_Register use record
      RETENTION_DISABLE at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  APB (Advanced Peripheral Bus) Controller
   type APB_CTRL_Peripheral is record
      --  ******* Description ***********
      SYSCLK_CONF              : aliased SYSCLK_CONF_Register;
      --  ******* Description ***********
      TICK_CONF                : aliased TICK_CONF_Register;
      --  ******* Description ***********
      CLK_OUT_EN               : aliased CLK_OUT_EN_Register;
      --  ******* Description ***********
      WIFI_BB_CFG              : aliased SVD.UInt32;
      --  ******* Description ***********
      WIFI_BB_CFG_2            : aliased SVD.UInt32;
      --  ******* Description ***********
      WIFI_CLK_EN              : aliased SVD.UInt32;
      --  ******* Description ***********
      WIFI_RST_EN              : aliased SVD.UInt32;
      --  ******* Description ***********
      HOST_INF_SEL             : aliased HOST_INF_SEL_Register;
      --  ******* Description ***********
      EXT_MEM_PMS_LOCK         : aliased EXT_MEM_PMS_LOCK_Register;
      --  ******* Description ***********
      EXT_MEM_WRITEBACK_BYPASS : aliased EXT_MEM_WRITEBACK_BYPASS_Register;
      --  ******* Description ***********
      FLASH_ACE0_ATTR          : aliased FLASH_ACE0_ATTR_Register;
      --  ******* Description ***********
      FLASH_ACE1_ATTR          : aliased FLASH_ACE1_ATTR_Register;
      --  ******* Description ***********
      FLASH_ACE2_ATTR          : aliased FLASH_ACE2_ATTR_Register;
      --  ******* Description ***********
      FLASH_ACE3_ATTR          : aliased FLASH_ACE3_ATTR_Register;
      --  ******* Description ***********
      FLASH_ACE0_ADDR          : aliased SVD.UInt32;
      --  ******* Description ***********
      FLASH_ACE1_ADDR          : aliased SVD.UInt32;
      --  ******* Description ***********
      FLASH_ACE2_ADDR          : aliased SVD.UInt32;
      --  ******* Description ***********
      FLASH_ACE3_ADDR          : aliased SVD.UInt32;
      --  ******* Description ***********
      FLASH_ACE0_SIZE          : aliased FLASH_ACE0_SIZE_Register;
      --  ******* Description ***********
      FLASH_ACE1_SIZE          : aliased FLASH_ACE1_SIZE_Register;
      --  ******* Description ***********
      FLASH_ACE2_SIZE          : aliased FLASH_ACE2_SIZE_Register;
      --  ******* Description ***********
      FLASH_ACE3_SIZE          : aliased FLASH_ACE3_SIZE_Register;
      --  ******* Description ***********
      SRAM_ACE0_ATTR           : aliased SRAM_ACE0_ATTR_Register;
      --  ******* Description ***********
      SRAM_ACE1_ATTR           : aliased SRAM_ACE1_ATTR_Register;
      --  ******* Description ***********
      SRAM_ACE2_ATTR           : aliased SRAM_ACE2_ATTR_Register;
      --  ******* Description ***********
      SRAM_ACE3_ATTR           : aliased SRAM_ACE3_ATTR_Register;
      --  ******* Description ***********
      SRAM_ACE0_ADDR           : aliased SVD.UInt32;
      --  ******* Description ***********
      SRAM_ACE1_ADDR           : aliased SVD.UInt32;
      --  ******* Description ***********
      SRAM_ACE2_ADDR           : aliased SVD.UInt32;
      --  ******* Description ***********
      SRAM_ACE3_ADDR           : aliased SVD.UInt32;
      --  ******* Description ***********
      SRAM_ACE0_SIZE           : aliased SRAM_ACE0_SIZE_Register;
      --  ******* Description ***********
      SRAM_ACE1_SIZE           : aliased SRAM_ACE1_SIZE_Register;
      --  ******* Description ***********
      SRAM_ACE2_SIZE           : aliased SRAM_ACE2_SIZE_Register;
      --  ******* Description ***********
      SRAM_ACE3_SIZE           : aliased SRAM_ACE3_SIZE_Register;
      --  ******* Description ***********
      SPI_MEM_PMS_CTRL         : aliased SPI_MEM_PMS_CTRL_Register;
      --  ******* Description ***********
      SPI_MEM_REJECT_ADDR      : aliased SVD.UInt32;
      --  ******* Description ***********
      SDIO_CTRL                : aliased SDIO_CTRL_Register;
      --  ******* Description ***********
      REDCY_SIG0               : aliased REDCY_SIG0_Register;
      --  ******* Description ***********
      REDCY_SIG1               : aliased REDCY_SIG1_Register;
      --  ******* Description ***********
      FRONT_END_MEM_PD         : aliased FRONT_END_MEM_PD_Register;
      --  ******* Description ***********
      SPI_MEM_ECC_CTRL         : aliased SPI_MEM_ECC_CTRL_Register;
      --  ******* Description ***********
      CLKGATE_FORCE_ON         : aliased CLKGATE_FORCE_ON_Register;
      --  ******* Description ***********
      MEM_POWER_DOWN           : aliased MEM_POWER_DOWN_Register;
      --  ******* Description ***********
      MEM_POWER_UP             : aliased MEM_POWER_UP_Register;
      --  ******* Description ***********
      RETENTION_CTRL           : aliased RETENTION_CTRL_Register;
      --  ******* Description ***********
      RETENTION_CTRL1          : aliased RETENTION_CTRL1_Register;
      --  ******* Description ***********
      RETENTION_CTRL2          : aliased RETENTION_CTRL2_Register;
      --  ******* Description ***********
      RETENTION_CTRL3          : aliased RETENTION_CTRL3_Register;
      --  ******* Description ***********
      RETENTION_CTRL4          : aliased SVD.UInt32;
      --  ******* Description ***********
      RETENTION_CTRL5          : aliased RETENTION_CTRL5_Register;
      --  ******* Description ***********
      DATE                     : aliased SVD.UInt32;
   end record
     with Volatile;

   for APB_CTRL_Peripheral use record
      SYSCLK_CONF              at 16#0# range 0 .. 31;
      TICK_CONF                at 16#4# range 0 .. 31;
      CLK_OUT_EN               at 16#8# range 0 .. 31;
      WIFI_BB_CFG              at 16#C# range 0 .. 31;
      WIFI_BB_CFG_2            at 16#10# range 0 .. 31;
      WIFI_CLK_EN              at 16#14# range 0 .. 31;
      WIFI_RST_EN              at 16#18# range 0 .. 31;
      HOST_INF_SEL             at 16#1C# range 0 .. 31;
      EXT_MEM_PMS_LOCK         at 16#20# range 0 .. 31;
      EXT_MEM_WRITEBACK_BYPASS at 16#24# range 0 .. 31;
      FLASH_ACE0_ATTR          at 16#28# range 0 .. 31;
      FLASH_ACE1_ATTR          at 16#2C# range 0 .. 31;
      FLASH_ACE2_ATTR          at 16#30# range 0 .. 31;
      FLASH_ACE3_ATTR          at 16#34# range 0 .. 31;
      FLASH_ACE0_ADDR          at 16#38# range 0 .. 31;
      FLASH_ACE1_ADDR          at 16#3C# range 0 .. 31;
      FLASH_ACE2_ADDR          at 16#40# range 0 .. 31;
      FLASH_ACE3_ADDR          at 16#44# range 0 .. 31;
      FLASH_ACE0_SIZE          at 16#48# range 0 .. 31;
      FLASH_ACE1_SIZE          at 16#4C# range 0 .. 31;
      FLASH_ACE2_SIZE          at 16#50# range 0 .. 31;
      FLASH_ACE3_SIZE          at 16#54# range 0 .. 31;
      SRAM_ACE0_ATTR           at 16#58# range 0 .. 31;
      SRAM_ACE1_ATTR           at 16#5C# range 0 .. 31;
      SRAM_ACE2_ATTR           at 16#60# range 0 .. 31;
      SRAM_ACE3_ATTR           at 16#64# range 0 .. 31;
      SRAM_ACE0_ADDR           at 16#68# range 0 .. 31;
      SRAM_ACE1_ADDR           at 16#6C# range 0 .. 31;
      SRAM_ACE2_ADDR           at 16#70# range 0 .. 31;
      SRAM_ACE3_ADDR           at 16#74# range 0 .. 31;
      SRAM_ACE0_SIZE           at 16#78# range 0 .. 31;
      SRAM_ACE1_SIZE           at 16#7C# range 0 .. 31;
      SRAM_ACE2_SIZE           at 16#80# range 0 .. 31;
      SRAM_ACE3_SIZE           at 16#84# range 0 .. 31;
      SPI_MEM_PMS_CTRL         at 16#88# range 0 .. 31;
      SPI_MEM_REJECT_ADDR      at 16#8C# range 0 .. 31;
      SDIO_CTRL                at 16#90# range 0 .. 31;
      REDCY_SIG0               at 16#94# range 0 .. 31;
      REDCY_SIG1               at 16#98# range 0 .. 31;
      FRONT_END_MEM_PD         at 16#9C# range 0 .. 31;
      SPI_MEM_ECC_CTRL         at 16#A0# range 0 .. 31;
      CLKGATE_FORCE_ON         at 16#A8# range 0 .. 31;
      MEM_POWER_DOWN           at 16#AC# range 0 .. 31;
      MEM_POWER_UP             at 16#B0# range 0 .. 31;
      RETENTION_CTRL           at 16#B4# range 0 .. 31;
      RETENTION_CTRL1          at 16#B8# range 0 .. 31;
      RETENTION_CTRL2          at 16#BC# range 0 .. 31;
      RETENTION_CTRL3          at 16#C0# range 0 .. 31;
      RETENTION_CTRL4          at 16#C4# range 0 .. 31;
      RETENTION_CTRL5          at 16#C8# range 0 .. 31;
      DATE                     at 16#3FC# range 0 .. 31;
   end record;

   --  APB (Advanced Peripheral Bus) Controller
   APB_CTRL_Periph : aliased APB_CTRL_Peripheral
     with Import, Address => APB_CTRL_Base;

end SVD.APB_CTRL;
