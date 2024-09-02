pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.EXTMEM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ******* Description ***********
   type DCACHE_CTRL_Register is record
      --  The bit is used to activate the data cache. 0: disable, 1: enable
      DCACHE_ENABLE         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_1          : SVD.Bit := 16#0#;
      --  The bit is used to configure cache memory size.0: 32KB, 1: 64KB
      DCACHE_SIZE_MODE      : SVD.Bit := 16#0#;
      --  The bit is used to configure cache block size.0: 16 bytes, 1: 32
      --  bytes,2: 64 bytes
      DCACHE_BLOCKSIZE_MODE : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_5_31         : SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_CTRL_Register use record
      DCACHE_ENABLE         at 0 range 0 .. 0;
      Reserved_1_1          at 0 range 1 .. 1;
      DCACHE_SIZE_MODE      at 0 range 2 .. 2;
      DCACHE_BLOCKSIZE_MODE at 0 range 3 .. 4;
      Reserved_5_31         at 0 range 5 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_CTRL1_Register is record
      --  The bit is used to disable core0 dbus, 0: enable, 1: disable
      DCACHE_SHUT_CORE0_BUS : SVD.Bit := 16#1#;
      --  The bit is used to disable core1 dbus, 0: enable, 1: disable
      DCACHE_SHUT_CORE1_BUS : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_2_31         : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_CTRL1_Register use record
      DCACHE_SHUT_CORE0_BUS at 0 range 0 .. 0;
      DCACHE_SHUT_CORE1_BUS at 0 range 1 .. 1;
      Reserved_2_31         at 0 range 2 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_TAG_POWER_CTRL_Register is record
      --  The bit is used to close clock gating of dcache tag memory. 1: close
      --  gating, 0: open clock gating.
      DCACHE_TAG_MEM_FORCE_ON : SVD.Bit := 16#1#;
      --  The bit is used to power dcache tag memory down, 0: follow
      --  rtc_lslp_pd, 1: power down
      DCACHE_TAG_MEM_FORCE_PD : SVD.Bit := 16#0#;
      --  The bit is used to power dcache tag memory up, 0: follow rtc_lslp_pd,
      --  1: power up
      DCACHE_TAG_MEM_FORCE_PU : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_3_31           : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_TAG_POWER_CTRL_Register use record
      DCACHE_TAG_MEM_FORCE_ON at 0 range 0 .. 0;
      DCACHE_TAG_MEM_FORCE_PD at 0 range 1 .. 1;
      DCACHE_TAG_MEM_FORCE_PU at 0 range 2 .. 2;
      Reserved_3_31           at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_PRELOCK_CTRL_Register is record
      --  The bit is used to enable the first section of prelock function.
      DCACHE_PRELOCK_SCT0_EN : SVD.Bit := 16#0#;
      --  The bit is used to enable the second section of prelock function.
      DCACHE_PRELOCK_SCT1_EN : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31          : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_PRELOCK_CTRL_Register use record
      DCACHE_PRELOCK_SCT0_EN at 0 range 0 .. 0;
      DCACHE_PRELOCK_SCT1_EN at 0 range 1 .. 1;
      Reserved_2_31          at 0 range 2 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_PRELOCK_SCT_SIZE_Register is record
      --  The bits are used to configure the second length of data locking,
      --  which is combined with DCACHE_PRELOCK_SCT1_ADDR_REG
      DCACHE_PRELOCK_SCT1_SIZE : SVD.UInt16 := 16#0#;
      --  The bits are used to configure the first length of data locking,
      --  which is combined with DCACHE_PRELOCK_SCT0_ADDR_REG
      DCACHE_PRELOCK_SCT0_SIZE : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_PRELOCK_SCT_SIZE_Register use record
      DCACHE_PRELOCK_SCT1_SIZE at 0 range 0 .. 15;
      DCACHE_PRELOCK_SCT0_SIZE at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_LOCK_CTRL_Register is record
      --  The bit is used to enable lock operation. It will be cleared by
      --  hardware after lock operation done.
      DCACHE_LOCK_ENA   : SVD.Bit := 16#0#;
      --  The bit is used to enable unlock operation. It will be cleared by
      --  hardware after unlock operation done.
      DCACHE_UNLOCK_ENA : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate unlock/lock operation is
      --  finished.
      DCACHE_LOCK_DONE  : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_3_31     : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_LOCK_CTRL_Register use record
      DCACHE_LOCK_ENA   at 0 range 0 .. 0;
      DCACHE_UNLOCK_ENA at 0 range 1 .. 1;
      DCACHE_LOCK_DONE  at 0 range 2 .. 2;
      Reserved_3_31     at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_LOCK_SIZE_Register is record
      --  The bits are used to configure the length for lock operations. The
      --  bits are the counts of cache block. It should be combined with
      --  DCACHE_LOCK_ADDR_REG.
      DCACHE_LOCK_SIZE : SVD.UInt16 := 16#0#;
      --  unspecified
      Reserved_16_31   : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_LOCK_SIZE_Register use record
      DCACHE_LOCK_SIZE at 0 range 0 .. 15;
      Reserved_16_31   at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_SYNC_CTRL_Register is record
      --  The bit is used to enable invalidate operation. It will be cleared by
      --  hardware after invalidate operation done.
      DCACHE_INVALIDATE_ENA : SVD.Bit := 16#1#;
      --  The bit is used to enable writeback operation. It will be cleared by
      --  hardware after writeback operation done.
      DCACHE_WRITEBACK_ENA  : SVD.Bit := 16#0#;
      --  The bit is used to enable clean operation. It will be cleared by
      --  hardware after clean operation done.
      DCACHE_CLEAN_ENA      : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate clean/writeback/invalidate
      --  operation is finished.
      DCACHE_SYNC_DONE      : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_4_31         : SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_SYNC_CTRL_Register use record
      DCACHE_INVALIDATE_ENA at 0 range 0 .. 0;
      DCACHE_WRITEBACK_ENA  at 0 range 1 .. 1;
      DCACHE_CLEAN_ENA      at 0 range 2 .. 2;
      DCACHE_SYNC_DONE      at 0 range 3 .. 3;
      Reserved_4_31         at 0 range 4 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_SYNC_SIZE_Register is record
      --  The bits are used to configure the length for sync operations. The
      --  bits are the counts of cache block. It should be combined with
      --  DCACHE_SYNC_ADDR_REG.
      DCACHE_SYNC_SIZE : SVD.UInt23 := 16#0#;
      --  unspecified
      Reserved_23_31   : SVD.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_SYNC_SIZE_Register use record
      DCACHE_SYNC_SIZE at 0 range 0 .. 22;
      Reserved_23_31   at 0 range 23 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_OCCUPY_CTRL_Register is record
      --  The bit is used to enable occupy operation. It will be cleared by
      --  hardware after issuing Auot-Invalidate Operation.
      DCACHE_OCCUPY_ENA  : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate occupy operation is finished.
      DCACHE_OCCUPY_DONE : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_2_31      : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_OCCUPY_CTRL_Register use record
      DCACHE_OCCUPY_ENA  at 0 range 0 .. 0;
      DCACHE_OCCUPY_DONE at 0 range 1 .. 1;
      Reserved_2_31      at 0 range 2 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_OCCUPY_SIZE_Register is record
      --  The bits are used to configure the length for occupy operation. The
      --  bits are the counts of cache block. It should be combined with
      --  DCACHE_OCCUPY_ADDR_REG.
      DCACHE_OCCUPY_SIZE : SVD.UInt16 := 16#0#;
      --  unspecified
      Reserved_16_31     : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_OCCUPY_SIZE_Register use record
      DCACHE_OCCUPY_SIZE at 0 range 0 .. 15;
      Reserved_16_31     at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_PRELOAD_CTRL_Register is record
      --  The bit is used to enable preload operation. It will be cleared by
      --  hardware after preload operation done.
      DCACHE_PRELOAD_ENA   : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate preload operation is finished.
      DCACHE_PRELOAD_DONE  : SVD.Bit := 16#1#;
      --  The bit is used to configure the direction of preload operation. 1:
      --  descending, 0: ascending.
      DCACHE_PRELOAD_ORDER : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_3_31        : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_PRELOAD_CTRL_Register use record
      DCACHE_PRELOAD_ENA   at 0 range 0 .. 0;
      DCACHE_PRELOAD_DONE  at 0 range 1 .. 1;
      DCACHE_PRELOAD_ORDER at 0 range 2 .. 2;
      Reserved_3_31        at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_PRELOAD_SIZE_Register is record
      --  The bits are used to configure the length for preload operation. The
      --  bits are the counts of cache block. It should be combined with
      --  DCACHE_PRELOAD_ADDR_REG..
      DCACHE_PRELOAD_SIZE : SVD.UInt16 := 16#0#;
      --  unspecified
      Reserved_16_31      : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_PRELOAD_SIZE_Register use record
      DCACHE_PRELOAD_SIZE at 0 range 0 .. 15;
      Reserved_16_31      at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_AUTOLOAD_CTRL_Register is record
      --  The bits are used to enable the first section for autoload operation.
      DCACHE_AUTOLOAD_SCT0_ENA     : SVD.Bit := 16#0#;
      --  The bits are used to enable the second section for autoload
      --  operation.
      DCACHE_AUTOLOAD_SCT1_ENA     : SVD.Bit := 16#0#;
      --  The bit is used to enable and disable autoload operation. It is
      --  combined with dcache_autoload_done. 1: enable, 0: disable.
      DCACHE_AUTOLOAD_ENA          : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate autoload operation is
      --  finished.
      DCACHE_AUTOLOAD_DONE         : SVD.Bit := 16#1#;
      --  The bits are used to configure the direction of autoload. 1:
      --  descending, 0: ascending.
      DCACHE_AUTOLOAD_ORDER        : SVD.Bit := 16#0#;
      --  The bits are used to configure trigger conditions for autoload. 0/3:
      --  cache miss, 1: cache hit, 2: both cache miss and hit.
      DCACHE_AUTOLOAD_RQST         : SVD.UInt2 := 16#0#;
      --  The bits are used to configure the numbers of the cache block for the
      --  issuing autoload operation.
      DCACHE_AUTOLOAD_SIZE         : SVD.UInt2 := 16#0#;
      --  The bit is used to clear autoload buffer in dcache.
      DCACHE_AUTOLOAD_BUFFER_CLEAR : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_31               : SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_AUTOLOAD_CTRL_Register use record
      DCACHE_AUTOLOAD_SCT0_ENA     at 0 range 0 .. 0;
      DCACHE_AUTOLOAD_SCT1_ENA     at 0 range 1 .. 1;
      DCACHE_AUTOLOAD_ENA          at 0 range 2 .. 2;
      DCACHE_AUTOLOAD_DONE         at 0 range 3 .. 3;
      DCACHE_AUTOLOAD_ORDER        at 0 range 4 .. 4;
      DCACHE_AUTOLOAD_RQST         at 0 range 5 .. 6;
      DCACHE_AUTOLOAD_SIZE         at 0 range 7 .. 8;
      DCACHE_AUTOLOAD_BUFFER_CLEAR at 0 range 9 .. 9;
      Reserved_10_31               at 0 range 10 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_AUTOLOAD_SCT0_SIZE_Register is record
      --  The bits are used to configure the length of the first section for
      --  autoload operation. It should be combined with
      --  dcache_autoload_sct0_ena.
      DCACHE_AUTOLOAD_SCT0_SIZE : SVD.UInt27 := 16#0#;
      --  unspecified
      Reserved_27_31            : SVD.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_AUTOLOAD_SCT0_SIZE_Register use record
      DCACHE_AUTOLOAD_SCT0_SIZE at 0 range 0 .. 26;
      Reserved_27_31            at 0 range 27 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_AUTOLOAD_SCT1_SIZE_Register is record
      --  The bits are used to configure the length of the second section for
      --  autoload operation. It should be combined with
      --  dcache_autoload_sct1_ena.
      DCACHE_AUTOLOAD_SCT1_SIZE : SVD.UInt27 := 16#0#;
      --  unspecified
      Reserved_27_31            : SVD.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_AUTOLOAD_SCT1_SIZE_Register use record
      DCACHE_AUTOLOAD_SCT1_SIZE at 0 range 0 .. 26;
      Reserved_27_31            at 0 range 27 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_CTRL_Register is record
      --  The bit is used to activate the data cache. 0: disable, 1: enable
      ICACHE_ENABLE         : SVD.Bit := 16#0#;
      --  The bit is used to configure cache way mode.0: 4-way, 1: 8-way
      ICACHE_WAY_MODE       : SVD.Bit := 16#0#;
      --  The bit is used to configure cache memory size.0: 16KB, 1: 32KB
      ICACHE_SIZE_MODE      : SVD.Bit := 16#0#;
      --  The bit is used to configure cache block size.0: 16 bytes, 1: 32
      --  bytes
      ICACHE_BLOCKSIZE_MODE : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_4_31         : SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_CTRL_Register use record
      ICACHE_ENABLE         at 0 range 0 .. 0;
      ICACHE_WAY_MODE       at 0 range 1 .. 1;
      ICACHE_SIZE_MODE      at 0 range 2 .. 2;
      ICACHE_BLOCKSIZE_MODE at 0 range 3 .. 3;
      Reserved_4_31         at 0 range 4 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_CTRL1_Register is record
      --  The bit is used to disable core0 ibus, 0: enable, 1: disable
      ICACHE_SHUT_CORE0_BUS : SVD.Bit := 16#1#;
      --  The bit is used to disable core1 ibus, 0: enable, 1: disable
      ICACHE_SHUT_CORE1_BUS : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_2_31         : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_CTRL1_Register use record
      ICACHE_SHUT_CORE0_BUS at 0 range 0 .. 0;
      ICACHE_SHUT_CORE1_BUS at 0 range 1 .. 1;
      Reserved_2_31         at 0 range 2 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_TAG_POWER_CTRL_Register is record
      --  The bit is used to close clock gating of icache tag memory. 1: close
      --  gating, 0: open clock gating.
      ICACHE_TAG_MEM_FORCE_ON : SVD.Bit := 16#1#;
      --  The bit is used to power icache tag memory down, 0: follow rtc_lslp,
      --  1: power down
      ICACHE_TAG_MEM_FORCE_PD : SVD.Bit := 16#0#;
      --  The bit is used to power icache tag memory up, 0: follow rtc_lslp, 1:
      --  power up
      ICACHE_TAG_MEM_FORCE_PU : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_3_31           : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_TAG_POWER_CTRL_Register use record
      ICACHE_TAG_MEM_FORCE_ON at 0 range 0 .. 0;
      ICACHE_TAG_MEM_FORCE_PD at 0 range 1 .. 1;
      ICACHE_TAG_MEM_FORCE_PU at 0 range 2 .. 2;
      Reserved_3_31           at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_PRELOCK_CTRL_Register is record
      --  The bit is used to enable the first section of prelock function.
      ICACHE_PRELOCK_SCT0_EN : SVD.Bit := 16#0#;
      --  The bit is used to enable the second section of prelock function.
      ICACHE_PRELOCK_SCT1_EN : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31          : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_PRELOCK_CTRL_Register use record
      ICACHE_PRELOCK_SCT0_EN at 0 range 0 .. 0;
      ICACHE_PRELOCK_SCT1_EN at 0 range 1 .. 1;
      Reserved_2_31          at 0 range 2 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_PRELOCK_SCT_SIZE_Register is record
      --  The bits are used to configure the second length of data locking,
      --  which is combined with ICACHE_PRELOCK_SCT1_ADDR_REG
      ICACHE_PRELOCK_SCT1_SIZE : SVD.UInt16 := 16#0#;
      --  The bits are used to configure the first length of data locking,
      --  which is combined with ICACHE_PRELOCK_SCT0_ADDR_REG
      ICACHE_PRELOCK_SCT0_SIZE : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_PRELOCK_SCT_SIZE_Register use record
      ICACHE_PRELOCK_SCT1_SIZE at 0 range 0 .. 15;
      ICACHE_PRELOCK_SCT0_SIZE at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_LOCK_CTRL_Register is record
      --  The bit is used to enable lock operation. It will be cleared by
      --  hardware after lock operation done.
      ICACHE_LOCK_ENA   : SVD.Bit := 16#0#;
      --  The bit is used to enable unlock operation. It will be cleared by
      --  hardware after unlock operation done.
      ICACHE_UNLOCK_ENA : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate unlock/lock operation is
      --  finished.
      ICACHE_LOCK_DONE  : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_3_31     : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_LOCK_CTRL_Register use record
      ICACHE_LOCK_ENA   at 0 range 0 .. 0;
      ICACHE_UNLOCK_ENA at 0 range 1 .. 1;
      ICACHE_LOCK_DONE  at 0 range 2 .. 2;
      Reserved_3_31     at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_LOCK_SIZE_Register is record
      --  The bits are used to configure the length for lock operations. The
      --  bits are the counts of cache block. It should be combined with
      --  ICACHE_LOCK_ADDR_REG.
      ICACHE_LOCK_SIZE : SVD.UInt16 := 16#0#;
      --  unspecified
      Reserved_16_31   : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_LOCK_SIZE_Register use record
      ICACHE_LOCK_SIZE at 0 range 0 .. 15;
      Reserved_16_31   at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_SYNC_CTRL_Register is record
      --  The bit is used to enable invalidate operation. It will be cleared by
      --  hardware after invalidate operation done.
      ICACHE_INVALIDATE_ENA : SVD.Bit := 16#1#;
      --  Read-only. The bit is used to indicate invalidate operation is
      --  finished.
      ICACHE_SYNC_DONE      : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31         : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_SYNC_CTRL_Register use record
      ICACHE_INVALIDATE_ENA at 0 range 0 .. 0;
      ICACHE_SYNC_DONE      at 0 range 1 .. 1;
      Reserved_2_31         at 0 range 2 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_SYNC_SIZE_Register is record
      --  The bits are used to configure the length for sync operations. The
      --  bits are the counts of cache block. It should be combined with
      --  ICACHE_SYNC_ADDR_REG.
      ICACHE_SYNC_SIZE : SVD.UInt23 := 16#0#;
      --  unspecified
      Reserved_23_31   : SVD.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_SYNC_SIZE_Register use record
      ICACHE_SYNC_SIZE at 0 range 0 .. 22;
      Reserved_23_31   at 0 range 23 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_PRELOAD_CTRL_Register is record
      --  The bit is used to enable preload operation. It will be cleared by
      --  hardware after preload operation done.
      ICACHE_PRELOAD_ENA   : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate preload operation is finished.
      ICACHE_PRELOAD_DONE  : SVD.Bit := 16#1#;
      --  The bit is used to configure the direction of preload operation. 1:
      --  descending, 0: ascending.
      ICACHE_PRELOAD_ORDER : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_3_31        : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_PRELOAD_CTRL_Register use record
      ICACHE_PRELOAD_ENA   at 0 range 0 .. 0;
      ICACHE_PRELOAD_DONE  at 0 range 1 .. 1;
      ICACHE_PRELOAD_ORDER at 0 range 2 .. 2;
      Reserved_3_31        at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_PRELOAD_SIZE_Register is record
      --  The bits are used to configure the length for preload operation. The
      --  bits are the counts of cache block. It should be combined with
      --  ICACHE_PRELOAD_ADDR_REG..
      ICACHE_PRELOAD_SIZE : SVD.UInt16 := 16#0#;
      --  unspecified
      Reserved_16_31      : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_PRELOAD_SIZE_Register use record
      ICACHE_PRELOAD_SIZE at 0 range 0 .. 15;
      Reserved_16_31      at 0 range 16 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_AUTOLOAD_CTRL_Register is record
      --  The bits are used to enable the first section for autoload operation.
      ICACHE_AUTOLOAD_SCT0_ENA     : SVD.Bit := 16#0#;
      --  The bits are used to enable the second section for autoload
      --  operation.
      ICACHE_AUTOLOAD_SCT1_ENA     : SVD.Bit := 16#0#;
      --  The bit is used to enable and disable autoload operation. It is
      --  combined with icache_autoload_done. 1: enable, 0: disable.
      ICACHE_AUTOLOAD_ENA          : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate autoload operation is
      --  finished.
      ICACHE_AUTOLOAD_DONE         : SVD.Bit := 16#1#;
      --  The bits are used to configure the direction of autoload. 1:
      --  descending, 0: ascending.
      ICACHE_AUTOLOAD_ORDER        : SVD.Bit := 16#0#;
      --  The bits are used to configure trigger conditions for autoload. 0/3:
      --  cache miss, 1: cache hit, 2: both cache miss and hit.
      ICACHE_AUTOLOAD_RQST         : SVD.UInt2 := 16#0#;
      --  The bits are used to configure the numbers of the cache block for the
      --  issuing autoload operation.
      ICACHE_AUTOLOAD_SIZE         : SVD.UInt2 := 16#0#;
      --  The bit is used to clear autoload buffer in icache.
      ICACHE_AUTOLOAD_BUFFER_CLEAR : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_31               : SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_AUTOLOAD_CTRL_Register use record
      ICACHE_AUTOLOAD_SCT0_ENA     at 0 range 0 .. 0;
      ICACHE_AUTOLOAD_SCT1_ENA     at 0 range 1 .. 1;
      ICACHE_AUTOLOAD_ENA          at 0 range 2 .. 2;
      ICACHE_AUTOLOAD_DONE         at 0 range 3 .. 3;
      ICACHE_AUTOLOAD_ORDER        at 0 range 4 .. 4;
      ICACHE_AUTOLOAD_RQST         at 0 range 5 .. 6;
      ICACHE_AUTOLOAD_SIZE         at 0 range 7 .. 8;
      ICACHE_AUTOLOAD_BUFFER_CLEAR at 0 range 9 .. 9;
      Reserved_10_31               at 0 range 10 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_AUTOLOAD_SCT0_SIZE_Register is record
      --  The bits are used to configure the length of the first section for
      --  autoload operation. It should be combined with
      --  icache_autoload_sct0_ena.
      ICACHE_AUTOLOAD_SCT0_SIZE : SVD.UInt27 := 16#0#;
      --  unspecified
      Reserved_27_31            : SVD.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_AUTOLOAD_SCT0_SIZE_Register use record
      ICACHE_AUTOLOAD_SCT0_SIZE at 0 range 0 .. 26;
      Reserved_27_31            at 0 range 27 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_AUTOLOAD_SCT1_SIZE_Register is record
      --  The bits are used to configure the length of the second section for
      --  autoload operation. It should be combined with
      --  icache_autoload_sct1_ena.
      ICACHE_AUTOLOAD_SCT1_SIZE : SVD.UInt27 := 16#0#;
      --  unspecified
      Reserved_27_31            : SVD.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_AUTOLOAD_SCT1_SIZE_Register use record
      ICACHE_AUTOLOAD_SCT1_SIZE at 0 range 0 .. 26;
      Reserved_27_31            at 0 range 27 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_ACS_CNT_CLR_Register is record
      --  Write-only. The bit is used to clear dcache counter.
      DCACHE_ACS_CNT_CLR : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear icache counter.
      ICACHE_ACS_CNT_CLR : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31      : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_ACS_CNT_CLR_Register use record
      DCACHE_ACS_CNT_CLR at 0 range 0 .. 0;
      ICACHE_ACS_CNT_CLR at 0 range 1 .. 1;
      Reserved_2_31      at 0 range 2 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_ILG_INT_ENA_Register is record
      --  The bit is used to enable interrupt by sync configurations fault.
      ICACHE_SYNC_OP_FAULT_INT_ENA    : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by preload configurations fault.
      ICACHE_PRELOAD_OP_FAULT_INT_ENA : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by sync configurations fault.
      DCACHE_SYNC_OP_FAULT_INT_ENA    : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by preload configurations fault.
      DCACHE_PRELOAD_OP_FAULT_INT_ENA : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by dcache trying to write flash.
      DCACHE_WRITE_FLASH_INT_ENA      : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by mmu entry fault.
      MMU_ENTRY_FAULT_INT_ENA         : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by dcache trying to replace a
      --  line whose blocks all have been occupied by occupy-mode.
      DCACHE_OCCUPY_EXC_INT_ENA       : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by ibus counter overflow.
      IBUS_CNT_OVF_INT_ENA            : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by dbus counter overflow.
      DBUS_CNT_OVF_INT_ENA            : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_9_31                   : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_ILG_INT_ENA_Register use record
      ICACHE_SYNC_OP_FAULT_INT_ENA    at 0 range 0 .. 0;
      ICACHE_PRELOAD_OP_FAULT_INT_ENA at 0 range 1 .. 1;
      DCACHE_SYNC_OP_FAULT_INT_ENA    at 0 range 2 .. 2;
      DCACHE_PRELOAD_OP_FAULT_INT_ENA at 0 range 3 .. 3;
      DCACHE_WRITE_FLASH_INT_ENA      at 0 range 4 .. 4;
      MMU_ENTRY_FAULT_INT_ENA         at 0 range 5 .. 5;
      DCACHE_OCCUPY_EXC_INT_ENA       at 0 range 6 .. 6;
      IBUS_CNT_OVF_INT_ENA            at 0 range 7 .. 7;
      DBUS_CNT_OVF_INT_ENA            at 0 range 8 .. 8;
      Reserved_9_31                   at 0 range 9 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_ILG_INT_CLR_Register is record
      --  Write-only. The bit is used to clear interrupt by sync configurations
      --  fault.
      ICACHE_SYNC_OP_FAULT_INT_CLR    : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by preload
      --  configurations fault.
      ICACHE_PRELOAD_OP_FAULT_INT_CLR : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by sync configurations
      --  fault.
      DCACHE_SYNC_OP_FAULT_INT_CLR    : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by preload
      --  configurations fault.
      DCACHE_PRELOAD_OP_FAULT_INT_CLR : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by dcache trying to
      --  write flash.
      DCACHE_WRITE_FLASH_INT_CLR      : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by mmu entry fault.
      MMU_ENTRY_FAULT_INT_CLR         : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by dcache trying to
      --  replace a line whose blocks all have been occupied by occupy-mode.
      DCACHE_OCCUPY_EXC_INT_CLR       : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by ibus counter
      --  overflow.
      IBUS_CNT_OVF_INT_CLR            : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by dbus counter
      --  overflow.
      DBUS_CNT_OVF_INT_CLR            : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_9_31                   : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_ILG_INT_CLR_Register use record
      ICACHE_SYNC_OP_FAULT_INT_CLR    at 0 range 0 .. 0;
      ICACHE_PRELOAD_OP_FAULT_INT_CLR at 0 range 1 .. 1;
      DCACHE_SYNC_OP_FAULT_INT_CLR    at 0 range 2 .. 2;
      DCACHE_PRELOAD_OP_FAULT_INT_CLR at 0 range 3 .. 3;
      DCACHE_WRITE_FLASH_INT_CLR      at 0 range 4 .. 4;
      MMU_ENTRY_FAULT_INT_CLR         at 0 range 5 .. 5;
      DCACHE_OCCUPY_EXC_INT_CLR       at 0 range 6 .. 6;
      IBUS_CNT_OVF_INT_CLR            at 0 range 7 .. 7;
      DBUS_CNT_OVF_INT_CLR            at 0 range 8 .. 8;
      Reserved_9_31                   at 0 range 9 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_ILG_INT_ST_Register is record
      --  Read-only. The bit is used to indicate interrupt by sync
      --  configurations fault.
      ICACHE_SYNC_OP_FAULT_ST         : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by preload
      --  configurations fault.
      ICACHE_PRELOAD_OP_FAULT_ST      : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by sync
      --  configurations fault.
      DCACHE_SYNC_OP_FAULT_ST         : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by preload
      --  configurations fault.
      DCACHE_PRELOAD_OP_FAULT_ST      : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by dcache trying to
      --  write flash.
      DCACHE_WRITE_FLASH_ST           : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by mmu entry fault.
      MMU_ENTRY_FAULT_ST              : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by dcache trying to
      --  replace a line whose blocks all have been occupied by occupy-mode.
      DCACHE_OCCUPY_EXC_ST            : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by ibus access
      --  flash/spiram counter overflow.
      IBUS_ACS_CNT_OVF_ST             : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by ibus access
      --  flash/spiram miss counter overflow.
      IBUS_ACS_MISS_CNT_OVF_ST        : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by dbus access
      --  flash/spiram counter overflow.
      DBUS_ACS_CNT_OVF_ST             : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by dbus access flash
      --  miss counter overflow.
      DBUS_ACS_FLASH_MISS_CNT_OVF_ST  : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by dbus access
      --  spiram miss counter overflow.
      DBUS_ACS_SPIRAM_MISS_CNT_OVF_ST : SVD.Bit;
      --  unspecified
      Reserved_12_31                  : SVD.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_ILG_INT_ST_Register use record
      ICACHE_SYNC_OP_FAULT_ST         at 0 range 0 .. 0;
      ICACHE_PRELOAD_OP_FAULT_ST      at 0 range 1 .. 1;
      DCACHE_SYNC_OP_FAULT_ST         at 0 range 2 .. 2;
      DCACHE_PRELOAD_OP_FAULT_ST      at 0 range 3 .. 3;
      DCACHE_WRITE_FLASH_ST           at 0 range 4 .. 4;
      MMU_ENTRY_FAULT_ST              at 0 range 5 .. 5;
      DCACHE_OCCUPY_EXC_ST            at 0 range 6 .. 6;
      IBUS_ACS_CNT_OVF_ST             at 0 range 7 .. 7;
      IBUS_ACS_MISS_CNT_OVF_ST        at 0 range 8 .. 8;
      DBUS_ACS_CNT_OVF_ST             at 0 range 9 .. 9;
      DBUS_ACS_FLASH_MISS_CNT_OVF_ST  at 0 range 10 .. 10;
      DBUS_ACS_SPIRAM_MISS_CNT_OVF_ST at 0 range 11 .. 11;
      Reserved_12_31                  at 0 range 12 .. 31;
   end record;

   --  ******* Description ***********
   type CORE0_ACS_CACHE_INT_ENA_Register is record
      --  The bit is used to enable interrupt by cpu access icache while the
      --  corresponding ibus is disabled which include speculative access.
      CORE0_IBUS_ACS_MSK_IC_INT_ENA : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by ibus trying to write icache
      CORE0_IBUS_WR_IC_INT_ENA      : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by authentication fail.
      CORE0_IBUS_REJECT_INT_ENA     : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by cpu access dcache while the
      --  corresponding dbus is disabled which include speculative access.
      CORE0_DBUS_ACS_MSK_DC_INT_ENA : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by authentication fail.
      CORE0_DBUS_REJECT_INT_ENA     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_5_31                 : SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE0_ACS_CACHE_INT_ENA_Register use record
      CORE0_IBUS_ACS_MSK_IC_INT_ENA at 0 range 0 .. 0;
      CORE0_IBUS_WR_IC_INT_ENA      at 0 range 1 .. 1;
      CORE0_IBUS_REJECT_INT_ENA     at 0 range 2 .. 2;
      CORE0_DBUS_ACS_MSK_DC_INT_ENA at 0 range 3 .. 3;
      CORE0_DBUS_REJECT_INT_ENA     at 0 range 4 .. 4;
      Reserved_5_31                 at 0 range 5 .. 31;
   end record;

   --  ******* Description ***********
   type CORE0_ACS_CACHE_INT_CLR_Register is record
      --  Write-only. The bit is used to clear interrupt by cpu access icache
      --  while the corresponding ibus is disabled or icache is disabled which
      --  include speculative access.
      CORE0_IBUS_ACS_MSK_IC_INT_CLR : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by ibus trying to
      --  write icache
      CORE0_IBUS_WR_IC_INT_CLR      : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by authentication
      --  fail.
      CORE0_IBUS_REJECT_INT_CLR     : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by cpu access dcache
      --  while the corresponding dbus is disabled or dcache is disabled which
      --  include speculative access.
      CORE0_DBUS_ACS_MSK_DC_INT_CLR : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by authentication
      --  fail.
      CORE0_DBUS_REJECT_INT_CLR     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_5_31                 : SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE0_ACS_CACHE_INT_CLR_Register use record
      CORE0_IBUS_ACS_MSK_IC_INT_CLR at 0 range 0 .. 0;
      CORE0_IBUS_WR_IC_INT_CLR      at 0 range 1 .. 1;
      CORE0_IBUS_REJECT_INT_CLR     at 0 range 2 .. 2;
      CORE0_DBUS_ACS_MSK_DC_INT_CLR at 0 range 3 .. 3;
      CORE0_DBUS_REJECT_INT_CLR     at 0 range 4 .. 4;
      Reserved_5_31                 at 0 range 5 .. 31;
   end record;

   --  ******* Description ***********
   type CORE0_ACS_CACHE_INT_ST_Register is record
      --  Read-only. The bit is used to indicate interrupt by cpu access icache
      --  while the core0_ibus is disabled or icache is disabled which include
      --  speculative access.
      CORE0_IBUS_ACS_MSK_ICACHE_ST : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by ibus trying to
      --  write icache
      CORE0_IBUS_WR_ICACHE_ST      : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by authentication
      --  fail.
      CORE0_IBUS_REJECT_ST         : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by cpu access dcache
      --  while the core0_dbus is disabled or dcache is disabled which include
      --  speculative access.
      CORE0_DBUS_ACS_MSK_DCACHE_ST : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by authentication
      --  fail.
      CORE0_DBUS_REJECT_ST         : SVD.Bit;
      --  unspecified
      Reserved_5_31                : SVD.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE0_ACS_CACHE_INT_ST_Register use record
      CORE0_IBUS_ACS_MSK_ICACHE_ST at 0 range 0 .. 0;
      CORE0_IBUS_WR_ICACHE_ST      at 0 range 1 .. 1;
      CORE0_IBUS_REJECT_ST         at 0 range 2 .. 2;
      CORE0_DBUS_ACS_MSK_DCACHE_ST at 0 range 3 .. 3;
      CORE0_DBUS_REJECT_ST         at 0 range 4 .. 4;
      Reserved_5_31                at 0 range 5 .. 31;
   end record;

   --  ******* Description ***********
   type CORE1_ACS_CACHE_INT_ENA_Register is record
      --  The bit is used to enable interrupt by cpu access icache while the
      --  corresponding ibus is disabled which include speculative access.
      CORE1_IBUS_ACS_MSK_IC_INT_ENA : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by ibus trying to write icache
      CORE1_IBUS_WR_IC_INT_ENA      : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by authentication fail.
      CORE1_IBUS_REJECT_INT_ENA     : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by cpu access dcache while the
      --  corresponding dbus is disabled which include speculative access.
      CORE1_DBUS_ACS_MSK_DC_INT_ENA : SVD.Bit := 16#0#;
      --  The bit is used to enable interrupt by authentication fail.
      CORE1_DBUS_REJECT_INT_ENA     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_5_31                 : SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE1_ACS_CACHE_INT_ENA_Register use record
      CORE1_IBUS_ACS_MSK_IC_INT_ENA at 0 range 0 .. 0;
      CORE1_IBUS_WR_IC_INT_ENA      at 0 range 1 .. 1;
      CORE1_IBUS_REJECT_INT_ENA     at 0 range 2 .. 2;
      CORE1_DBUS_ACS_MSK_DC_INT_ENA at 0 range 3 .. 3;
      CORE1_DBUS_REJECT_INT_ENA     at 0 range 4 .. 4;
      Reserved_5_31                 at 0 range 5 .. 31;
   end record;

   --  ******* Description ***********
   type CORE1_ACS_CACHE_INT_CLR_Register is record
      --  Write-only. The bit is used to clear interrupt by cpu access icache
      --  while the corresponding ibus is disabled or icache is disabled which
      --  include speculative access.
      CORE1_IBUS_ACS_MSK_IC_INT_CLR : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by ibus trying to
      --  write icache
      CORE1_IBUS_WR_IC_INT_CLR      : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by authentication
      --  fail.
      CORE1_IBUS_REJECT_INT_CLR     : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by cpu access dcache
      --  while the corresponding dbus is disabled or dcache is disabled which
      --  include speculative access.
      CORE1_DBUS_ACS_MSK_DC_INT_CLR : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear interrupt by authentication
      --  fail.
      CORE1_DBUS_REJECT_INT_CLR     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_5_31                 : SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE1_ACS_CACHE_INT_CLR_Register use record
      CORE1_IBUS_ACS_MSK_IC_INT_CLR at 0 range 0 .. 0;
      CORE1_IBUS_WR_IC_INT_CLR      at 0 range 1 .. 1;
      CORE1_IBUS_REJECT_INT_CLR     at 0 range 2 .. 2;
      CORE1_DBUS_ACS_MSK_DC_INT_CLR at 0 range 3 .. 3;
      CORE1_DBUS_REJECT_INT_CLR     at 0 range 4 .. 4;
      Reserved_5_31                 at 0 range 5 .. 31;
   end record;

   --  ******* Description ***********
   type CORE1_ACS_CACHE_INT_ST_Register is record
      --  Read-only. The bit is used to indicate interrupt by cpu access icache
      --  while the core1_ibus is disabled or icache is disabled which include
      --  speculative access.
      CORE1_IBUS_ACS_MSK_ICACHE_ST : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by ibus trying to
      --  write icache
      CORE1_IBUS_WR_ICACHE_ST      : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by authentication
      --  fail.
      CORE1_IBUS_REJECT_ST         : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by cpu access dcache
      --  while the core1_dbus is disabled or dcache is disabled which include
      --  speculative access.
      CORE1_DBUS_ACS_MSK_DCACHE_ST : SVD.Bit;
      --  Read-only. The bit is used to indicate interrupt by authentication
      --  fail.
      CORE1_DBUS_REJECT_ST         : SVD.Bit;
      --  unspecified
      Reserved_5_31                : SVD.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE1_ACS_CACHE_INT_ST_Register use record
      CORE1_IBUS_ACS_MSK_ICACHE_ST at 0 range 0 .. 0;
      CORE1_IBUS_WR_ICACHE_ST      at 0 range 1 .. 1;
      CORE1_IBUS_REJECT_ST         at 0 range 2 .. 2;
      CORE1_DBUS_ACS_MSK_DCACHE_ST at 0 range 3 .. 3;
      CORE1_DBUS_REJECT_ST         at 0 range 4 .. 4;
      Reserved_5_31                at 0 range 5 .. 31;
   end record;

   --  ******* Description ***********
   type CORE0_DBUS_REJECT_ST_Register is record
      --  Read-only. The bits are used to indicate the attribute of data from
      --  external memory when authentication fail. 0: invalidate, 1:
      --  execute-able, 2: read-able, 4: write-able.
      CORE0_DBUS_TAG_ATTR : SVD.UInt3;
      --  Read-only. The bits are used to indicate the attribute of CPU access
      --  dbus when authentication fail. 0: invalidate, 1: execute-able, 2:
      --  read-able, 4: write-able.
      CORE0_DBUS_ATTR     : SVD.UInt3;
      --  Read-only. The bit is used to indicate the world of CPU access dbus
      --  when authentication fail. 0: WORLD0, 1: WORLD1
      CORE0_DBUS_WORLD    : SVD.Bit;
      --  unspecified
      Reserved_7_31       : SVD.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE0_DBUS_REJECT_ST_Register use record
      CORE0_DBUS_TAG_ATTR at 0 range 0 .. 2;
      CORE0_DBUS_ATTR     at 0 range 3 .. 5;
      CORE0_DBUS_WORLD    at 0 range 6 .. 6;
      Reserved_7_31       at 0 range 7 .. 31;
   end record;

   --  ******* Description ***********
   type CORE0_IBUS_REJECT_ST_Register is record
      --  Read-only. The bits are used to indicate the attribute of data from
      --  external memory when authentication fail. 0: invalidate, 1:
      --  execute-able, 2: read-able, 4: write-able.
      CORE0_IBUS_TAG_ATTR : SVD.UInt3;
      --  Read-only. The bits are used to indicate the attribute of CPU access
      --  ibus when authentication fail. 0: invalidate, 1: execute-able, 2:
      --  read-able
      CORE0_IBUS_ATTR     : SVD.UInt3;
      --  Read-only. The bit is used to indicate the world of CPU access ibus
      --  when authentication fail. 0: WORLD0, 1: WORLD1
      CORE0_IBUS_WORLD    : SVD.Bit;
      --  unspecified
      Reserved_7_31       : SVD.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE0_IBUS_REJECT_ST_Register use record
      CORE0_IBUS_TAG_ATTR at 0 range 0 .. 2;
      CORE0_IBUS_ATTR     at 0 range 3 .. 5;
      CORE0_IBUS_WORLD    at 0 range 6 .. 6;
      Reserved_7_31       at 0 range 7 .. 31;
   end record;

   --  ******* Description ***********
   type CORE1_DBUS_REJECT_ST_Register is record
      --  Read-only. The bits are used to indicate the attribute of data from
      --  external memory when authentication fail. 0: invalidate, 1:
      --  execute-able, 2: read-able, 4: write-able.
      CORE1_DBUS_TAG_ATTR : SVD.UInt3;
      --  Read-only. The bits are used to indicate the attribute of CPU access
      --  dbus when authentication fail. 0: invalidate, 1: execute-able, 2:
      --  read-able, 4: write-able.
      CORE1_DBUS_ATTR     : SVD.UInt3;
      --  Read-only. The bit is used to indicate the world of CPU access dbus
      --  when authentication fail. 0: WORLD0, 1: WORLD1
      CORE1_DBUS_WORLD    : SVD.Bit;
      --  unspecified
      Reserved_7_31       : SVD.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE1_DBUS_REJECT_ST_Register use record
      CORE1_DBUS_TAG_ATTR at 0 range 0 .. 2;
      CORE1_DBUS_ATTR     at 0 range 3 .. 5;
      CORE1_DBUS_WORLD    at 0 range 6 .. 6;
      Reserved_7_31       at 0 range 7 .. 31;
   end record;

   --  ******* Description ***********
   type CORE1_IBUS_REJECT_ST_Register is record
      --  Read-only. The bits are used to indicate the attribute of data from
      --  external memory when authentication fail. 0: invalidate, 1:
      --  execute-able, 2: read-able, 4: write-able.
      CORE1_IBUS_TAG_ATTR : SVD.UInt3;
      --  Read-only. The bits are used to indicate the attribute of CPU access
      --  ibus when authentication fail. 0: invalidate, 1: execute-able, 2:
      --  read-able
      CORE1_IBUS_ATTR     : SVD.UInt3;
      --  Read-only. The bit is used to indicate the world of CPU access ibus
      --  when authentication fail. 0: WORLD0, 1: WORLD1
      CORE1_IBUS_WORLD    : SVD.Bit;
      --  unspecified
      Reserved_7_31       : SVD.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORE1_IBUS_REJECT_ST_Register use record
      CORE1_IBUS_TAG_ATTR at 0 range 0 .. 2;
      CORE1_IBUS_ATTR     at 0 range 3 .. 5;
      CORE1_IBUS_WORLD    at 0 range 6 .. 6;
      Reserved_7_31       at 0 range 7 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_MMU_FAULT_CONTENT_Register is record
      --  Read-only. The bits are used to indicate the content of mmu entry
      --  which cause mmu fault..
      CACHE_MMU_FAULT_CONTENT : SVD.UInt16;
      --  Read-only. The right-most 3 bits are used to indicate the operations
      --  which cause mmu fault occurrence. 0: default, 1: cpu miss, 2: preload
      --  miss, 3: writeback, 4: cpu miss evict recovery address, 5: load miss
      --  evict recovery address, 6: external dma tx, 7: external dma rx. The
      --  most significant bit is used to indicate this operation occurs in
      --  which one icache.
      CACHE_MMU_FAULT_CODE    : SVD.UInt4;
      --  unspecified
      Reserved_20_31          : SVD.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_MMU_FAULT_CONTENT_Register use record
      CACHE_MMU_FAULT_CONTENT at 0 range 0 .. 15;
      CACHE_MMU_FAULT_CODE    at 0 range 16 .. 19;
      Reserved_20_31          at 0 range 20 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_WRAP_AROUND_CTRL_Register is record
      --  The bit is used to enable wrap around mode when read data from flash.
      CACHE_FLASH_WRAP_AROUND   : SVD.Bit := 16#0#;
      --  The bit is used to enable wrap around mode when read data from
      --  spiram.
      CACHE_SRAM_RD_WRAP_AROUND : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31             : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_WRAP_AROUND_CTRL_Register use record
      CACHE_FLASH_WRAP_AROUND   at 0 range 0 .. 0;
      CACHE_SRAM_RD_WRAP_AROUND at 0 range 1 .. 1;
      Reserved_2_31             at 0 range 2 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_MMU_POWER_CTRL_Register is record
      --  The bit is used to enable clock gating to save power when access mmu
      --  memory, 0: enable, 1: disable
      CACHE_MMU_MEM_FORCE_ON : SVD.Bit := 16#1#;
      --  The bit is used to power mmu memory down, 0: follow_rtc_lslp_pd, 1:
      --  power down
      CACHE_MMU_MEM_FORCE_PD : SVD.Bit := 16#0#;
      --  The bit is used to power mmu memory down, 0: follow_rtc_lslp_pd, 1:
      --  power up
      CACHE_MMU_MEM_FORCE_PU : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_3_31          : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_MMU_POWER_CTRL_Register use record
      CACHE_MMU_MEM_FORCE_ON at 0 range 0 .. 0;
      CACHE_MMU_MEM_FORCE_PD at 0 range 1 .. 1;
      CACHE_MMU_MEM_FORCE_PU at 0 range 2 .. 2;
      Reserved_3_31          at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_STATE_Register is record
      --  Read-only. The bit is used to indicate whether icache main fsm is in
      --  idle state or not. 1: in idle state, 0: not in idle state
      ICACHE_STATE   : SVD.UInt12;
      --  Read-only. The bit is used to indicate whether dcache main fsm is in
      --  idle state or not. 1: in idle state, 0: not in idle state
      DCACHE_STATE   : SVD.UInt12;
      --  unspecified
      Reserved_24_31 : SVD.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_STATE_Register use record
      ICACHE_STATE   at 0 range 0 .. 11;
      DCACHE_STATE   at 0 range 12 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_ENCRYPT_DECRYPT_RECORD_DISABLE_Register is record
      --  Reserved
      RECORD_DISABLE_DB_ENCRYPT   : SVD.Bit := 16#0#;
      --  Reserved
      RECORD_DISABLE_G0CB_DECRYPT : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31               : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_ENCRYPT_DECRYPT_RECORD_DISABLE_Register use record
      RECORD_DISABLE_DB_ENCRYPT   at 0 range 0 .. 0;
      RECORD_DISABLE_G0CB_DECRYPT at 0 range 1 .. 1;
      Reserved_2_31               at 0 range 2 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_ENCRYPT_DECRYPT_CLK_FORCE_ON_Register is record
      --  The bit is used to close clock gating of manual crypt clock. 1: close
      --  gating, 0: open clock gating.
      CLK_FORCE_ON_MANUAL_CRYPT : SVD.Bit := 16#1#;
      --  The bit is used to close clock gating of automatic crypt clock. 1:
      --  close gating, 0: open clock gating.
      CLK_FORCE_ON_AUTO_CRYPT   : SVD.Bit := 16#1#;
      --  The bit is used to close clock gating of external memory encrypt and
      --  decrypt clock. 1: close gating, 0: open clock gating.
      CLK_FORCE_ON_CRYPT        : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_3_31             : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_ENCRYPT_DECRYPT_CLK_FORCE_ON_Register use record
      CLK_FORCE_ON_MANUAL_CRYPT at 0 range 0 .. 0;
      CLK_FORCE_ON_AUTO_CRYPT   at 0 range 1 .. 1;
      CLK_FORCE_ON_CRYPT        at 0 range 2 .. 2;
      Reserved_3_31             at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_BRIDGE_ARBITER_CTRL_Register is record
      --  Reserved
      ALLOC_WB_HOLD_ARBITER : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31         : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_BRIDGE_ARBITER_CTRL_Register use record
      ALLOC_WB_HOLD_ARBITER at 0 range 0 .. 0;
      Reserved_1_31         at 0 range 1 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_PRELOAD_INT_CTRL_Register is record
      --  Read-only. The bit is used to indicate the interrupt by icache
      --  pre-load done.
      ICACHE_PRELOAD_INT_ST  : SVD.Bit := 16#0#;
      --  The bit is used to enable the interrupt by icache pre-load done.
      ICACHE_PRELOAD_INT_ENA : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear the interrupt by icache pre-load
      --  done.
      ICACHE_PRELOAD_INT_CLR : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate the interrupt by dcache
      --  pre-load done.
      DCACHE_PRELOAD_INT_ST  : SVD.Bit := 16#0#;
      --  The bit is used to enable the interrupt by dcache pre-load done.
      DCACHE_PRELOAD_INT_ENA : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear the interrupt by dcache pre-load
      --  done.
      DCACHE_PRELOAD_INT_CLR : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31          : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_PRELOAD_INT_CTRL_Register use record
      ICACHE_PRELOAD_INT_ST  at 0 range 0 .. 0;
      ICACHE_PRELOAD_INT_ENA at 0 range 1 .. 1;
      ICACHE_PRELOAD_INT_CLR at 0 range 2 .. 2;
      DCACHE_PRELOAD_INT_ST  at 0 range 3 .. 3;
      DCACHE_PRELOAD_INT_ENA at 0 range 4 .. 4;
      DCACHE_PRELOAD_INT_CLR at 0 range 5 .. 5;
      Reserved_6_31          at 0 range 6 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_SYNC_INT_CTRL_Register is record
      --  Read-only. The bit is used to indicate the interrupt by icache sync
      --  done.
      ICACHE_SYNC_INT_ST  : SVD.Bit := 16#0#;
      --  The bit is used to enable the interrupt by icache sync done.
      ICACHE_SYNC_INT_ENA : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear the interrupt by icache sync
      --  done.
      ICACHE_SYNC_INT_CLR : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate the interrupt by dcache sync
      --  done.
      DCACHE_SYNC_INT_ST  : SVD.Bit := 16#0#;
      --  The bit is used to enable the interrupt by dcache sync done.
      DCACHE_SYNC_INT_ENA : SVD.Bit := 16#0#;
      --  Write-only. The bit is used to clear the interrupt by dcache sync
      --  done.
      DCACHE_SYNC_INT_CLR : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_31       : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_SYNC_INT_CTRL_Register use record
      ICACHE_SYNC_INT_ST  at 0 range 0 .. 0;
      ICACHE_SYNC_INT_ENA at 0 range 1 .. 1;
      ICACHE_SYNC_INT_CLR at 0 range 2 .. 2;
      DCACHE_SYNC_INT_ST  at 0 range 3 .. 3;
      DCACHE_SYNC_INT_ENA at 0 range 4 .. 4;
      DCACHE_SYNC_INT_CLR at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_MMU_OWNER_Register is record
      --  The bits are used to specify the owner of MMU.bit0: icache, bit1:
      --  dcache, bit2: dma, bit3: reserved.
      CACHE_MMU_OWNER : SVD.UInt24 := 16#0#;
      --  unspecified
      Reserved_24_31  : SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_MMU_OWNER_Register use record
      CACHE_MMU_OWNER at 0 range 0 .. 23;
      Reserved_24_31  at 0 range 24 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_CONF_MISC_Register is record
      --  The bit is used to disable checking mmu entry fault by preload
      --  operation.
      CACHE_IGNORE_PRELOAD_MMU_ENTRY_FAULT : SVD.Bit := 16#1#;
      --  The bit is used to disable checking mmu entry fault by sync
      --  operation.
      CACHE_IGNORE_SYNC_MMU_ENTRY_FAULT    : SVD.Bit := 16#1#;
      --  The bit is used to enable cache trace function.
      CACHE_TRACE_ENA                      : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_3_31                        : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_CONF_MISC_Register use record
      CACHE_IGNORE_PRELOAD_MMU_ENTRY_FAULT at 0 range 0 .. 0;
      CACHE_IGNORE_SYNC_MMU_ENTRY_FAULT    at 0 range 1 .. 1;
      CACHE_TRACE_ENA                      at 0 range 2 .. 2;
      Reserved_3_31                        at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_FREEZE_Register is record
      --  The bit is used to enable dcache freeze mode
      ENA           : SVD.Bit := 16#0#;
      --  The bit is used to configure freeze mode, 0: assert busy if CPU miss
      --  1: assert hit if CPU miss
      MODE          : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate dcache freeze success
      DONE          : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_3_31 : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_FREEZE_Register use record
      ENA           at 0 range 0 .. 0;
      MODE          at 0 range 1 .. 1;
      DONE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_FREEZE_Register is record
      --  The bit is used to enable icache freeze mode
      ENA           : SVD.Bit := 16#0#;
      --  The bit is used to configure freeze mode, 0: assert busy if CPU miss
      --  1: assert hit if CPU miss
      MODE          : SVD.Bit := 16#0#;
      --  Read-only. The bit is used to indicate icache freeze success
      DONE          : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_3_31 : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_FREEZE_Register use record
      ENA           at 0 range 0 .. 0;
      MODE          at 0 range 1 .. 1;
      DONE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type ICACHE_ATOMIC_OPERATE_ENA_Register is record
      --  The bit is used to activate icache atomic operation protection. In
      --  this case, sync/lock operation can not interrupt miss-work. This
      --  feature does not work during invalidateAll operation.
      ICACHE_ATOMIC_OPERATE_ENA : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_1_31             : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHE_ATOMIC_OPERATE_ENA_Register use record
      ICACHE_ATOMIC_OPERATE_ENA at 0 range 0 .. 0;
      Reserved_1_31             at 0 range 1 .. 31;
   end record;

   --  ******* Description ***********
   type DCACHE_ATOMIC_OPERATE_ENA_Register is record
      --  The bit is used to activate dcache atomic operation protection. In
      --  this case, sync/lock/occupy operation can not interrupt miss-work.
      --  This feature does not work during invalidateAll operation.
      DCACHE_ATOMIC_OPERATE_ENA : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_1_31             : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCACHE_ATOMIC_OPERATE_ENA_Register use record
      DCACHE_ATOMIC_OPERATE_ENA at 0 range 0 .. 0;
      Reserved_1_31             at 0 range 1 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_REQUEST_Register is record
      --  The bit is used to disable request recording which could cause
      --  performance issue
      BYPASS        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31 : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_REQUEST_Register use record
      BYPASS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  ******* Description ***********
   type CLOCK_GATE_Register is record
      --  Reserved
      CLK_EN        : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_1_31 : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLOCK_GATE_Register use record
      CLK_EN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_TAG_OBJECT_CTRL_Register is record
      --  Set this bit to set icache tag memory as object. This bit should be
      --  onehot with the others fields inside this register.
      ICACHE_TAG_OBJECT : SVD.Bit := 16#0#;
      --  Set this bit to set dcache tag memory as object. This bit should be
      --  onehot with the others fields inside this register.
      DCACHE_TAG_OBJECT : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31     : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_TAG_OBJECT_CTRL_Register use record
      ICACHE_TAG_OBJECT at 0 range 0 .. 0;
      DCACHE_TAG_OBJECT at 0 range 1 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   --  ******* Description ***********
   type CACHE_TAG_WAY_OBJECT_Register is record
      --  Set this bits to select which way of the tag-object will be accessed.
      --  0: way0, 1: way1, 2: way2, 3: way3, .., 7: way7.
      CACHE_TAG_WAY_OBJECT : SVD.UInt3 := 16#0#;
      --  unspecified
      Reserved_3_31        : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHE_TAG_WAY_OBJECT_Register use record
      CACHE_TAG_WAY_OBJECT at 0 range 0 .. 2;
      Reserved_3_31        at 0 range 3 .. 31;
   end record;

   --  ******* Description ***********
   type DATE_Register is record
      --  version information.
      DATE           : SVD.UInt28 := 16#2012310#;
      --  unspecified
      Reserved_28_31 : SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      DATE           at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  External Memory
   type EXTMEM_Peripheral is record
      --  ******* Description ***********
      DCACHE_CTRL                          : aliased DCACHE_CTRL_Register;
      --  ******* Description ***********
      DCACHE_CTRL1                         : aliased DCACHE_CTRL1_Register;
      --  ******* Description ***********
      DCACHE_TAG_POWER_CTRL                : aliased DCACHE_TAG_POWER_CTRL_Register;
      --  ******* Description ***********
      DCACHE_PRELOCK_CTRL                  : aliased DCACHE_PRELOCK_CTRL_Register;
      --  ******* Description ***********
      DCACHE_PRELOCK_SCT0_ADDR             : aliased SVD.UInt32;
      --  ******* Description ***********
      DCACHE_PRELOCK_SCT1_ADDR             : aliased SVD.UInt32;
      --  ******* Description ***********
      DCACHE_PRELOCK_SCT_SIZE              : aliased DCACHE_PRELOCK_SCT_SIZE_Register;
      --  ******* Description ***********
      DCACHE_LOCK_CTRL                     : aliased DCACHE_LOCK_CTRL_Register;
      --  ******* Description ***********
      DCACHE_LOCK_ADDR                     : aliased SVD.UInt32;
      --  ******* Description ***********
      DCACHE_LOCK_SIZE                     : aliased DCACHE_LOCK_SIZE_Register;
      --  ******* Description ***********
      DCACHE_SYNC_CTRL                     : aliased DCACHE_SYNC_CTRL_Register;
      --  ******* Description ***********
      DCACHE_SYNC_ADDR                     : aliased SVD.UInt32;
      --  ******* Description ***********
      DCACHE_SYNC_SIZE                     : aliased DCACHE_SYNC_SIZE_Register;
      --  ******* Description ***********
      DCACHE_OCCUPY_CTRL                   : aliased DCACHE_OCCUPY_CTRL_Register;
      --  ******* Description ***********
      DCACHE_OCCUPY_ADDR                   : aliased SVD.UInt32;
      --  ******* Description ***********
      DCACHE_OCCUPY_SIZE                   : aliased DCACHE_OCCUPY_SIZE_Register;
      --  ******* Description ***********
      DCACHE_PRELOAD_CTRL                  : aliased DCACHE_PRELOAD_CTRL_Register;
      --  ******* Description ***********
      DCACHE_PRELOAD_ADDR                  : aliased SVD.UInt32;
      --  ******* Description ***********
      DCACHE_PRELOAD_SIZE                  : aliased DCACHE_PRELOAD_SIZE_Register;
      --  ******* Description ***********
      DCACHE_AUTOLOAD_CTRL                 : aliased DCACHE_AUTOLOAD_CTRL_Register;
      --  ******* Description ***********
      DCACHE_AUTOLOAD_SCT0_ADDR            : aliased SVD.UInt32;
      --  ******* Description ***********
      DCACHE_AUTOLOAD_SCT0_SIZE            : aliased DCACHE_AUTOLOAD_SCT0_SIZE_Register;
      --  ******* Description ***********
      DCACHE_AUTOLOAD_SCT1_ADDR            : aliased SVD.UInt32;
      --  ******* Description ***********
      DCACHE_AUTOLOAD_SCT1_SIZE            : aliased DCACHE_AUTOLOAD_SCT1_SIZE_Register;
      --  ******* Description ***********
      ICACHE_CTRL                          : aliased ICACHE_CTRL_Register;
      --  ******* Description ***********
      ICACHE_CTRL1                         : aliased ICACHE_CTRL1_Register;
      --  ******* Description ***********
      ICACHE_TAG_POWER_CTRL                : aliased ICACHE_TAG_POWER_CTRL_Register;
      --  ******* Description ***********
      ICACHE_PRELOCK_CTRL                  : aliased ICACHE_PRELOCK_CTRL_Register;
      --  ******* Description ***********
      ICACHE_PRELOCK_SCT0_ADDR             : aliased SVD.UInt32;
      --  ******* Description ***********
      ICACHE_PRELOCK_SCT1_ADDR             : aliased SVD.UInt32;
      --  ******* Description ***********
      ICACHE_PRELOCK_SCT_SIZE              : aliased ICACHE_PRELOCK_SCT_SIZE_Register;
      --  ******* Description ***********
      ICACHE_LOCK_CTRL                     : aliased ICACHE_LOCK_CTRL_Register;
      --  ******* Description ***********
      ICACHE_LOCK_ADDR                     : aliased SVD.UInt32;
      --  ******* Description ***********
      ICACHE_LOCK_SIZE                     : aliased ICACHE_LOCK_SIZE_Register;
      --  ******* Description ***********
      ICACHE_SYNC_CTRL                     : aliased ICACHE_SYNC_CTRL_Register;
      --  ******* Description ***********
      ICACHE_SYNC_ADDR                     : aliased SVD.UInt32;
      --  ******* Description ***********
      ICACHE_SYNC_SIZE                     : aliased ICACHE_SYNC_SIZE_Register;
      --  ******* Description ***********
      ICACHE_PRELOAD_CTRL                  : aliased ICACHE_PRELOAD_CTRL_Register;
      --  ******* Description ***********
      ICACHE_PRELOAD_ADDR                  : aliased SVD.UInt32;
      --  ******* Description ***********
      ICACHE_PRELOAD_SIZE                  : aliased ICACHE_PRELOAD_SIZE_Register;
      --  ******* Description ***********
      ICACHE_AUTOLOAD_CTRL                 : aliased ICACHE_AUTOLOAD_CTRL_Register;
      --  ******* Description ***********
      ICACHE_AUTOLOAD_SCT0_ADDR            : aliased SVD.UInt32;
      --  ******* Description ***********
      ICACHE_AUTOLOAD_SCT0_SIZE            : aliased ICACHE_AUTOLOAD_SCT0_SIZE_Register;
      --  ******* Description ***********
      ICACHE_AUTOLOAD_SCT1_ADDR            : aliased SVD.UInt32;
      --  ******* Description ***********
      ICACHE_AUTOLOAD_SCT1_SIZE            : aliased ICACHE_AUTOLOAD_SCT1_SIZE_Register;
      --  ******* Description ***********
      IBUS_TO_FLASH_START_VADDR            : aliased SVD.UInt32;
      --  ******* Description ***********
      IBUS_TO_FLASH_END_VADDR              : aliased SVD.UInt32;
      --  ******* Description ***********
      DBUS_TO_FLASH_START_VADDR            : aliased SVD.UInt32;
      --  ******* Description ***********
      DBUS_TO_FLASH_END_VADDR              : aliased SVD.UInt32;
      --  ******* Description ***********
      CACHE_ACS_CNT_CLR                    : aliased CACHE_ACS_CNT_CLR_Register;
      --  ******* Description ***********
      IBUS_ACS_MISS_CNT                    : aliased SVD.UInt32;
      --  ******* Description ***********
      IBUS_ACS_CNT                         : aliased SVD.UInt32;
      --  ******* Description ***********
      DBUS_ACS_FLASH_MISS_CNT              : aliased SVD.UInt32;
      --  ******* Description ***********
      DBUS_ACS_SPIRAM_MISS_CNT             : aliased SVD.UInt32;
      --  ******* Description ***********
      DBUS_ACS_CNT                         : aliased SVD.UInt32;
      --  ******* Description ***********
      CACHE_ILG_INT_ENA                    : aliased CACHE_ILG_INT_ENA_Register;
      --  ******* Description ***********
      CACHE_ILG_INT_CLR                    : aliased CACHE_ILG_INT_CLR_Register;
      --  ******* Description ***********
      CACHE_ILG_INT_ST                     : aliased CACHE_ILG_INT_ST_Register;
      --  ******* Description ***********
      CORE0_ACS_CACHE_INT_ENA              : aliased CORE0_ACS_CACHE_INT_ENA_Register;
      --  ******* Description ***********
      CORE0_ACS_CACHE_INT_CLR              : aliased CORE0_ACS_CACHE_INT_CLR_Register;
      --  ******* Description ***********
      CORE0_ACS_CACHE_INT_ST               : aliased CORE0_ACS_CACHE_INT_ST_Register;
      --  ******* Description ***********
      CORE1_ACS_CACHE_INT_ENA              : aliased CORE1_ACS_CACHE_INT_ENA_Register;
      --  ******* Description ***********
      CORE1_ACS_CACHE_INT_CLR              : aliased CORE1_ACS_CACHE_INT_CLR_Register;
      --  ******* Description ***********
      CORE1_ACS_CACHE_INT_ST               : aliased CORE1_ACS_CACHE_INT_ST_Register;
      --  ******* Description ***********
      CORE0_DBUS_REJECT_ST                 : aliased CORE0_DBUS_REJECT_ST_Register;
      --  ******* Description ***********
      CORE0_DBUS_REJECT_VADDR              : aliased SVD.UInt32;
      --  ******* Description ***********
      CORE0_IBUS_REJECT_ST                 : aliased CORE0_IBUS_REJECT_ST_Register;
      --  ******* Description ***********
      CORE0_IBUS_REJECT_VADDR              : aliased SVD.UInt32;
      --  ******* Description ***********
      CORE1_DBUS_REJECT_ST                 : aliased CORE1_DBUS_REJECT_ST_Register;
      --  ******* Description ***********
      CORE1_DBUS_REJECT_VADDR              : aliased SVD.UInt32;
      --  ******* Description ***********
      CORE1_IBUS_REJECT_ST                 : aliased CORE1_IBUS_REJECT_ST_Register;
      --  ******* Description ***********
      CORE1_IBUS_REJECT_VADDR              : aliased SVD.UInt32;
      --  ******* Description ***********
      CACHE_MMU_FAULT_CONTENT              : aliased CACHE_MMU_FAULT_CONTENT_Register;
      --  ******* Description ***********
      CACHE_MMU_FAULT_VADDR                : aliased SVD.UInt32;
      --  ******* Description ***********
      CACHE_WRAP_AROUND_CTRL               : aliased CACHE_WRAP_AROUND_CTRL_Register;
      --  ******* Description ***********
      CACHE_MMU_POWER_CTRL                 : aliased CACHE_MMU_POWER_CTRL_Register;
      --  ******* Description ***********
      CACHE_STATE                          : aliased CACHE_STATE_Register;
      --  ******* Description ***********
      CACHE_ENCRYPT_DECRYPT_RECORD_DISABLE : aliased CACHE_ENCRYPT_DECRYPT_RECORD_DISABLE_Register;
      --  ******* Description ***********
      CACHE_ENCRYPT_DECRYPT_CLK_FORCE_ON   : aliased CACHE_ENCRYPT_DECRYPT_CLK_FORCE_ON_Register;
      --  ******* Description ***********
      CACHE_BRIDGE_ARBITER_CTRL            : aliased CACHE_BRIDGE_ARBITER_CTRL_Register;
      --  ******* Description ***********
      CACHE_PRELOAD_INT_CTRL               : aliased CACHE_PRELOAD_INT_CTRL_Register;
      --  ******* Description ***********
      CACHE_SYNC_INT_CTRL                  : aliased CACHE_SYNC_INT_CTRL_Register;
      --  ******* Description ***********
      CACHE_MMU_OWNER                      : aliased CACHE_MMU_OWNER_Register;
      --  ******* Description ***********
      CACHE_CONF_MISC                      : aliased CACHE_CONF_MISC_Register;
      --  ******* Description ***********
      DCACHE_FREEZE                        : aliased DCACHE_FREEZE_Register;
      --  ******* Description ***********
      ICACHE_FREEZE                        : aliased ICACHE_FREEZE_Register;
      --  ******* Description ***********
      ICACHE_ATOMIC_OPERATE_ENA            : aliased ICACHE_ATOMIC_OPERATE_ENA_Register;
      --  ******* Description ***********
      DCACHE_ATOMIC_OPERATE_ENA            : aliased DCACHE_ATOMIC_OPERATE_ENA_Register;
      --  ******* Description ***********
      CACHE_REQUEST                        : aliased CACHE_REQUEST_Register;
      --  ******* Description ***********
      CLOCK_GATE                           : aliased CLOCK_GATE_Register;
      --  ******* Description ***********
      CACHE_TAG_OBJECT_CTRL                : aliased CACHE_TAG_OBJECT_CTRL_Register;
      --  ******* Description ***********
      CACHE_TAG_WAY_OBJECT                 : aliased CACHE_TAG_WAY_OBJECT_Register;
      --  ******* Description ***********
      CACHE_VADDR                          : aliased SVD.UInt32;
      --  ******* Description ***********
      CACHE_TAG_CONTENT                    : aliased SVD.UInt32;
      --  ******* Description ***********
      DATE                                 : aliased DATE_Register;
   end record
     with Volatile;

   for EXTMEM_Peripheral use record
      DCACHE_CTRL                          at 16#0# range 0 .. 31;
      DCACHE_CTRL1                         at 16#4# range 0 .. 31;
      DCACHE_TAG_POWER_CTRL                at 16#8# range 0 .. 31;
      DCACHE_PRELOCK_CTRL                  at 16#C# range 0 .. 31;
      DCACHE_PRELOCK_SCT0_ADDR             at 16#10# range 0 .. 31;
      DCACHE_PRELOCK_SCT1_ADDR             at 16#14# range 0 .. 31;
      DCACHE_PRELOCK_SCT_SIZE              at 16#18# range 0 .. 31;
      DCACHE_LOCK_CTRL                     at 16#1C# range 0 .. 31;
      DCACHE_LOCK_ADDR                     at 16#20# range 0 .. 31;
      DCACHE_LOCK_SIZE                     at 16#24# range 0 .. 31;
      DCACHE_SYNC_CTRL                     at 16#28# range 0 .. 31;
      DCACHE_SYNC_ADDR                     at 16#2C# range 0 .. 31;
      DCACHE_SYNC_SIZE                     at 16#30# range 0 .. 31;
      DCACHE_OCCUPY_CTRL                   at 16#34# range 0 .. 31;
      DCACHE_OCCUPY_ADDR                   at 16#38# range 0 .. 31;
      DCACHE_OCCUPY_SIZE                   at 16#3C# range 0 .. 31;
      DCACHE_PRELOAD_CTRL                  at 16#40# range 0 .. 31;
      DCACHE_PRELOAD_ADDR                  at 16#44# range 0 .. 31;
      DCACHE_PRELOAD_SIZE                  at 16#48# range 0 .. 31;
      DCACHE_AUTOLOAD_CTRL                 at 16#4C# range 0 .. 31;
      DCACHE_AUTOLOAD_SCT0_ADDR            at 16#50# range 0 .. 31;
      DCACHE_AUTOLOAD_SCT0_SIZE            at 16#54# range 0 .. 31;
      DCACHE_AUTOLOAD_SCT1_ADDR            at 16#58# range 0 .. 31;
      DCACHE_AUTOLOAD_SCT1_SIZE            at 16#5C# range 0 .. 31;
      ICACHE_CTRL                          at 16#60# range 0 .. 31;
      ICACHE_CTRL1                         at 16#64# range 0 .. 31;
      ICACHE_TAG_POWER_CTRL                at 16#68# range 0 .. 31;
      ICACHE_PRELOCK_CTRL                  at 16#6C# range 0 .. 31;
      ICACHE_PRELOCK_SCT0_ADDR             at 16#70# range 0 .. 31;
      ICACHE_PRELOCK_SCT1_ADDR             at 16#74# range 0 .. 31;
      ICACHE_PRELOCK_SCT_SIZE              at 16#78# range 0 .. 31;
      ICACHE_LOCK_CTRL                     at 16#7C# range 0 .. 31;
      ICACHE_LOCK_ADDR                     at 16#80# range 0 .. 31;
      ICACHE_LOCK_SIZE                     at 16#84# range 0 .. 31;
      ICACHE_SYNC_CTRL                     at 16#88# range 0 .. 31;
      ICACHE_SYNC_ADDR                     at 16#8C# range 0 .. 31;
      ICACHE_SYNC_SIZE                     at 16#90# range 0 .. 31;
      ICACHE_PRELOAD_CTRL                  at 16#94# range 0 .. 31;
      ICACHE_PRELOAD_ADDR                  at 16#98# range 0 .. 31;
      ICACHE_PRELOAD_SIZE                  at 16#9C# range 0 .. 31;
      ICACHE_AUTOLOAD_CTRL                 at 16#A0# range 0 .. 31;
      ICACHE_AUTOLOAD_SCT0_ADDR            at 16#A4# range 0 .. 31;
      ICACHE_AUTOLOAD_SCT0_SIZE            at 16#A8# range 0 .. 31;
      ICACHE_AUTOLOAD_SCT1_ADDR            at 16#AC# range 0 .. 31;
      ICACHE_AUTOLOAD_SCT1_SIZE            at 16#B0# range 0 .. 31;
      IBUS_TO_FLASH_START_VADDR            at 16#B4# range 0 .. 31;
      IBUS_TO_FLASH_END_VADDR              at 16#B8# range 0 .. 31;
      DBUS_TO_FLASH_START_VADDR            at 16#BC# range 0 .. 31;
      DBUS_TO_FLASH_END_VADDR              at 16#C0# range 0 .. 31;
      CACHE_ACS_CNT_CLR                    at 16#C4# range 0 .. 31;
      IBUS_ACS_MISS_CNT                    at 16#C8# range 0 .. 31;
      IBUS_ACS_CNT                         at 16#CC# range 0 .. 31;
      DBUS_ACS_FLASH_MISS_CNT              at 16#D0# range 0 .. 31;
      DBUS_ACS_SPIRAM_MISS_CNT             at 16#D4# range 0 .. 31;
      DBUS_ACS_CNT                         at 16#D8# range 0 .. 31;
      CACHE_ILG_INT_ENA                    at 16#DC# range 0 .. 31;
      CACHE_ILG_INT_CLR                    at 16#E0# range 0 .. 31;
      CACHE_ILG_INT_ST                     at 16#E4# range 0 .. 31;
      CORE0_ACS_CACHE_INT_ENA              at 16#E8# range 0 .. 31;
      CORE0_ACS_CACHE_INT_CLR              at 16#EC# range 0 .. 31;
      CORE0_ACS_CACHE_INT_ST               at 16#F0# range 0 .. 31;
      CORE1_ACS_CACHE_INT_ENA              at 16#F4# range 0 .. 31;
      CORE1_ACS_CACHE_INT_CLR              at 16#F8# range 0 .. 31;
      CORE1_ACS_CACHE_INT_ST               at 16#FC# range 0 .. 31;
      CORE0_DBUS_REJECT_ST                 at 16#100# range 0 .. 31;
      CORE0_DBUS_REJECT_VADDR              at 16#104# range 0 .. 31;
      CORE0_IBUS_REJECT_ST                 at 16#108# range 0 .. 31;
      CORE0_IBUS_REJECT_VADDR              at 16#10C# range 0 .. 31;
      CORE1_DBUS_REJECT_ST                 at 16#110# range 0 .. 31;
      CORE1_DBUS_REJECT_VADDR              at 16#114# range 0 .. 31;
      CORE1_IBUS_REJECT_ST                 at 16#118# range 0 .. 31;
      CORE1_IBUS_REJECT_VADDR              at 16#11C# range 0 .. 31;
      CACHE_MMU_FAULT_CONTENT              at 16#120# range 0 .. 31;
      CACHE_MMU_FAULT_VADDR                at 16#124# range 0 .. 31;
      CACHE_WRAP_AROUND_CTRL               at 16#128# range 0 .. 31;
      CACHE_MMU_POWER_CTRL                 at 16#12C# range 0 .. 31;
      CACHE_STATE                          at 16#130# range 0 .. 31;
      CACHE_ENCRYPT_DECRYPT_RECORD_DISABLE at 16#134# range 0 .. 31;
      CACHE_ENCRYPT_DECRYPT_CLK_FORCE_ON   at 16#138# range 0 .. 31;
      CACHE_BRIDGE_ARBITER_CTRL            at 16#13C# range 0 .. 31;
      CACHE_PRELOAD_INT_CTRL               at 16#140# range 0 .. 31;
      CACHE_SYNC_INT_CTRL                  at 16#144# range 0 .. 31;
      CACHE_MMU_OWNER                      at 16#148# range 0 .. 31;
      CACHE_CONF_MISC                      at 16#14C# range 0 .. 31;
      DCACHE_FREEZE                        at 16#150# range 0 .. 31;
      ICACHE_FREEZE                        at 16#154# range 0 .. 31;
      ICACHE_ATOMIC_OPERATE_ENA            at 16#158# range 0 .. 31;
      DCACHE_ATOMIC_OPERATE_ENA            at 16#15C# range 0 .. 31;
      CACHE_REQUEST                        at 16#160# range 0 .. 31;
      CLOCK_GATE                           at 16#164# range 0 .. 31;
      CACHE_TAG_OBJECT_CTRL                at 16#180# range 0 .. 31;
      CACHE_TAG_WAY_OBJECT                 at 16#184# range 0 .. 31;
      CACHE_VADDR                          at 16#188# range 0 .. 31;
      CACHE_TAG_CONTENT                    at 16#18C# range 0 .. 31;
      DATE                                 at 16#3FC# range 0 .. 31;
   end record;

   --  External Memory
   EXTMEM_Periph : aliased EXTMEM_Peripheral
     with Import, Address => EXTMEM_Base;

end SVD.EXTMEM;
