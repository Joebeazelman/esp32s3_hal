pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.RTC_CNTL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RTC common configure register
   type OPTIONS0_Register is record
      --  {reg_sw_stall_appcpu_c1[5:0], reg_sw_stall_appcpu_c0[1:0]} == 0x86
      --  will stall APP CPU
      SW_STALL_APPCPU_C0  : SVD.UInt2 := 16#0#;
      --  {reg_sw_stall_procpu_c1[5:0], reg_sw_stall_procpu_c0[1:0]} == 0x86
      --  will stall PRO CPU
      SW_STALL_PROCPU_C0  : SVD.UInt2 := 16#0#;
      --  Write-only. APP CPU SW reset
      SW_APPCPU_RST       : SVD.Bit := 16#0#;
      --  Write-only. PRO CPU SW reset
      SW_PROCPU_RST       : SVD.Bit := 16#0#;
      --  BB_I2C force power down
      BB_I2C_FORCE_PD     : SVD.Bit := 16#0#;
      --  BB_I2C force power up
      BB_I2C_FORCE_PU     : SVD.Bit := 16#0#;
      --  BB_PLL _I2C force power down
      BBPLL_I2C_FORCE_PD  : SVD.Bit := 16#0#;
      --  BB_PLL_I2C force power up
      BBPLL_I2C_FORCE_PU  : SVD.Bit := 16#0#;
      --  BB_PLL force power down
      BBPLL_FORCE_PD      : SVD.Bit := 16#0#;
      --  BB_PLL force power up
      BBPLL_FORCE_PU      : SVD.Bit := 16#0#;
      --  crystall force power down
      XTL_FORCE_PD        : SVD.Bit := 16#0#;
      --  crystall force power up
      XTL_FORCE_PU        : SVD.Bit := 16#1#;
      --  wait bias_sleep and current source wakeup
      XTL_EN_WAIT         : SVD.UInt4 := 16#2#;
      --  unspecified
      Reserved_18_22      : SVD.UInt5 := 16#0#;
      --  No public
      XTL_FORCE_ISO       : SVD.Bit := 16#0#;
      --  No public
      PLL_FORCE_ISO       : SVD.Bit := 16#0#;
      --  No public
      ANALOG_FORCE_ISO    : SVD.Bit := 16#0#;
      --  No public
      XTL_FORCE_NOISO     : SVD.Bit := 16#1#;
      --  No public
      PLL_FORCE_NOISO     : SVD.Bit := 16#1#;
      --  No public
      ANALOG_FORCE_NOISO  : SVD.Bit := 16#1#;
      --  digital wrap force reset in deep sleep
      DG_WRAP_FORCE_RST   : SVD.Bit := 16#0#;
      --  digital core force no reset in deep sleep
      DG_WRAP_FORCE_NORST : SVD.Bit := 16#0#;
      --  Write-only. SW system reset
      SW_SYS_RST          : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPTIONS0_Register use record
      SW_STALL_APPCPU_C0  at 0 range 0 .. 1;
      SW_STALL_PROCPU_C0  at 0 range 2 .. 3;
      SW_APPCPU_RST       at 0 range 4 .. 4;
      SW_PROCPU_RST       at 0 range 5 .. 5;
      BB_I2C_FORCE_PD     at 0 range 6 .. 6;
      BB_I2C_FORCE_PU     at 0 range 7 .. 7;
      BBPLL_I2C_FORCE_PD  at 0 range 8 .. 8;
      BBPLL_I2C_FORCE_PU  at 0 range 9 .. 9;
      BBPLL_FORCE_PD      at 0 range 10 .. 10;
      BBPLL_FORCE_PU      at 0 range 11 .. 11;
      XTL_FORCE_PD        at 0 range 12 .. 12;
      XTL_FORCE_PU        at 0 range 13 .. 13;
      XTL_EN_WAIT         at 0 range 14 .. 17;
      Reserved_18_22      at 0 range 18 .. 22;
      XTL_FORCE_ISO       at 0 range 23 .. 23;
      PLL_FORCE_ISO       at 0 range 24 .. 24;
      ANALOG_FORCE_ISO    at 0 range 25 .. 25;
      XTL_FORCE_NOISO     at 0 range 26 .. 26;
      PLL_FORCE_NOISO     at 0 range 27 .. 27;
      ANALOG_FORCE_NOISO  at 0 range 28 .. 28;
      DG_WRAP_FORCE_RST   at 0 range 29 .. 29;
      DG_WRAP_FORCE_NORST at 0 range 30 .. 30;
      SW_SYS_RST          at 0 range 31 .. 31;
   end record;

   --  configure sleep time hi
   type SLP_TIMER1_Register is record
      --  RTC sleep timer high 16 bits
      SLP_VAL_HI          : SVD.UInt16 := 16#0#;
      --  Write-only. timer alarm enable bit
      MAIN_TIMER_ALARM_EN : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_17_31      : SVD.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_TIMER1_Register use record
      SLP_VAL_HI          at 0 range 0 .. 15;
      MAIN_TIMER_ALARM_EN at 0 range 16 .. 16;
      Reserved_17_31      at 0 range 17 .. 31;
   end record;

   --  update rtc main timer
   type TIME_UPDATE_Register is record
      --  unspecified
      Reserved_0_26   : SVD.UInt27 := 16#0#;
      --  Enable to record system stall time
      TIMER_SYS_STALL : SVD.Bit := 16#0#;
      --  Enable to record 40M XTAL OFF time
      TIMER_XTL_OFF   : SVD.Bit := 16#0#;
      --  enable to record system reset time
      TIMER_SYS_RST   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_30_30  : SVD.Bit := 16#0#;
      --  Write-only. Set 1: to update register with RTC timer
      TIME_UPDATE     : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIME_UPDATE_Register use record
      Reserved_0_26   at 0 range 0 .. 26;
      TIMER_SYS_STALL at 0 range 27 .. 27;
      TIMER_XTL_OFF   at 0 range 28 .. 28;
      TIMER_SYS_RST   at 0 range 29 .. 29;
      Reserved_30_30  at 0 range 30 .. 30;
      TIME_UPDATE     at 0 range 31 .. 31;
   end record;

   --  read rtc_main timer high bits
   type TIME_HIGH0_Register is record
      --  Read-only. RTC timer high 16 bits
      TIMER_VALUE0_HIGH : SVD.UInt16;
      --  unspecified
      Reserved_16_31    : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIME_HIGH0_Register use record
      TIMER_VALUE0_HIGH at 0 range 0 .. 15;
      Reserved_16_31    at 0 range 16 .. 31;
   end record;

   --  configure chip sleep
   type STATE0_Register is record
      --  Write-only. rtc software interrupt to main cpu
      SW_CPU_INT           : SVD.Bit := 16#0#;
      --  Write-only. clear rtc sleep reject cause
      SLP_REJECT_CAUSE_CLR : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_21        : SVD.UInt20 := 16#0#;
      --  1: APB to RTC using bridge, 0: APB to RTC using sync
      APB2RTC_BRIDGE_SEL   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_23_27       : SVD.UInt5 := 16#0#;
      --  Read-only. SDIO active indication
      SDIO_ACTIVE_IND      : SVD.Bit := 16#0#;
      --  leep wakeup bit
      SLP_WAKEUP           : SVD.Bit := 16#0#;
      --  leep reject bit
      SLP_REJECT           : SVD.Bit := 16#0#;
      --  sleep enable bit
      SLEEP_EN             : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATE0_Register use record
      SW_CPU_INT           at 0 range 0 .. 0;
      SLP_REJECT_CAUSE_CLR at 0 range 1 .. 1;
      Reserved_2_21        at 0 range 2 .. 21;
      APB2RTC_BRIDGE_SEL   at 0 range 22 .. 22;
      Reserved_23_27       at 0 range 23 .. 27;
      SDIO_ACTIVE_IND      at 0 range 28 .. 28;
      SLP_WAKEUP           at 0 range 29 .. 29;
      SLP_REJECT           at 0 range 30 .. 30;
      SLEEP_EN             at 0 range 31 .. 31;
   end record;

   --  rtc state wait time
   type TIMER1_Register is record
      --  CPU stall enable bit
      CPU_STALL_EN   : SVD.Bit := 16#1#;
      --  CPU stall wait cycles in fast_clk_rtc
      CPU_STALL_WAIT : SVD.UInt5 := 16#1#;
      --  CK8M wait cycles in slow_clk_rtc
      CK8M_WAIT      : SVD.Byte := 16#10#;
      --  XTAL wait cycles in slow_clk_rtc
      XTL_BUF_WAIT   : SVD.UInt10 := 16#50#;
      --  PLL wait cycles in slow_clk_rtc
      PLL_BUF_WAIT   : SVD.Byte := 16#28#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER1_Register use record
      CPU_STALL_EN   at 0 range 0 .. 0;
      CPU_STALL_WAIT at 0 range 1 .. 5;
      CK8M_WAIT      at 0 range 6 .. 13;
      XTL_BUF_WAIT   at 0 range 14 .. 23;
      PLL_BUF_WAIT   at 0 range 24 .. 31;
   end record;

   --  rtc monitor state delay time
   type TIMER2_Register is record
      --  unspecified
      Reserved_0_14          : SVD.UInt15 := 16#0#;
      --  wait cycles in slow_clk_rtc before ULP-coprocessor / touch controller
      --  start to work
      ULPCP_TOUCH_START_WAIT : SVD.UInt9 := 16#10#;
      --  minimal cycles in slow_clk_rtc for CK8M in power down state
      MIN_TIME_CK8M_OFF      : SVD.Byte := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER2_Register use record
      Reserved_0_14          at 0 range 0 .. 14;
      ULPCP_TOUCH_START_WAIT at 0 range 15 .. 23;
      MIN_TIME_CK8M_OFF      at 0 range 24 .. 31;
   end record;

   --  No public
   type TIMER3_Register is record
      --  No public
      WIFI_WAIT_TIMER    : SVD.UInt9 := 16#8#;
      --  No public
      WIFI_POWERUP_TIMER : SVD.UInt7 := 16#5#;
      --  No public
      BT_WAIT_TIMER      : SVD.UInt9 := 16#16#;
      --  No public
      BT_POWERUP_TIMER   : SVD.UInt7 := 16#A#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER3_Register use record
      WIFI_WAIT_TIMER    at 0 range 0 .. 8;
      WIFI_POWERUP_TIMER at 0 range 9 .. 15;
      BT_WAIT_TIMER      at 0 range 16 .. 24;
      BT_POWERUP_TIMER   at 0 range 25 .. 31;
   end record;

   --  No public
   type TIMER4_Register is record
      --  No public
      WAIT_TIMER            : SVD.UInt9 := 16#8#;
      --  No public
      POWERUP_TIMER         : SVD.UInt7 := 16#5#;
      --  No public
      DG_WRAP_WAIT_TIMER    : SVD.UInt9 := 16#20#;
      --  No public
      DG_WRAP_POWERUP_TIMER : SVD.UInt7 := 16#8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER4_Register use record
      WAIT_TIMER            at 0 range 0 .. 8;
      POWERUP_TIMER         at 0 range 9 .. 15;
      DG_WRAP_WAIT_TIMER    at 0 range 16 .. 24;
      DG_WRAP_POWERUP_TIMER at 0 range 25 .. 31;
   end record;

   --  configure min sleep time
   type TIMER5_Register is record
      --  unspecified
      Reserved_0_7   : SVD.Byte := 16#0#;
      --  minimal sleep cycles in slow_clk_rtc
      MIN_SLP_VAL    : SVD.Byte := 16#80#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER5_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MIN_SLP_VAL    at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  No public
   type TIMER6_Register is record
      --  No public
      CPU_TOP_WAIT_TIMER    : SVD.UInt9 := 16#8#;
      --  No public
      CPU_TOP_POWERUP_TIMER : SVD.UInt7 := 16#5#;
      --  No public
      DG_PERI_WAIT_TIMER    : SVD.UInt9 := 16#20#;
      --  No public
      DG_PERI_POWERUP_TIMER : SVD.UInt7 := 16#8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMER6_Register use record
      CPU_TOP_WAIT_TIMER    at 0 range 0 .. 8;
      CPU_TOP_POWERUP_TIMER at 0 range 9 .. 15;
      DG_PERI_WAIT_TIMER    at 0 range 16 .. 24;
      DG_PERI_POWERUP_TIMER at 0 range 25 .. 31;
   end record;

   --  analog configure register
   type ANA_CONF_Register is record
      --  unspecified
      Reserved_0_17          : SVD.UInt18 := 16#0#;
      --  force down I2C_RESET_POR
      I2C_RESET_POR_FORCE_PD : SVD.Bit := 16#1#;
      --  force on I2C_RESET_POR
      I2C_RESET_POR_FORCE_PU : SVD.Bit := 16#0#;
      --  enable clk glitch
      GLITCH_RST_EN          : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_21_21         : SVD.Bit := 16#0#;
      --  PLLA force power up
      SAR_I2C_PU             : SVD.Bit := 16#1#;
      --  PLLA force power down
      ANALOG_TOP_ISO_SLEEP   : SVD.Bit := 16#0#;
      --  PLLA force power up
      ANALOG_TOP_ISO_MONITOR : SVD.Bit := 16#0#;
      --  start BBPLL calibration during sleep
      BBPLL_CAL_SLP_START    : SVD.Bit := 16#0#;
      --  1: PVTMON power up, otherwise power down
      PVTMON_PU              : SVD.Bit := 16#0#;
      --  1: TXRF_I2C power up, otherwise power down
      TXRF_I2C_PU            : SVD.Bit := 16#0#;
      --  1: RFRX_PBUS power up, otherwise power down
      RFRX_PBUS_PU           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_29_29         : SVD.Bit := 16#0#;
      --  1: CKGEN_I2C power up, otherwise power down
      CKGEN_I2C_PU           : SVD.Bit := 16#0#;
      --  power on pll i2c
      PLL_I2C_PU             : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ANA_CONF_Register use record
      Reserved_0_17          at 0 range 0 .. 17;
      I2C_RESET_POR_FORCE_PD at 0 range 18 .. 18;
      I2C_RESET_POR_FORCE_PU at 0 range 19 .. 19;
      GLITCH_RST_EN          at 0 range 20 .. 20;
      Reserved_21_21         at 0 range 21 .. 21;
      SAR_I2C_PU             at 0 range 22 .. 22;
      ANALOG_TOP_ISO_SLEEP   at 0 range 23 .. 23;
      ANALOG_TOP_ISO_MONITOR at 0 range 24 .. 24;
      BBPLL_CAL_SLP_START    at 0 range 25 .. 25;
      PVTMON_PU              at 0 range 26 .. 26;
      TXRF_I2C_PU            at 0 range 27 .. 27;
      RFRX_PBUS_PU           at 0 range 28 .. 28;
      Reserved_29_29         at 0 range 29 .. 29;
      CKGEN_I2C_PU           at 0 range 30 .. 30;
      PLL_I2C_PU             at 0 range 31 .. 31;
   end record;

   --  get reset state
   type RESET_STATE_Register is record
      --  Read-only. reset cause of PRO CPU
      RESET_CAUSE_PROCPU         : SVD.UInt6 := 16#0#;
      --  Read-only. reset cause of APP CPU
      RESET_CAUSE_APPCPU         : SVD.UInt6 := 16#0#;
      --  APP CPU state vector sel
      APPCPU_STAT_VECTOR_SEL     : SVD.Bit := 16#1#;
      --  PRO CPU state vector sel
      PROCPU_STAT_VECTOR_SEL     : SVD.Bit := 16#1#;
      --  Read-only. PRO CPU reset_flag
      RESET_FLAG_PROCPU          : SVD.Bit := 16#0#;
      --  Read-only. APP CPU reset flag
      RESET_FLAG_APPCPU          : SVD.Bit := 16#0#;
      --  Write-only. clear PRO CPU reset_flag
      RESET_FLAG_PROCPU_CLR      : SVD.Bit := 16#0#;
      --  Write-only. clear APP CPU reset flag
      RESET_FLAG_APPCPU_CLR      : SVD.Bit := 16#0#;
      --  APPCPU OcdHaltOnReset
      APPCPU_OCD_HALT_ON_RESET   : SVD.Bit := 16#0#;
      --  PROCPU OcdHaltOnReset
      PROCPU_OCD_HALT_ON_RESET   : SVD.Bit := 16#0#;
      --  Read-only. jtag reset flag
      RESET_FLAG_JTAG_PROCPU     : SVD.Bit := 16#0#;
      --  Read-only. jtag reset flag
      RESET_FLAG_JTAG_APPCPU     : SVD.Bit := 16#0#;
      --  Write-only. clear jtag reset flag
      RESET_FLAG_JTAG_PROCPU_CLR : SVD.Bit := 16#0#;
      --  Write-only. clear jtag reset flag
      RESET_FLAG_JTAG_APPCPU_CLR : SVD.Bit := 16#0#;
      --  bypass cpu1 dreset
      APP_DRESET_MASK            : SVD.Bit := 16#0#;
      --  bypass cpu0 dreset
      PRO_DRESET_MASK            : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_26_31             : SVD.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESET_STATE_Register use record
      RESET_CAUSE_PROCPU         at 0 range 0 .. 5;
      RESET_CAUSE_APPCPU         at 0 range 6 .. 11;
      APPCPU_STAT_VECTOR_SEL     at 0 range 12 .. 12;
      PROCPU_STAT_VECTOR_SEL     at 0 range 13 .. 13;
      RESET_FLAG_PROCPU          at 0 range 14 .. 14;
      RESET_FLAG_APPCPU          at 0 range 15 .. 15;
      RESET_FLAG_PROCPU_CLR      at 0 range 16 .. 16;
      RESET_FLAG_APPCPU_CLR      at 0 range 17 .. 17;
      APPCPU_OCD_HALT_ON_RESET   at 0 range 18 .. 18;
      PROCPU_OCD_HALT_ON_RESET   at 0 range 19 .. 19;
      RESET_FLAG_JTAG_PROCPU     at 0 range 20 .. 20;
      RESET_FLAG_JTAG_APPCPU     at 0 range 21 .. 21;
      RESET_FLAG_JTAG_PROCPU_CLR at 0 range 22 .. 22;
      RESET_FLAG_JTAG_APPCPU_CLR at 0 range 23 .. 23;
      APP_DRESET_MASK            at 0 range 24 .. 24;
      PRO_DRESET_MASK            at 0 range 25 .. 25;
      Reserved_26_31             at 0 range 26 .. 31;
   end record;

   --  configure wakeup state
   type WAKEUP_STATE_Register is record
      --  unspecified
      Reserved_0_14 : SVD.UInt15 := 16#0#;
      --  wakeup enable bitmap
      WAKEUP_ENA    : SVD.UInt17 := 16#C#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WAKEUP_STATE_Register use record
      Reserved_0_14 at 0 range 0 .. 14;
      WAKEUP_ENA    at 0 range 15 .. 31;
   end record;

   --  configure rtc interrupt register
   type INT_ENA_RTC_Register is record
      --  enable sleep wakeup interrupt
      SLP_WAKEUP_INT_ENA               : SVD.Bit := 16#0#;
      --  enable sleep reject interrupt
      SLP_REJECT_INT_ENA               : SVD.Bit := 16#0#;
      --  enable SDIO idle interrupt
      SDIO_IDLE_INT_ENA                : SVD.Bit := 16#0#;
      --  enable RTC WDT interrupt
      WDT_INT_ENA                      : SVD.Bit := 16#0#;
      --  enable touch scan done interrupt
      TOUCH_SCAN_DONE_INT_ENA          : SVD.Bit := 16#0#;
      --  enable ULP-coprocessor interrupt
      ULP_CP_INT_ENA                   : SVD.Bit := 16#0#;
      --  enable touch done interrupt
      TOUCH_DONE_INT_ENA               : SVD.Bit := 16#0#;
      --  enable touch active interrupt
      TOUCH_ACTIVE_INT_ENA             : SVD.Bit := 16#0#;
      --  enable touch inactive interrupt
      TOUCH_INACTIVE_INT_ENA           : SVD.Bit := 16#0#;
      --  enable brown out interrupt
      BROWN_OUT_INT_ENA                : SVD.Bit := 16#0#;
      --  enable RTC main timer interrupt
      MAIN_TIMER_INT_ENA               : SVD.Bit := 16#0#;
      --  enable saradc1 interrupt
      SARADC1_INT_ENA                  : SVD.Bit := 16#0#;
      --  enable tsens interrupt
      TSENS_INT_ENA                    : SVD.Bit := 16#0#;
      --  enable riscV cocpu interrupt
      COCPU_INT_ENA                    : SVD.Bit := 16#0#;
      --  enable saradc2 interrupt
      SARADC2_INT_ENA                  : SVD.Bit := 16#0#;
      --  enable super watch dog interrupt
      SWD_INT_ENA                      : SVD.Bit := 16#0#;
      --  enable xtal32k_dead interrupt
      XTAL32K_DEAD_INT_ENA             : SVD.Bit := 16#0#;
      --  enable cocpu trap interrupt
      COCPU_TRAP_INT_ENA               : SVD.Bit := 16#0#;
      --  enable touch timeout interrupt
      TOUCH_TIMEOUT_INT_ENA            : SVD.Bit := 16#0#;
      --  enbale gitch det interrupt
      GLITCH_DET_INT_ENA               : SVD.Bit := 16#0#;
      --  touch approach mode loop interrupt
      TOUCH_APPROACH_LOOP_DONE_INT_ENA : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_21_31                   : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_RTC_Register use record
      SLP_WAKEUP_INT_ENA               at 0 range 0 .. 0;
      SLP_REJECT_INT_ENA               at 0 range 1 .. 1;
      SDIO_IDLE_INT_ENA                at 0 range 2 .. 2;
      WDT_INT_ENA                      at 0 range 3 .. 3;
      TOUCH_SCAN_DONE_INT_ENA          at 0 range 4 .. 4;
      ULP_CP_INT_ENA                   at 0 range 5 .. 5;
      TOUCH_DONE_INT_ENA               at 0 range 6 .. 6;
      TOUCH_ACTIVE_INT_ENA             at 0 range 7 .. 7;
      TOUCH_INACTIVE_INT_ENA           at 0 range 8 .. 8;
      BROWN_OUT_INT_ENA                at 0 range 9 .. 9;
      MAIN_TIMER_INT_ENA               at 0 range 10 .. 10;
      SARADC1_INT_ENA                  at 0 range 11 .. 11;
      TSENS_INT_ENA                    at 0 range 12 .. 12;
      COCPU_INT_ENA                    at 0 range 13 .. 13;
      SARADC2_INT_ENA                  at 0 range 14 .. 14;
      SWD_INT_ENA                      at 0 range 15 .. 15;
      XTAL32K_DEAD_INT_ENA             at 0 range 16 .. 16;
      COCPU_TRAP_INT_ENA               at 0 range 17 .. 17;
      TOUCH_TIMEOUT_INT_ENA            at 0 range 18 .. 18;
      GLITCH_DET_INT_ENA               at 0 range 19 .. 19;
      TOUCH_APPROACH_LOOP_DONE_INT_ENA at 0 range 20 .. 20;
      Reserved_21_31                   at 0 range 21 .. 31;
   end record;

   --  rtc interrupt register
   type INT_RAW_RTC_Register is record
      --  Read-only. sleep wakeup interrupt raw
      SLP_WAKEUP_INT_RAW               : SVD.Bit := 16#0#;
      --  Read-only. sleep reject interrupt raw
      SLP_REJECT_INT_RAW               : SVD.Bit := 16#0#;
      --  Read-only. SDIO idle interrupt raw
      SDIO_IDLE_INT_RAW                : SVD.Bit := 16#0#;
      --  Read-only. RTC WDT interrupt raw
      WDT_INT_RAW                      : SVD.Bit := 16#0#;
      --  Read-only. enable touch scan done interrupt raw
      TOUCH_SCAN_DONE_INT_RAW          : SVD.Bit := 16#0#;
      --  Read-only. ULP-coprocessor interrupt raw
      ULP_CP_INT_RAW                   : SVD.Bit := 16#0#;
      --  Read-only. touch interrupt raw
      TOUCH_DONE_INT_RAW               : SVD.Bit := 16#0#;
      --  Read-only. touch active interrupt raw
      TOUCH_ACTIVE_INT_RAW             : SVD.Bit := 16#0#;
      --  Read-only. touch inactive interrupt raw
      TOUCH_INACTIVE_INT_RAW           : SVD.Bit := 16#0#;
      --  Read-only. brown out interrupt raw
      BROWN_OUT_INT_RAW                : SVD.Bit := 16#0#;
      --  Read-only. RTC main timer interrupt raw
      MAIN_TIMER_INT_RAW               : SVD.Bit := 16#0#;
      --  Read-only. saradc1 interrupt raw
      SARADC1_INT_RAW                  : SVD.Bit := 16#0#;
      --  Read-only. tsens interrupt raw
      TSENS_INT_RAW                    : SVD.Bit := 16#0#;
      --  Read-only. riscV cocpu interrupt raw
      COCPU_INT_RAW                    : SVD.Bit := 16#0#;
      --  Read-only. saradc2 interrupt raw
      SARADC2_INT_RAW                  : SVD.Bit := 16#0#;
      --  Read-only. super watch dog interrupt raw
      SWD_INT_RAW                      : SVD.Bit := 16#0#;
      --  Read-only. xtal32k dead detection interrupt raw
      XTAL32K_DEAD_INT_RAW             : SVD.Bit := 16#0#;
      --  Read-only. cocpu trap interrupt raw
      COCPU_TRAP_INT_RAW               : SVD.Bit := 16#0#;
      --  Read-only. touch timeout interrupt raw
      TOUCH_TIMEOUT_INT_RAW            : SVD.Bit := 16#0#;
      --  Read-only. glitch_det_interrupt_raw
      GLITCH_DET_INT_RAW               : SVD.Bit := 16#0#;
      --  touch approach mode loop interrupt raw
      TOUCH_APPROACH_LOOP_DONE_INT_RAW : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_21_31                   : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_RTC_Register use record
      SLP_WAKEUP_INT_RAW               at 0 range 0 .. 0;
      SLP_REJECT_INT_RAW               at 0 range 1 .. 1;
      SDIO_IDLE_INT_RAW                at 0 range 2 .. 2;
      WDT_INT_RAW                      at 0 range 3 .. 3;
      TOUCH_SCAN_DONE_INT_RAW          at 0 range 4 .. 4;
      ULP_CP_INT_RAW                   at 0 range 5 .. 5;
      TOUCH_DONE_INT_RAW               at 0 range 6 .. 6;
      TOUCH_ACTIVE_INT_RAW             at 0 range 7 .. 7;
      TOUCH_INACTIVE_INT_RAW           at 0 range 8 .. 8;
      BROWN_OUT_INT_RAW                at 0 range 9 .. 9;
      MAIN_TIMER_INT_RAW               at 0 range 10 .. 10;
      SARADC1_INT_RAW                  at 0 range 11 .. 11;
      TSENS_INT_RAW                    at 0 range 12 .. 12;
      COCPU_INT_RAW                    at 0 range 13 .. 13;
      SARADC2_INT_RAW                  at 0 range 14 .. 14;
      SWD_INT_RAW                      at 0 range 15 .. 15;
      XTAL32K_DEAD_INT_RAW             at 0 range 16 .. 16;
      COCPU_TRAP_INT_RAW               at 0 range 17 .. 17;
      TOUCH_TIMEOUT_INT_RAW            at 0 range 18 .. 18;
      GLITCH_DET_INT_RAW               at 0 range 19 .. 19;
      TOUCH_APPROACH_LOOP_DONE_INT_RAW at 0 range 20 .. 20;
      Reserved_21_31                   at 0 range 21 .. 31;
   end record;

   --  rtc interrupt register
   type INT_ST_RTC_Register is record
      --  Read-only. sleep wakeup interrupt state
      SLP_WAKEUP_INT_ST               : SVD.Bit;
      --  Read-only. sleep reject interrupt state
      SLP_REJECT_INT_ST               : SVD.Bit;
      --  Read-only. SDIO idle interrupt state
      SDIO_IDLE_INT_ST                : SVD.Bit;
      --  Read-only. RTC WDT interrupt state
      WDT_INT_ST                      : SVD.Bit;
      --  Read-only. enable touch scan done interrupt raw
      TOUCH_SCAN_DONE_INT_ST          : SVD.Bit;
      --  Read-only. ULP-coprocessor interrupt state
      ULP_CP_INT_ST                   : SVD.Bit;
      --  Read-only. touch done interrupt state
      TOUCH_DONE_INT_ST               : SVD.Bit;
      --  Read-only. touch active interrupt state
      TOUCH_ACTIVE_INT_ST             : SVD.Bit;
      --  Read-only. touch inactive interrupt state
      TOUCH_INACTIVE_INT_ST           : SVD.Bit;
      --  Read-only. brown out interrupt state
      BROWN_OUT_INT_ST                : SVD.Bit;
      --  Read-only. RTC main timer interrupt state
      MAIN_TIMER_INT_ST               : SVD.Bit;
      --  Read-only. saradc1 interrupt state
      SARADC1_INT_ST                  : SVD.Bit;
      --  Read-only. tsens interrupt state
      TSENS_INT_ST                    : SVD.Bit;
      --  Read-only. riscV cocpu interrupt state
      COCPU_INT_ST                    : SVD.Bit;
      --  Read-only. saradc2 interrupt state
      SARADC2_INT_ST                  : SVD.Bit;
      --  Read-only. super watch dog interrupt state
      SWD_INT_ST                      : SVD.Bit;
      --  Read-only. xtal32k dead detection interrupt state
      XTAL32K_DEAD_INT_ST             : SVD.Bit;
      --  Read-only. cocpu trap interrupt state
      COCPU_TRAP_INT_ST               : SVD.Bit;
      --  Read-only. Touch timeout interrupt state
      TOUCH_TIMEOUT_INT_ST            : SVD.Bit;
      --  Read-only. glitch_det_interrupt state
      GLITCH_DET_INT_ST               : SVD.Bit;
      --  Read-only. touch approach mode loop interrupt state
      TOUCH_APPROACH_LOOP_DONE_INT_ST : SVD.Bit;
      --  unspecified
      Reserved_21_31                  : SVD.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_RTC_Register use record
      SLP_WAKEUP_INT_ST               at 0 range 0 .. 0;
      SLP_REJECT_INT_ST               at 0 range 1 .. 1;
      SDIO_IDLE_INT_ST                at 0 range 2 .. 2;
      WDT_INT_ST                      at 0 range 3 .. 3;
      TOUCH_SCAN_DONE_INT_ST          at 0 range 4 .. 4;
      ULP_CP_INT_ST                   at 0 range 5 .. 5;
      TOUCH_DONE_INT_ST               at 0 range 6 .. 6;
      TOUCH_ACTIVE_INT_ST             at 0 range 7 .. 7;
      TOUCH_INACTIVE_INT_ST           at 0 range 8 .. 8;
      BROWN_OUT_INT_ST                at 0 range 9 .. 9;
      MAIN_TIMER_INT_ST               at 0 range 10 .. 10;
      SARADC1_INT_ST                  at 0 range 11 .. 11;
      TSENS_INT_ST                    at 0 range 12 .. 12;
      COCPU_INT_ST                    at 0 range 13 .. 13;
      SARADC2_INT_ST                  at 0 range 14 .. 14;
      SWD_INT_ST                      at 0 range 15 .. 15;
      XTAL32K_DEAD_INT_ST             at 0 range 16 .. 16;
      COCPU_TRAP_INT_ST               at 0 range 17 .. 17;
      TOUCH_TIMEOUT_INT_ST            at 0 range 18 .. 18;
      GLITCH_DET_INT_ST               at 0 range 19 .. 19;
      TOUCH_APPROACH_LOOP_DONE_INT_ST at 0 range 20 .. 20;
      Reserved_21_31                  at 0 range 21 .. 31;
   end record;

   --  rtc interrupt register
   type INT_CLR_RTC_Register is record
      --  Write-only. Clear sleep wakeup interrupt state
      SLP_WAKEUP_INT_CLR               : SVD.Bit := 16#0#;
      --  Write-only. Clear sleep reject interrupt state
      SLP_REJECT_INT_CLR               : SVD.Bit := 16#0#;
      --  Write-only. Clear SDIO idle interrupt state
      SDIO_IDLE_INT_CLR                : SVD.Bit := 16#0#;
      --  Write-only. Clear RTC WDT interrupt state
      WDT_INT_CLR                      : SVD.Bit := 16#0#;
      --  Write-only. clear touch scan done interrupt raw
      TOUCH_SCAN_DONE_INT_CLR          : SVD.Bit := 16#0#;
      --  Write-only. Clear ULP-coprocessor interrupt state
      ULP_CP_INT_CLR                   : SVD.Bit := 16#0#;
      --  Write-only. Clear touch done interrupt state
      TOUCH_DONE_INT_CLR               : SVD.Bit := 16#0#;
      --  Write-only. Clear touch active interrupt state
      TOUCH_ACTIVE_INT_CLR             : SVD.Bit := 16#0#;
      --  Write-only. Clear touch inactive interrupt state
      TOUCH_INACTIVE_INT_CLR           : SVD.Bit := 16#0#;
      --  Write-only. Clear brown out interrupt state
      BROWN_OUT_INT_CLR                : SVD.Bit := 16#0#;
      --  Write-only. Clear RTC main timer interrupt state
      MAIN_TIMER_INT_CLR               : SVD.Bit := 16#0#;
      --  Write-only. Clear saradc1 interrupt state
      SARADC1_INT_CLR                  : SVD.Bit := 16#0#;
      --  Write-only. Clear tsens interrupt state
      TSENS_INT_CLR                    : SVD.Bit := 16#0#;
      --  Write-only. Clear riscV cocpu interrupt state
      COCPU_INT_CLR                    : SVD.Bit := 16#0#;
      --  Write-only. Clear saradc2 interrupt state
      SARADC2_INT_CLR                  : SVD.Bit := 16#0#;
      --  Write-only. Clear super watch dog interrupt state
      SWD_INT_CLR                      : SVD.Bit := 16#0#;
      --  Write-only. Clear RTC WDT interrupt state
      XTAL32K_DEAD_INT_CLR             : SVD.Bit := 16#0#;
      --  Write-only. Clear cocpu trap interrupt state
      COCPU_TRAP_INT_CLR               : SVD.Bit := 16#0#;
      --  Write-only. Clear touch timeout interrupt state
      TOUCH_TIMEOUT_INT_CLR            : SVD.Bit := 16#0#;
      --  Write-only. Clear glitch det interrupt state
      GLITCH_DET_INT_CLR               : SVD.Bit := 16#0#;
      --  Write-only. cleartouch approach mode loop interrupt state
      TOUCH_APPROACH_LOOP_DONE_INT_CLR : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_21_31                   : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_RTC_Register use record
      SLP_WAKEUP_INT_CLR               at 0 range 0 .. 0;
      SLP_REJECT_INT_CLR               at 0 range 1 .. 1;
      SDIO_IDLE_INT_CLR                at 0 range 2 .. 2;
      WDT_INT_CLR                      at 0 range 3 .. 3;
      TOUCH_SCAN_DONE_INT_CLR          at 0 range 4 .. 4;
      ULP_CP_INT_CLR                   at 0 range 5 .. 5;
      TOUCH_DONE_INT_CLR               at 0 range 6 .. 6;
      TOUCH_ACTIVE_INT_CLR             at 0 range 7 .. 7;
      TOUCH_INACTIVE_INT_CLR           at 0 range 8 .. 8;
      BROWN_OUT_INT_CLR                at 0 range 9 .. 9;
      MAIN_TIMER_INT_CLR               at 0 range 10 .. 10;
      SARADC1_INT_CLR                  at 0 range 11 .. 11;
      TSENS_INT_CLR                    at 0 range 12 .. 12;
      COCPU_INT_CLR                    at 0 range 13 .. 13;
      SARADC2_INT_CLR                  at 0 range 14 .. 14;
      SWD_INT_CLR                      at 0 range 15 .. 15;
      XTAL32K_DEAD_INT_CLR             at 0 range 16 .. 16;
      COCPU_TRAP_INT_CLR               at 0 range 17 .. 17;
      TOUCH_TIMEOUT_INT_CLR            at 0 range 18 .. 18;
      GLITCH_DET_INT_CLR               at 0 range 19 .. 19;
      TOUCH_APPROACH_LOOP_DONE_INT_CLR at 0 range 20 .. 20;
      Reserved_21_31                   at 0 range 21 .. 31;
   end record;

   --  Reserved register
   type EXT_XTL_CONF_Register is record
      --  xtal 32k watch dog enable
      XTAL32K_WDT_EN       : SVD.Bit := 16#0#;
      --  xtal 32k watch dog clock force on
      XTAL32K_WDT_CLK_FO   : SVD.Bit := 16#0#;
      --  xtal 32k watch dog sw reset
      XTAL32K_WDT_RESET    : SVD.Bit := 16#0#;
      --  xtal 32k external xtal clock force on
      XTAL32K_EXT_CLK_FO   : SVD.Bit := 16#0#;
      --  xtal 32k switch to back up clock when xtal is dead
      XTAL32K_AUTO_BACKUP  : SVD.Bit := 16#0#;
      --  xtal 32k restart xtal when xtal is dead
      XTAL32K_AUTO_RESTART : SVD.Bit := 16#0#;
      --  xtal 32k switch back xtal when xtal is restarted
      XTAL32K_AUTO_RETURN  : SVD.Bit := 16#0#;
      --  Xtal 32k xpd control by sw or fsm
      XTAL32K_XPD_FORCE    : SVD.Bit := 16#1#;
      --  apply an internal clock to help xtal 32k to start
      ENCKINIT_XTAL_32K    : SVD.Bit := 16#0#;
      --  0: single-end buffer 1: differential buffer
      DBUF_XTAL_32K        : SVD.Bit := 16#0#;
      --  xtal_32k gm control
      DGM_XTAL_32K         : SVD.UInt3 := 16#3#;
      --  DRES_XTAL_32K
      DRES_XTAL_32K        : SVD.UInt3 := 16#3#;
      --  XPD_XTAL_32K
      XPD_XTAL_32K         : SVD.Bit := 16#0#;
      --  DAC_XTAL_32K
      DAC_XTAL_32K         : SVD.UInt3 := 16#3#;
      --  Read-only. state of 32k_wdt
      WDT_STATE            : SVD.UInt3 := 16#0#;
      --  XTAL_32K sel. 0: external XTAL_32K, 1: CLK from RTC pad X32P_C
      XTAL32K_GPIO_SEL     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_24_29       : SVD.UInt6 := 16#0#;
      --  0: power down XTAL at high level, 1: power down XTAL at low level
      XTL_EXT_CTR_LV       : SVD.Bit := 16#0#;
      --  Reserved register
      XTL_EXT_CTR_EN       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXT_XTL_CONF_Register use record
      XTAL32K_WDT_EN       at 0 range 0 .. 0;
      XTAL32K_WDT_CLK_FO   at 0 range 1 .. 1;
      XTAL32K_WDT_RESET    at 0 range 2 .. 2;
      XTAL32K_EXT_CLK_FO   at 0 range 3 .. 3;
      XTAL32K_AUTO_BACKUP  at 0 range 4 .. 4;
      XTAL32K_AUTO_RESTART at 0 range 5 .. 5;
      XTAL32K_AUTO_RETURN  at 0 range 6 .. 6;
      XTAL32K_XPD_FORCE    at 0 range 7 .. 7;
      ENCKINIT_XTAL_32K    at 0 range 8 .. 8;
      DBUF_XTAL_32K        at 0 range 9 .. 9;
      DGM_XTAL_32K         at 0 range 10 .. 12;
      DRES_XTAL_32K        at 0 range 13 .. 15;
      XPD_XTAL_32K         at 0 range 16 .. 16;
      DAC_XTAL_32K         at 0 range 17 .. 19;
      WDT_STATE            at 0 range 20 .. 22;
      XTAL32K_GPIO_SEL     at 0 range 23 .. 23;
      Reserved_24_29       at 0 range 24 .. 29;
      XTL_EXT_CTR_LV       at 0 range 30 .. 30;
      XTL_EXT_CTR_EN       at 0 range 31 .. 31;
   end record;

   --  ext wakeup configure
   type EXT_WAKEUP_CONF_Register is record
      --  unspecified
      Reserved_0_28      : SVD.UInt29 := 16#0#;
      --  enable filter for gpio wakeup event
      GPIO_WAKEUP_FILTER : SVD.Bit := 16#0#;
      --  0: external wakeup at low level, 1: external wakeup at high level
      EXT_WAKEUP0_LV     : SVD.Bit := 16#0#;
      --  0: external wakeup at low level, 1: external wakeup at high level
      EXT_WAKEUP1_LV     : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXT_WAKEUP_CONF_Register use record
      Reserved_0_28      at 0 range 0 .. 28;
      GPIO_WAKEUP_FILTER at 0 range 29 .. 29;
      EXT_WAKEUP0_LV     at 0 range 30 .. 30;
      EXT_WAKEUP1_LV     at 0 range 31 .. 31;
   end record;

   --  reject sleep register
   type SLP_REJECT_CONF_Register is record
      --  unspecified
      Reserved_0_11       : SVD.UInt12 := 16#0#;
      --  sleep reject enable
      SLEEP_REJECT_ENA    : SVD.UInt18 := 16#0#;
      --  enable reject for light sleep
      LIGHT_SLP_REJECT_EN : SVD.Bit := 16#0#;
      --  enable reject for deep sleep
      DEEP_SLP_REJECT_EN  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_REJECT_CONF_Register use record
      Reserved_0_11       at 0 range 0 .. 11;
      SLEEP_REJECT_ENA    at 0 range 12 .. 29;
      LIGHT_SLP_REJECT_EN at 0 range 30 .. 30;
      DEEP_SLP_REJECT_EN  at 0 range 31 .. 31;
   end record;

   --  conigure cpu freq
   type CPU_PERIOD_CONF_Register is record
      --  unspecified
      Reserved_0_28 : SVD.UInt29 := 16#0#;
      --  CPU sel option
      CPUSEL_CONF   : SVD.Bit := 16#0#;
      --  conigure cpu freq
      CPUPERIOD_SEL : SVD.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPU_PERIOD_CONF_Register use record
      Reserved_0_28 at 0 range 0 .. 28;
      CPUSEL_CONF   at 0 range 29 .. 29;
      CPUPERIOD_SEL at 0 range 30 .. 31;
   end record;

   --  No public
   type SDIO_ACT_CONF_Register is record
      --  unspecified
      Reserved_0_21 : SVD.UInt22 := 16#0#;
      --  No public
      SDIO_ACT_DNUM : SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIO_ACT_CONF_Register use record
      Reserved_0_21 at 0 range 0 .. 21;
      SDIO_ACT_DNUM at 0 range 22 .. 31;
   end record;

   --  configure clock register
   type CLK_CONF_Register is record
      --  unspecified
      Reserved_0_0               : SVD.Bit := 16#0#;
      --  force efuse clk gating
      EFUSE_CLK_FORCE_GATING     : SVD.Bit := 16#0#;
      --  force efuse clk nogating
      EFUSE_CLK_FORCE_NOGATING   : SVD.Bit := 16#1#;
      --  used to sync reg_ck8m_div_sel bus. Clear vld before set
      --  reg_ck8m_div_sel, then set vld to actually switch the clk
      CK8M_DIV_SEL_VLD           : SVD.Bit := 16#1#;
      --  CK8M_D256_OUT divider. 00: div128, 01: div256, 10: div512, 11:
      --  div1024.
      CK8M_DIV                   : SVD.UInt2 := 16#1#;
      --  disable CK8M and CK8M_D256_OUT
      ENB_CK8M                   : SVD.Bit := 16#0#;
      --  1: CK8M_D256_OUT is actually CK8M, 0: CK8M_D256_OUT is CK8M divided
      --  by 256
      ENB_CK8M_DIV               : SVD.Bit := 16#0#;
      --  enable CK_XTAL_32K for digital core (no relationship with RTC core)
      DIG_XTAL32K_EN             : SVD.Bit := 16#0#;
      --  enable CK8M_D256_OUT for digital core (no relationship with RTC core)
      DIG_CLK8M_D256_EN          : SVD.Bit := 16#1#;
      --  enable CK8M for digital core (no relationship with RTC core)
      DIG_CLK8M_EN               : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_11_11             : SVD.Bit := 16#0#;
      --  divider = reg_ck8m_div_sel + 1
      CK8M_DIV_SEL               : SVD.UInt3 := 16#3#;
      --  XTAL force no gating during sleep
      XTAL_FORCE_NOGATING        : SVD.Bit := 16#0#;
      --  CK8M force no gating during sleep
      CK8M_FORCE_NOGATING        : SVD.Bit := 16#0#;
      --  CK8M_DFREQ
      CK8M_DFREQ                 : SVD.Byte := 16#AC#;
      --  CK8M force power down
      CK8M_FORCE_PD              : SVD.Bit := 16#0#;
      --  CK8M force power up
      CK8M_FORCE_PU              : SVD.Bit := 16#0#;
      --  force global xtal gating
      XTAL_GLOBAL_FORCE_GATING   : SVD.Bit := 16#0#;
      --  force global xtal no gating
      XTAL_GLOBAL_FORCE_NOGATING : SVD.Bit := 16#1#;
      --  fast_clk_rtc sel. 0: XTAL div 4, 1: CK8M
      FAST_CLK_RTC_SEL           : SVD.Bit := 16#0#;
      --  select slow clock
      ANA_CLK_RTC_SEL            : SVD.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_CONF_Register use record
      Reserved_0_0               at 0 range 0 .. 0;
      EFUSE_CLK_FORCE_GATING     at 0 range 1 .. 1;
      EFUSE_CLK_FORCE_NOGATING   at 0 range 2 .. 2;
      CK8M_DIV_SEL_VLD           at 0 range 3 .. 3;
      CK8M_DIV                   at 0 range 4 .. 5;
      ENB_CK8M                   at 0 range 6 .. 6;
      ENB_CK8M_DIV               at 0 range 7 .. 7;
      DIG_XTAL32K_EN             at 0 range 8 .. 8;
      DIG_CLK8M_D256_EN          at 0 range 9 .. 9;
      DIG_CLK8M_EN               at 0 range 10 .. 10;
      Reserved_11_11             at 0 range 11 .. 11;
      CK8M_DIV_SEL               at 0 range 12 .. 14;
      XTAL_FORCE_NOGATING        at 0 range 15 .. 15;
      CK8M_FORCE_NOGATING        at 0 range 16 .. 16;
      CK8M_DFREQ                 at 0 range 17 .. 24;
      CK8M_FORCE_PD              at 0 range 25 .. 25;
      CK8M_FORCE_PU              at 0 range 26 .. 26;
      XTAL_GLOBAL_FORCE_GATING   at 0 range 27 .. 27;
      XTAL_GLOBAL_FORCE_NOGATING at 0 range 28 .. 28;
      FAST_CLK_RTC_SEL           at 0 range 29 .. 29;
      ANA_CLK_RTC_SEL            at 0 range 30 .. 31;
   end record;

   --  configure slow clk
   type SLOW_CLK_CONF_Register is record
      --  unspecified
      Reserved_0_21      : SVD.UInt22 := 16#0#;
      --  used to sync div bus. clear vld before set reg_rtc_ana_clk_div, then
      --  set vld to actually switch the clk
      ANA_CLK_DIV_VLD    : SVD.Bit := 16#1#;
      --  rtc clk div
      ANA_CLK_DIV        : SVD.Byte := 16#0#;
      --  No public
      SLOW_CLK_NEXT_EDGE : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLOW_CLK_CONF_Register use record
      Reserved_0_21      at 0 range 0 .. 21;
      ANA_CLK_DIV_VLD    at 0 range 22 .. 22;
      ANA_CLK_DIV        at 0 range 23 .. 30;
      SLOW_CLK_NEXT_EDGE at 0 range 31 .. 31;
   end record;

   --  configure flash power
   type SDIO_CONF_Register is record
      --  timer count to apply reg_sdio_dcap after sdio power on
      SDIO_TIMER_TARGET : SVD.Byte := 16#A#;
      --  unspecified
      Reserved_8_8      : SVD.Bit := 16#0#;
      --  Tieh = 1 mode drive ability. Initially set to 0 to limit charge
      --  current, set to 3 after several us.
      SDIO_DTHDRV       : SVD.UInt2 := 16#3#;
      --  ability to prevent LDO from overshoot
      SDIO_DCAP         : SVD.UInt2 := 16#3#;
      --  add resistor from ldo output to ground. 0: no res, 1: 6k,2:4k,3:2k
      SDIO_INITI        : SVD.UInt2 := 16#1#;
      --  0 to set init[1:0]=0
      SDIO_EN_INITI     : SVD.Bit := 16#1#;
      --  tune current limit threshold when tieh = 0. About 800mA/(8+d)
      SDIO_DCURLIM      : SVD.UInt3 := 16#0#;
      --  select current limit mode
      SDIO_MODECURLIM   : SVD.Bit := 16#0#;
      --  enable current limit
      SDIO_ENCURLIM     : SVD.Bit := 16#1#;
      --  power down SDIO_REG in sleep. Only active when reg_sdio_force = 0
      SDIO_REG_PD_EN    : SVD.Bit := 16#1#;
      --  1: use SW option to control SDIO_REG, 0: use state machine
      SDIO_FORCE        : SVD.Bit := 16#0#;
      --  SW option for SDIO_TIEH. Only active when reg_sdio_force = 1
      SDIO_TIEH         : SVD.Bit := 16#1#;
      --  Read-only. read only register for REG1P8_READY
      REG1P8_READY      : SVD.Bit := 16#0#;
      --  SW option for DREFL_SDIO. Only active when reg_sdio_force = 1
      DREFL_SDIO        : SVD.UInt2 := 16#1#;
      --  SW option for DREFM_SDIO. Only active when reg_sdio_force = 1
      DREFM_SDIO        : SVD.UInt2 := 16#1#;
      --  SW option for DREFH_SDIO. Only active when reg_sdio_force = 1
      DREFH_SDIO        : SVD.UInt2 := 16#0#;
      --  power on flash regulator
      XPD_SDIO          : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIO_CONF_Register use record
      SDIO_TIMER_TARGET at 0 range 0 .. 7;
      Reserved_8_8      at 0 range 8 .. 8;
      SDIO_DTHDRV       at 0 range 9 .. 10;
      SDIO_DCAP         at 0 range 11 .. 12;
      SDIO_INITI        at 0 range 13 .. 14;
      SDIO_EN_INITI     at 0 range 15 .. 15;
      SDIO_DCURLIM      at 0 range 16 .. 18;
      SDIO_MODECURLIM   at 0 range 19 .. 19;
      SDIO_ENCURLIM     at 0 range 20 .. 20;
      SDIO_REG_PD_EN    at 0 range 21 .. 21;
      SDIO_FORCE        at 0 range 22 .. 22;
      SDIO_TIEH         at 0 range 23 .. 23;
      REG1P8_READY      at 0 range 24 .. 24;
      DREFL_SDIO        at 0 range 25 .. 26;
      DREFM_SDIO        at 0 range 27 .. 28;
      DREFH_SDIO        at 0 range 29 .. 30;
      XPD_SDIO          at 0 range 31 .. 31;
   end record;

   --  No public
   type BIAS_CONF_Register is record
      --  unspecified
      Reserved_0_9        : SVD.UInt10 := 16#0#;
      --  No public
      BIAS_BUF_IDLE       : SVD.Bit := 16#0#;
      --  No public
      BIAS_BUF_WAKE       : SVD.Bit := 16#1#;
      --  No public
      BIAS_BUF_DEEP_SLP   : SVD.Bit := 16#0#;
      --  No public
      BIAS_BUF_MONITOR    : SVD.Bit := 16#0#;
      --  xpd cur when rtc in sleep_state
      PD_CUR_DEEP_SLP     : SVD.Bit := 16#0#;
      --  xpd cur when rtc in monitor state
      PD_CUR_MONITOR      : SVD.Bit := 16#0#;
      --  bias_sleep when rtc in sleep_state
      BIAS_SLEEP_DEEP_SLP : SVD.Bit := 16#1#;
      --  bias_sleep when rtc in monitor state
      BIAS_SLEEP_MONITOR  : SVD.Bit := 16#0#;
      --  DBG_ATTEN when rtc in sleep state
      DBG_ATTEN_DEEP_SLP  : SVD.UInt4 := 16#0#;
      --  DBG_ATTEN when rtc in monitor state
      DBG_ATTEN_MONITOR   : SVD.UInt4 := 16#0#;
      --  No public
      DBG_ATTEN_WAKEUP    : SVD.UInt4 := 16#0#;
      --  unspecified
      Reserved_30_31      : SVD.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BIAS_CONF_Register use record
      Reserved_0_9        at 0 range 0 .. 9;
      BIAS_BUF_IDLE       at 0 range 10 .. 10;
      BIAS_BUF_WAKE       at 0 range 11 .. 11;
      BIAS_BUF_DEEP_SLP   at 0 range 12 .. 12;
      BIAS_BUF_MONITOR    at 0 range 13 .. 13;
      PD_CUR_DEEP_SLP     at 0 range 14 .. 14;
      PD_CUR_MONITOR      at 0 range 15 .. 15;
      BIAS_SLEEP_DEEP_SLP at 0 range 16 .. 16;
      BIAS_SLEEP_MONITOR  at 0 range 17 .. 17;
      DBG_ATTEN_DEEP_SLP  at 0 range 18 .. 21;
      DBG_ATTEN_MONITOR   at 0 range 22 .. 25;
      DBG_ATTEN_WAKEUP    at 0 range 26 .. 29;
      Reserved_30_31      at 0 range 30 .. 31;
   end record;

   --  configure rtc regulator
   type RTC_Register is record
      --  unspecified
      Reserved_0_6       : SVD.UInt7 := 16#0#;
      --  enable dig regulator cali
      DIG_REG_CAL_EN     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_8_13      : SVD.UInt6 := 16#0#;
      --  SCK_DCAP
      SCK_DCAP           : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_22_27     : SVD.UInt6 := 16#0#;
      --  RTC_DBOOST force power down
      DBOOST_FORCE_PD    : SVD.Bit := 16#0#;
      --  RTC_DBOOST force power up
      DBOOST_FORCE_PU    : SVD.Bit := 16#1#;
      --  RTC_REG force power down (for RTC_REG power down means decrease the
      --  voltage to 0.8v or lower )
      REGULATOR_FORCE_PD : SVD.Bit := 16#0#;
      --  RTC_REG force power on (for RTC_REG power down means decrease the
      --  voltage to 0.8v or lower )
      REGULATOR_FORCE_PU : SVD.Bit := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_Register use record
      Reserved_0_6       at 0 range 0 .. 6;
      DIG_REG_CAL_EN     at 0 range 7 .. 7;
      Reserved_8_13      at 0 range 8 .. 13;
      SCK_DCAP           at 0 range 14 .. 21;
      Reserved_22_27     at 0 range 22 .. 27;
      DBOOST_FORCE_PD    at 0 range 28 .. 28;
      DBOOST_FORCE_PU    at 0 range 29 .. 29;
      REGULATOR_FORCE_PD at 0 range 30 .. 30;
      REGULATOR_FORCE_PU at 0 range 31 .. 31;
   end record;

   --  configure rtc power
   type PWC_Register is record
      --  Fast RTC memory force no ISO
      FASTMEM_FORCE_NOISO : SVD.Bit := 16#1#;
      --  Fast RTC memory force ISO
      FASTMEM_FORCE_ISO   : SVD.Bit := 16#0#;
      --  RTC memory force no ISO
      SLOWMEM_FORCE_NOISO : SVD.Bit := 16#1#;
      --  RTC memory force ISO
      SLOWMEM_FORCE_ISO   : SVD.Bit := 16#0#;
      --  rtc_peri force ISO
      FORCE_ISO           : SVD.Bit := 16#0#;
      --  rtc_peri force no ISO
      FORCE_NOISO         : SVD.Bit := 16#1#;
      --  1: Fast RTC memory PD following CPU, 0: fast RTC memory PD following
      --  RTC state machine
      FASTMEM_FOLW_CPU    : SVD.Bit := 16#0#;
      --  Fast RTC memory force PD
      FASTMEM_FORCE_LPD   : SVD.Bit := 16#0#;
      --  Fast RTC memory force no PD
      FASTMEM_FORCE_LPU   : SVD.Bit := 16#1#;
      --  1: RTC memory PD following CPU, 0: RTC memory PD following RTC state
      --  machine
      SLOWMEM_FOLW_CPU    : SVD.Bit := 16#0#;
      --  RTC memory force PD
      SLOWMEM_FORCE_LPD   : SVD.Bit := 16#0#;
      --  RTC memory force no PD
      SLOWMEM_FORCE_LPU   : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_12_17      : SVD.UInt6 := 16#0#;
      --  rtc_peri force power down
      FORCE_PD            : SVD.Bit := 16#0#;
      --  rtc_peri force power up
      FORCE_PU            : SVD.Bit := 16#0#;
      --  enable power down rtc_peri in sleep
      PD_EN               : SVD.Bit := 16#0#;
      --  rtc pad force hold
      PAD_FORCE_HOLD      : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_22_31      : SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWC_Register use record
      FASTMEM_FORCE_NOISO at 0 range 0 .. 0;
      FASTMEM_FORCE_ISO   at 0 range 1 .. 1;
      SLOWMEM_FORCE_NOISO at 0 range 2 .. 2;
      SLOWMEM_FORCE_ISO   at 0 range 3 .. 3;
      FORCE_ISO           at 0 range 4 .. 4;
      FORCE_NOISO         at 0 range 5 .. 5;
      FASTMEM_FOLW_CPU    at 0 range 6 .. 6;
      FASTMEM_FORCE_LPD   at 0 range 7 .. 7;
      FASTMEM_FORCE_LPU   at 0 range 8 .. 8;
      SLOWMEM_FOLW_CPU    at 0 range 9 .. 9;
      SLOWMEM_FORCE_LPD   at 0 range 10 .. 10;
      SLOWMEM_FORCE_LPU   at 0 range 11 .. 11;
      Reserved_12_17      at 0 range 12 .. 17;
      FORCE_PD            at 0 range 18 .. 18;
      FORCE_PU            at 0 range 19 .. 19;
      PD_EN               at 0 range 20 .. 20;
      PAD_FORCE_HOLD      at 0 range 21 .. 21;
      Reserved_22_31      at 0 range 22 .. 31;
   end record;

   --  No public
   type REGULATOR_DRV_CTRL_Register is record
      --  No public
      REGULATOR_DRV_B_MONITOR : SVD.UInt6 := 16#0#;
      --  No public
      REGULATOR_DRV_B_SLP     : SVD.UInt6 := 16#0#;
      --  No public
      DG_VDD_DRV_B_SLP        : SVD.Byte := 16#0#;
      --  No public
      DG_VDD_DRV_B_MONITOR    : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_28_31          : SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGULATOR_DRV_CTRL_Register use record
      REGULATOR_DRV_B_MONITOR at 0 range 0 .. 5;
      REGULATOR_DRV_B_SLP     at 0 range 6 .. 11;
      DG_VDD_DRV_B_SLP        at 0 range 12 .. 19;
      DG_VDD_DRV_B_MONITOR    at 0 range 20 .. 27;
      Reserved_28_31          at 0 range 28 .. 31;
   end record;

   --  configure digital power
   type DIG_PWC_Register is record
      --  unspecified
      Reserved_0_2      : SVD.UInt3 := 16#0#;
      --  memories in digital core force PD in sleep
      LSLP_MEM_FORCE_PD : SVD.Bit := 16#0#;
      --  memories in digital core force no PD in sleep
      LSLP_MEM_FORCE_PU : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_5_10     : SVD.UInt6 := 16#0#;
      --  internal SRAM 2 force power down
      BT_FORCE_PD       : SVD.Bit := 16#0#;
      --  internal SRAM 2 force power up
      BT_FORCE_PU       : SVD.Bit := 16#1#;
      --  internal SRAM 3 force power down
      DG_PERI_FORCE_PD  : SVD.Bit := 16#0#;
      --  internal SRAM 3 force power up
      DG_PERI_FORCE_PU  : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_15_16    : SVD.UInt2 := 16#0#;
      --  wifi force power down
      WIFI_FORCE_PD     : SVD.Bit := 16#0#;
      --  wifi force power up
      WIFI_FORCE_PU     : SVD.Bit := 16#1#;
      --  digital core force power down
      DG_WRAP_FORCE_PD  : SVD.Bit := 16#0#;
      --  digital core force power up
      DG_WRAP_FORCE_PU  : SVD.Bit := 16#1#;
      --  digital dcdc force power down
      CPU_TOP_FORCE_PD  : SVD.Bit := 16#0#;
      --  digital dcdc force power up
      CPU_TOP_FORCE_PU  : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_23_26    : SVD.UInt4 := 16#0#;
      --  enable power down internal SRAM 2 in sleep
      BT_PD_EN          : SVD.Bit := 16#0#;
      --  enable power down internal SRAM 3 in sleep
      DG_PERI_PD_EN     : SVD.Bit := 16#0#;
      --  enable power down internal SRAM 4 in sleep
      CPU_TOP_PD_EN     : SVD.Bit := 16#0#;
      --  enable power down wifi in sleep
      WIFI_PD_EN        : SVD.Bit := 16#0#;
      --  enable power down all digital logic
      DG_WRAP_PD_EN     : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIG_PWC_Register use record
      Reserved_0_2      at 0 range 0 .. 2;
      LSLP_MEM_FORCE_PD at 0 range 3 .. 3;
      LSLP_MEM_FORCE_PU at 0 range 4 .. 4;
      Reserved_5_10     at 0 range 5 .. 10;
      BT_FORCE_PD       at 0 range 11 .. 11;
      BT_FORCE_PU       at 0 range 12 .. 12;
      DG_PERI_FORCE_PD  at 0 range 13 .. 13;
      DG_PERI_FORCE_PU  at 0 range 14 .. 14;
      Reserved_15_16    at 0 range 15 .. 16;
      WIFI_FORCE_PD     at 0 range 17 .. 17;
      WIFI_FORCE_PU     at 0 range 18 .. 18;
      DG_WRAP_FORCE_PD  at 0 range 19 .. 19;
      DG_WRAP_FORCE_PU  at 0 range 20 .. 20;
      CPU_TOP_FORCE_PD  at 0 range 21 .. 21;
      CPU_TOP_FORCE_PU  at 0 range 22 .. 22;
      Reserved_23_26    at 0 range 23 .. 26;
      BT_PD_EN          at 0 range 27 .. 27;
      DG_PERI_PD_EN     at 0 range 28 .. 28;
      CPU_TOP_PD_EN     at 0 range 29 .. 29;
      WIFI_PD_EN        at 0 range 30 .. 30;
      DG_WRAP_PD_EN     at 0 range 31 .. 31;
   end record;

   --  congigure digital power isolation
   type DIG_ISO_Register is record
      --  unspecified
      Reserved_0_6        : SVD.UInt7 := 16#0#;
      --  No public
      FORCE_OFF           : SVD.Bit := 16#1#;
      --  No public
      FORCE_ON            : SVD.Bit := 16#0#;
      --  Read-only. read only register to indicate digital pad auto-hold
      --  status
      DG_PAD_AUTOHOLD     : SVD.Bit := 16#0#;
      --  Write-only. wtite only register to clear digital pad auto-hold
      CLR_DG_PAD_AUTOHOLD : SVD.Bit := 16#0#;
      --  digital pad enable auto-hold
      DG_PAD_AUTOHOLD_EN  : SVD.Bit := 16#0#;
      --  digital pad force no ISO
      DG_PAD_FORCE_NOISO  : SVD.Bit := 16#1#;
      --  digital pad force ISO
      DG_PAD_FORCE_ISO    : SVD.Bit := 16#0#;
      --  digital pad force un-hold
      DG_PAD_FORCE_UNHOLD : SVD.Bit := 16#1#;
      --  digital pad force hold
      DG_PAD_FORCE_HOLD   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_21      : SVD.UInt6 := 16#0#;
      --  internal SRAM 2 force ISO
      BT_FORCE_ISO        : SVD.Bit := 16#0#;
      --  internal SRAM 2 force no ISO
      BT_FORCE_NOISO      : SVD.Bit := 16#1#;
      --  internal SRAM 3 force ISO
      DG_PERI_FORCE_ISO   : SVD.Bit := 16#0#;
      --  internal SRAM 3 force no ISO
      DG_PERI_FORCE_NOISO : SVD.Bit := 16#1#;
      --  internal SRAM 4 force ISO
      CPU_TOP_FORCE_ISO   : SVD.Bit := 16#0#;
      --  internal SRAM 4 force no ISO
      CPU_TOP_FORCE_NOISO : SVD.Bit := 16#1#;
      --  wifi force ISO
      WIFI_FORCE_ISO      : SVD.Bit := 16#0#;
      --  wifi force no ISO
      WIFI_FORCE_NOISO    : SVD.Bit := 16#1#;
      --  digital core force ISO
      DG_WRAP_FORCE_ISO   : SVD.Bit := 16#0#;
      --  digita core force no ISO
      DG_WRAP_FORCE_NOISO : SVD.Bit := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIG_ISO_Register use record
      Reserved_0_6        at 0 range 0 .. 6;
      FORCE_OFF           at 0 range 7 .. 7;
      FORCE_ON            at 0 range 8 .. 8;
      DG_PAD_AUTOHOLD     at 0 range 9 .. 9;
      CLR_DG_PAD_AUTOHOLD at 0 range 10 .. 10;
      DG_PAD_AUTOHOLD_EN  at 0 range 11 .. 11;
      DG_PAD_FORCE_NOISO  at 0 range 12 .. 12;
      DG_PAD_FORCE_ISO    at 0 range 13 .. 13;
      DG_PAD_FORCE_UNHOLD at 0 range 14 .. 14;
      DG_PAD_FORCE_HOLD   at 0 range 15 .. 15;
      Reserved_16_21      at 0 range 16 .. 21;
      BT_FORCE_ISO        at 0 range 22 .. 22;
      BT_FORCE_NOISO      at 0 range 23 .. 23;
      DG_PERI_FORCE_ISO   at 0 range 24 .. 24;
      DG_PERI_FORCE_NOISO at 0 range 25 .. 25;
      CPU_TOP_FORCE_ISO   at 0 range 26 .. 26;
      CPU_TOP_FORCE_NOISO at 0 range 27 .. 27;
      WIFI_FORCE_ISO      at 0 range 28 .. 28;
      WIFI_FORCE_NOISO    at 0 range 29 .. 29;
      DG_WRAP_FORCE_ISO   at 0 range 30 .. 30;
      DG_WRAP_FORCE_NOISO at 0 range 31 .. 31;
   end record;

   --  configure rtc watch dog
   type WDTCONFIG0_Register is record
      --  chip reset siginal pulse width
      WDT_CHIP_RESET_WIDTH : SVD.Byte := 16#14#;
      --  wdt reset whole chip enable
      WDT_CHIP_RESET_EN    : SVD.Bit := 16#0#;
      --  pause WDT in sleep
      WDT_PAUSE_IN_SLP     : SVD.Bit := 16#1#;
      --  enable WDT reset APP CPU
      WDT_APPCPU_RESET_EN  : SVD.Bit := 16#0#;
      --  enable WDT reset PRO CPU
      WDT_PROCPU_RESET_EN  : SVD.Bit := 16#0#;
      --  enable WDT in flash boot
      WDT_FLASHBOOT_MOD_EN : SVD.Bit := 16#1#;
      --  system reset counter length
      WDT_SYS_RESET_LENGTH : SVD.UInt3 := 16#1#;
      --  CPU reset counter length
      WDT_CPU_RESET_LENGTH : SVD.UInt3 := 16#1#;
      --  1: interrupt stage en 2: CPU reset stage en 3: system reset stage en
      --  4: RTC reset stage en
      WDT_STG3             : SVD.UInt3 := 16#0#;
      --  1: interrupt stage en 2: CPU reset stage en 3: system reset stage en
      --  4: RTC reset stage en
      WDT_STG2             : SVD.UInt3 := 16#0#;
      --  1: interrupt stage en 2: CPU reset stage en 3: system reset stage en
      --  4: RTC reset stage en
      WDT_STG1             : SVD.UInt3 := 16#0#;
      --  1: interrupt stage en 2: CPU reset stage en 3: system reset stage en
      --  4: RTC reset stage en
      WDT_STG0             : SVD.UInt3 := 16#0#;
      --  enable rtc watch dog
      WDT_EN               : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTCONFIG0_Register use record
      WDT_CHIP_RESET_WIDTH at 0 range 0 .. 7;
      WDT_CHIP_RESET_EN    at 0 range 8 .. 8;
      WDT_PAUSE_IN_SLP     at 0 range 9 .. 9;
      WDT_APPCPU_RESET_EN  at 0 range 10 .. 10;
      WDT_PROCPU_RESET_EN  at 0 range 11 .. 11;
      WDT_FLASHBOOT_MOD_EN at 0 range 12 .. 12;
      WDT_SYS_RESET_LENGTH at 0 range 13 .. 15;
      WDT_CPU_RESET_LENGTH at 0 range 16 .. 18;
      WDT_STG3             at 0 range 19 .. 21;
      WDT_STG2             at 0 range 22 .. 24;
      WDT_STG1             at 0 range 25 .. 27;
      WDT_STG0             at 0 range 28 .. 30;
      WDT_EN               at 0 range 31 .. 31;
   end record;

   --  rtc wdt feed
   type WDTFEED_Register is record
      --  unspecified
      Reserved_0_30 : SVD.UInt31 := 16#0#;
      --  Write-only. rtc wdt feed
      WDT_FEED      : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WDTFEED_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      WDT_FEED      at 0 range 31 .. 31;
   end record;

   --  congfigure super watch dog
   type SWD_CONF_Register is record
      --  Read-only. swd reset flag
      SWD_RESET_FLAG   : SVD.Bit := 16#0#;
      --  Read-only. swd interrupt for feeding
      SWD_FEED_INT     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_16    : SVD.UInt15 := 16#0#;
      --  bypass super watch dog reset
      SWD_BYPASS_RST   : SVD.Bit := 16#0#;
      --  adjust signal width send to swd
      SWD_SIGNAL_WIDTH : SVD.UInt10 := 16#12C#;
      --  Write-only. reset swd reset flag
      SWD_RST_FLAG_CLR : SVD.Bit := 16#0#;
      --  Write-only. Sw feed swd
      SWD_FEED         : SVD.Bit := 16#0#;
      --  disabel SWD
      SWD_DISABLE      : SVD.Bit := 16#0#;
      --  automatically feed swd when int comes
      SWD_AUTO_FEED_EN : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWD_CONF_Register use record
      SWD_RESET_FLAG   at 0 range 0 .. 0;
      SWD_FEED_INT     at 0 range 1 .. 1;
      Reserved_2_16    at 0 range 2 .. 16;
      SWD_BYPASS_RST   at 0 range 17 .. 17;
      SWD_SIGNAL_WIDTH at 0 range 18 .. 27;
      SWD_RST_FLAG_CLR at 0 range 28 .. 28;
      SWD_FEED         at 0 range 29 .. 29;
      SWD_DISABLE      at 0 range 30 .. 30;
      SWD_AUTO_FEED_EN at 0 range 31 .. 31;
   end record;

   --  configure cpu stall by sw
   type SW_CPU_STALL_Register is record
      --  unspecified
      Reserved_0_19      : SVD.UInt20 := 16#0#;
      --  {reg_sw_stall_appcpu_c1[5:0], reg_sw_stall_appcpu_c0[1:0]} == 0x86
      --  will stall APP CPU
      SW_STALL_APPCPU_C1 : SVD.UInt6 := 16#0#;
      --  {reg_sw_stall_appcpu_c1[5:0], reg_sw_stall_appcpu_c0[1:0]} == 0x86
      --  will stall APP CPU
      SW_STALL_PROCPU_C1 : SVD.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SW_CPU_STALL_Register use record
      Reserved_0_19      at 0 range 0 .. 19;
      SW_STALL_APPCPU_C1 at 0 range 20 .. 25;
      SW_STALL_PROCPU_C1 at 0 range 26 .. 31;
   end record;

   --  reserved register
   type LOW_POWER_ST_Register is record
      --  Read-only. rom0 power down
      XPD_ROM0               : SVD.Bit;
      --  unspecified
      Reserved_1_1           : SVD.Bit;
      --  Read-only. External DCDC power down
      XPD_DIG_DCDC           : SVD.Bit;
      --  Read-only. rtc peripheral iso
      PERI_ISO               : SVD.Bit;
      --  Read-only. rtc peripheral power down
      XPD_RTC_PERI           : SVD.Bit;
      --  Read-only. wifi iso
      WIFI_ISO               : SVD.Bit;
      --  Read-only. wifi wrap power down
      XPD_WIFI               : SVD.Bit;
      --  Read-only. digital wrap iso
      DIG_ISO                : SVD.Bit;
      --  Read-only. digital wrap power down
      XPD_DIG                : SVD.Bit;
      --  Read-only. touch should start to work
      TOUCH_STATE_START      : SVD.Bit;
      --  Read-only. touch is about to working. Switch rtc main state
      TOUCH_STATE_SWITCH     : SVD.Bit;
      --  Read-only. touch is in sleep state
      TOUCH_STATE_SLP        : SVD.Bit;
      --  Read-only. touch is done
      TOUCH_STATE_DONE       : SVD.Bit;
      --  Read-only. ulp/cocpu should start to work
      COCPU_STATE_START      : SVD.Bit;
      --  Read-only. ulp/cocpu is about to working. Switch rtc main state
      COCPU_STATE_SWITCH     : SVD.Bit;
      --  Read-only. ulp/cocpu is in sleep state
      COCPU_STATE_SLP        : SVD.Bit;
      --  Read-only. ulp/cocpu is done
      COCPU_STATE_DONE       : SVD.Bit;
      --  Read-only. no use any more
      MAIN_STATE_XTAL_ISO    : SVD.Bit;
      --  Read-only. rtc main state machine is in states that pll should be
      --  running
      MAIN_STATE_PLL_ON      : SVD.Bit;
      --  Read-only. rtc is ready to receive wake up trigger from wake up
      --  source
      RDY_FOR_WAKEUP         : SVD.Bit;
      --  Read-only. rtc main state machine has been waited for some cycles
      MAIN_STATE_WAIT_END    : SVD.Bit;
      --  Read-only. rtc main state machine is in the states of wakeup process
      IN_WAKEUP_STATE        : SVD.Bit;
      --  Read-only. rtc main state machine is in the states of low power
      IN_LOW_POWER_STATE     : SVD.Bit;
      --  Read-only. rtc main state machine is in wait 8m state
      MAIN_STATE_IN_WAIT_8M  : SVD.Bit;
      --  Read-only. rtc main state machine is in wait pll state
      MAIN_STATE_IN_WAIT_PLL : SVD.Bit;
      --  Read-only. rtc main state machine is in wait xtal state
      MAIN_STATE_IN_WAIT_XTL : SVD.Bit;
      --  Read-only. rtc main state machine is in sleep state
      MAIN_STATE_IN_SLP      : SVD.Bit;
      --  Read-only. rtc main state machine is in idle state
      MAIN_STATE_IN_IDLE     : SVD.Bit;
      --  Read-only. rtc main state machine status
      MAIN_STATE             : SVD.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOW_POWER_ST_Register use record
      XPD_ROM0               at 0 range 0 .. 0;
      Reserved_1_1           at 0 range 1 .. 1;
      XPD_DIG_DCDC           at 0 range 2 .. 2;
      PERI_ISO               at 0 range 3 .. 3;
      XPD_RTC_PERI           at 0 range 4 .. 4;
      WIFI_ISO               at 0 range 5 .. 5;
      XPD_WIFI               at 0 range 6 .. 6;
      DIG_ISO                at 0 range 7 .. 7;
      XPD_DIG                at 0 range 8 .. 8;
      TOUCH_STATE_START      at 0 range 9 .. 9;
      TOUCH_STATE_SWITCH     at 0 range 10 .. 10;
      TOUCH_STATE_SLP        at 0 range 11 .. 11;
      TOUCH_STATE_DONE       at 0 range 12 .. 12;
      COCPU_STATE_START      at 0 range 13 .. 13;
      COCPU_STATE_SWITCH     at 0 range 14 .. 14;
      COCPU_STATE_SLP        at 0 range 15 .. 15;
      COCPU_STATE_DONE       at 0 range 16 .. 16;
      MAIN_STATE_XTAL_ISO    at 0 range 17 .. 17;
      MAIN_STATE_PLL_ON      at 0 range 18 .. 18;
      RDY_FOR_WAKEUP         at 0 range 19 .. 19;
      MAIN_STATE_WAIT_END    at 0 range 20 .. 20;
      IN_WAKEUP_STATE        at 0 range 21 .. 21;
      IN_LOW_POWER_STATE     at 0 range 22 .. 22;
      MAIN_STATE_IN_WAIT_8M  at 0 range 23 .. 23;
      MAIN_STATE_IN_WAIT_PLL at 0 range 24 .. 24;
      MAIN_STATE_IN_WAIT_XTL at 0 range 25 .. 25;
      MAIN_STATE_IN_SLP      at 0 range 26 .. 26;
      MAIN_STATE_IN_IDLE     at 0 range 27 .. 27;
      MAIN_STATE             at 0 range 28 .. 31;
   end record;

   --  rtc pad hold configure
   type PAD_HOLD_Register is record
      --  hold rtc pad0
      TOUCH_PAD0_HOLD  : SVD.Bit := 16#0#;
      --  hold rtc pad-1
      TOUCH_PAD1_HOLD  : SVD.Bit := 16#0#;
      --  hold rtc pad-2
      TOUCH_PAD2_HOLD  : SVD.Bit := 16#0#;
      --  hold rtc pad-3
      TOUCH_PAD3_HOLD  : SVD.Bit := 16#0#;
      --  hold rtc pad-4
      TOUCH_PAD4_HOLD  : SVD.Bit := 16#0#;
      --  hold rtc pad-5
      TOUCH_PAD5_HOLD  : SVD.Bit := 16#0#;
      --  hold rtc pad-6
      TOUCH_PAD6_HOLD  : SVD.Bit := 16#0#;
      --  hold rtc pad-7
      TOUCH_PAD7_HOLD  : SVD.Bit := 16#0#;
      --  hold rtc pad-8
      TOUCH_PAD8_HOLD  : SVD.Bit := 16#0#;
      --  hold rtc pad-9
      TOUCH_PAD9_HOLD  : SVD.Bit := 16#0#;
      --  hold rtc pad-10
      TOUCH_PAD10_HOLD : SVD.Bit := 16#0#;
      --  hold rtc pad-11
      TOUCH_PAD11_HOLD : SVD.Bit := 16#0#;
      --  hold rtc pad-12
      TOUCH_PAD12_HOLD : SVD.Bit := 16#0#;
      --  hold rtc pad-13
      TOUCH_PAD13_HOLD : SVD.Bit := 16#0#;
      --  hold rtc pad-14
      TOUCH_PAD14_HOLD : SVD.Bit := 16#0#;
      --  hold rtc pad-15
      X32P_HOLD        : SVD.Bit := 16#0#;
      --  hold rtc pad-16
      X32N_HOLD        : SVD.Bit := 16#0#;
      --  hold rtc pad-17
      PDAC1_HOLD       : SVD.Bit := 16#0#;
      --  hold rtc pad-18
      PDAC2_HOLD       : SVD.Bit := 16#0#;
      --  hold rtc pad-19
      PAD19_HOLD       : SVD.Bit := 16#0#;
      --  hold rtc pad-20
      PAD20_HOLD       : SVD.Bit := 16#0#;
      --  hold rtc pad-21
      PAD21_HOLD       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_22_31   : SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAD_HOLD_Register use record
      TOUCH_PAD0_HOLD  at 0 range 0 .. 0;
      TOUCH_PAD1_HOLD  at 0 range 1 .. 1;
      TOUCH_PAD2_HOLD  at 0 range 2 .. 2;
      TOUCH_PAD3_HOLD  at 0 range 3 .. 3;
      TOUCH_PAD4_HOLD  at 0 range 4 .. 4;
      TOUCH_PAD5_HOLD  at 0 range 5 .. 5;
      TOUCH_PAD6_HOLD  at 0 range 6 .. 6;
      TOUCH_PAD7_HOLD  at 0 range 7 .. 7;
      TOUCH_PAD8_HOLD  at 0 range 8 .. 8;
      TOUCH_PAD9_HOLD  at 0 range 9 .. 9;
      TOUCH_PAD10_HOLD at 0 range 10 .. 10;
      TOUCH_PAD11_HOLD at 0 range 11 .. 11;
      TOUCH_PAD12_HOLD at 0 range 12 .. 12;
      TOUCH_PAD13_HOLD at 0 range 13 .. 13;
      TOUCH_PAD14_HOLD at 0 range 14 .. 14;
      X32P_HOLD        at 0 range 15 .. 15;
      X32N_HOLD        at 0 range 16 .. 16;
      PDAC1_HOLD       at 0 range 17 .. 17;
      PDAC2_HOLD       at 0 range 18 .. 18;
      PAD19_HOLD       at 0 range 19 .. 19;
      PAD20_HOLD       at 0 range 20 .. 20;
      PAD21_HOLD       at 0 range 21 .. 21;
      Reserved_22_31   at 0 range 22 .. 31;
   end record;

   --  configure ext1 wakeup
   type EXT_WAKEUP1_Register is record
      --  Bitmap to select RTC pads for ext wakeup1
      EXT_WAKEUP1_SEL        : SVD.UInt22 := 16#0#;
      --  Write-only. clear ext wakeup1 status
      EXT_WAKEUP1_STATUS_CLR : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_23_31         : SVD.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXT_WAKEUP1_Register use record
      EXT_WAKEUP1_SEL        at 0 range 0 .. 21;
      EXT_WAKEUP1_STATUS_CLR at 0 range 22 .. 22;
      Reserved_23_31         at 0 range 23 .. 31;
   end record;

   --  check ext wakeup1 status
   type EXT_WAKEUP1_STATUS_Register is record
      --  Read-only. ext wakeup1 status
      EXT_WAKEUP1_STATUS : SVD.UInt22;
      --  unspecified
      Reserved_22_31     : SVD.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXT_WAKEUP1_STATUS_Register use record
      EXT_WAKEUP1_STATUS at 0 range 0 .. 21;
      Reserved_22_31     at 0 range 22 .. 31;
   end record;

   --  congfigure brownout
   type BROWN_OUT_Register is record
      --  unspecified
      Reserved_0_3              : SVD.UInt4 := 16#0#;
      --  brown out interrupt wait cycles
      BROWN_OUT_INT_WAIT        : SVD.UInt10 := 16#1#;
      --  enable close flash when brown out happens
      BROWN_OUT_CLOSE_FLASH_ENA : SVD.Bit := 16#0#;
      --  enable power down RF when brown out happens
      BROWN_OUT_PD_RF_ENA       : SVD.Bit := 16#0#;
      --  brown out reset wait cycles
      BROWN_OUT_RST_WAIT        : SVD.UInt10 := 16#3FF#;
      --  enable brown out reset
      BROWN_OUT_RST_ENA         : SVD.Bit := 16#0#;
      --  1: 4-pos reset, 0: sys_reset
      BROWN_OUT_RST_SEL         : SVD.Bit := 16#0#;
      --  enable brown out reset en
      BROWN_OUT_ANA_RST_EN      : SVD.Bit := 16#0#;
      --  Write-only. clear brown out counter
      BROWN_OUT_CNT_CLR         : SVD.Bit := 16#0#;
      --  enable brown out
      BROWN_OUT_ENA             : SVD.Bit := 16#1#;
      --  Read-only. get brown out detect
      DET                       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BROWN_OUT_Register use record
      Reserved_0_3              at 0 range 0 .. 3;
      BROWN_OUT_INT_WAIT        at 0 range 4 .. 13;
      BROWN_OUT_CLOSE_FLASH_ENA at 0 range 14 .. 14;
      BROWN_OUT_PD_RF_ENA       at 0 range 15 .. 15;
      BROWN_OUT_RST_WAIT        at 0 range 16 .. 25;
      BROWN_OUT_RST_ENA         at 0 range 26 .. 26;
      BROWN_OUT_RST_SEL         at 0 range 27 .. 27;
      BROWN_OUT_ANA_RST_EN      at 0 range 28 .. 28;
      BROWN_OUT_CNT_CLR         at 0 range 29 .. 29;
      BROWN_OUT_ENA             at 0 range 30 .. 30;
      DET                       at 0 range 31 .. 31;
   end record;

   --  RTC timer high 16 bits
   type TIME_HIGH1_Register is record
      --  Read-only. RTC timer high 16 bits
      TIMER_VALUE1_HIGH : SVD.UInt16;
      --  unspecified
      Reserved_16_31    : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIME_HIGH1_Register use record
      TIMER_VALUE1_HIGH at 0 range 0 .. 15;
      Reserved_16_31    at 0 range 16 .. 31;
   end record;

   --  configure xtal32k
   type XTAL32K_CONF_Register is record
      --  cycles to wait to return noral xtal 32k
      XTAL32K_RETURN_WAIT  : SVD.UInt4 := 16#0#;
      --  cycles to wait to repower on xtal 32k
      XTAL32K_RESTART_WAIT : SVD.UInt16 := 16#0#;
      --  If no clock detected for this amount of time 32k is regarded as dead
      XTAL32K_WDT_TIMEOUT  : SVD.Byte := 16#FF#;
      --  if restarted xtal32k period is smaller than this, it is regarded as
      --  stable
      XTAL32K_STABLE_THRES : SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XTAL32K_CONF_Register use record
      XTAL32K_RETURN_WAIT  at 0 range 0 .. 3;
      XTAL32K_RESTART_WAIT at 0 range 4 .. 19;
      XTAL32K_WDT_TIMEOUT  at 0 range 20 .. 27;
      XTAL32K_STABLE_THRES at 0 range 28 .. 31;
   end record;

   --  configure ulp
   type ULP_CP_TIMER_Register is record
      --  ULP-coprocessor PC initial address
      ULP_CP_PC_INIT         : SVD.UInt11 := 16#0#;
      --  unspecified
      Reserved_11_28         : SVD.UInt18 := 16#0#;
      --  ULP-coprocessor wakeup by GPIO enable
      ULP_CP_GPIO_WAKEUP_ENA : SVD.Bit := 16#0#;
      --  Write-only. ULP-coprocessor wakeup by GPIO state clear
      ULP_CP_GPIO_WAKEUP_CLR : SVD.Bit := 16#0#;
      --  ULP-coprocessor timer enable bit
      ULP_CP_SLP_TIMER_EN    : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ULP_CP_TIMER_Register use record
      ULP_CP_PC_INIT         at 0 range 0 .. 10;
      Reserved_11_28         at 0 range 11 .. 28;
      ULP_CP_GPIO_WAKEUP_ENA at 0 range 29 .. 29;
      ULP_CP_GPIO_WAKEUP_CLR at 0 range 30 .. 30;
      ULP_CP_SLP_TIMER_EN    at 0 range 31 .. 31;
   end record;

   --  configure ulp
   type ULP_CP_CTRL_Register is record
      --  No public
      ULP_CP_MEM_ADDR_INIT   : SVD.UInt11 := 16#200#;
      --  No public
      ULP_CP_MEM_ADDR_SIZE   : SVD.UInt11 := 16#200#;
      --  Write-only. No public
      ULP_CP_MEM_OFFST_CLR   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_23_27         : SVD.UInt5 := 16#0#;
      --  ulp coprocessor clk force on
      ULP_CP_CLK_FO          : SVD.Bit := 16#0#;
      --  ulp coprocessor clk software reset
      ULP_CP_RESET           : SVD.Bit := 16#0#;
      --  1: ULP-coprocessor is started by SW
      ULP_CP_FORCE_START_TOP : SVD.Bit := 16#0#;
      --  Write 1 to start ULP-coprocessor
      ULP_CP_START_TOP       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ULP_CP_CTRL_Register use record
      ULP_CP_MEM_ADDR_INIT   at 0 range 0 .. 10;
      ULP_CP_MEM_ADDR_SIZE   at 0 range 11 .. 21;
      ULP_CP_MEM_OFFST_CLR   at 0 range 22 .. 22;
      Reserved_23_27         at 0 range 23 .. 27;
      ULP_CP_CLK_FO          at 0 range 28 .. 28;
      ULP_CP_RESET           at 0 range 29 .. 29;
      ULP_CP_FORCE_START_TOP at 0 range 30 .. 30;
      ULP_CP_START_TOP       at 0 range 31 .. 31;
   end record;

   --  configure ulp-riscv
   type COCPU_CTRL_Register is record
      --  cocpu clk force on
      COCPU_CLK_FO            : SVD.Bit := 16#0#;
      --  time from start cocpu to pull down reset
      COCPU_START_2_RESET_DIS : SVD.UInt6 := 16#8#;
      --  time from start cocpu to give start interrupt
      COCPU_START_2_INTR_EN   : SVD.UInt6 := 16#10#;
      --  to shut cocpu
      COCPU_SHUT              : SVD.Bit := 16#0#;
      --  time from shut cocpu to disable clk
      COCPU_SHUT_2_CLK_DIS    : SVD.Byte := 16#28#;
      --  to reset cocpu
      COCPU_SHUT_RESET_EN     : SVD.Bit := 16#0#;
      --  1: old ULP 0: new riscV
      COCPU_SEL               : SVD.Bit := 16#1#;
      --  1: select riscv done 0: select ulp done
      COCPU_DONE_FORCE        : SVD.Bit := 16#0#;
      --  done signal used by riscv to control timer.
      COCPU_DONE              : SVD.Bit := 16#0#;
      --  Write-only. trigger cocpu register interrupt
      COCPU_SW_INT_TRIGGER    : SVD.Bit := 16#0#;
      --  open ulp-riscv clk gate
      COCPU_CLKGATE_EN        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_28_31          : SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COCPU_CTRL_Register use record
      COCPU_CLK_FO            at 0 range 0 .. 0;
      COCPU_START_2_RESET_DIS at 0 range 1 .. 6;
      COCPU_START_2_INTR_EN   at 0 range 7 .. 12;
      COCPU_SHUT              at 0 range 13 .. 13;
      COCPU_SHUT_2_CLK_DIS    at 0 range 14 .. 21;
      COCPU_SHUT_RESET_EN     at 0 range 22 .. 22;
      COCPU_SEL               at 0 range 23 .. 23;
      COCPU_DONE_FORCE        at 0 range 24 .. 24;
      COCPU_DONE              at 0 range 25 .. 25;
      COCPU_SW_INT_TRIGGER    at 0 range 26 .. 26;
      COCPU_CLKGATE_EN        at 0 range 27 .. 27;
      Reserved_28_31          at 0 range 28 .. 31;
   end record;

   --  configure touch controller
   type TOUCH_CTRL1_Register is record
      --  sleep cycles for timer
      TOUCH_SLEEP_CYCLES : SVD.UInt16 := 16#100#;
      --  the meas length (in 8MHz)
      TOUCH_MEAS_NUM     : SVD.UInt16 := 16#1000#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOUCH_CTRL1_Register use record
      TOUCH_SLEEP_CYCLES at 0 range 0 .. 15;
      TOUCH_MEAS_NUM     at 0 range 16 .. 31;
   end record;

   --  configure touch controller
   type TOUCH_CTRL2_Register is record
      --  unspecified
      Reserved_0_1           : SVD.UInt2 := 16#0#;
      --  TOUCH_DRANGE
      TOUCH_DRANGE           : SVD.UInt2 := 16#3#;
      --  TOUCH_DREFL
      TOUCH_DREFL            : SVD.UInt2 := 16#0#;
      --  TOUCH_DREFH
      TOUCH_DREFH            : SVD.UInt2 := 16#3#;
      --  TOUCH_XPD_BIAS
      TOUCH_XPD_BIAS         : SVD.Bit := 16#0#;
      --  TOUCH pad0 reference cap
      TOUCH_REFC             : SVD.UInt3 := 16#0#;
      --  1:use self bias 0:use bandgap bias
      TOUCH_DBIAS            : SVD.Bit := 16#0#;
      --  touch timer enable bit
      TOUCH_SLP_TIMER_EN     : SVD.Bit := 16#0#;
      --  1: TOUCH_START & TOUCH_XPD is controlled by touch fsm
      TOUCH_START_FSM_EN     : SVD.Bit := 16#1#;
      --  1: start touch fsm
      TOUCH_START_EN         : SVD.Bit := 16#0#;
      --  1: to start touch fsm by SW
      TOUCH_START_FORCE      : SVD.Bit := 16#0#;
      --  the waiting cycles (in 8MHz) between TOUCH_START and TOUCH_XPD
      TOUCH_XPD_WAIT         : SVD.Byte := 16#4#;
      --  when a touch pad is active sleep cycle could be divided by this
      --  number
      TOUCH_SLP_CYC_DIV      : SVD.UInt2 := 16#0#;
      --  force touch timer done
      TOUCH_TIMER_FORCE_DONE : SVD.UInt2 := 16#0#;
      --  reset upgrade touch
      TOUCH_RESET            : SVD.Bit := 16#0#;
      --  touch clock force on
      TOUCH_CLK_FO           : SVD.Bit := 16#0#;
      --  touch clock enable
      TOUCH_CLKGATE_EN       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOUCH_CTRL2_Register use record
      Reserved_0_1           at 0 range 0 .. 1;
      TOUCH_DRANGE           at 0 range 2 .. 3;
      TOUCH_DREFL            at 0 range 4 .. 5;
      TOUCH_DREFH            at 0 range 6 .. 7;
      TOUCH_XPD_BIAS         at 0 range 8 .. 8;
      TOUCH_REFC             at 0 range 9 .. 11;
      TOUCH_DBIAS            at 0 range 12 .. 12;
      TOUCH_SLP_TIMER_EN     at 0 range 13 .. 13;
      TOUCH_START_FSM_EN     at 0 range 14 .. 14;
      TOUCH_START_EN         at 0 range 15 .. 15;
      TOUCH_START_FORCE      at 0 range 16 .. 16;
      TOUCH_XPD_WAIT         at 0 range 17 .. 24;
      TOUCH_SLP_CYC_DIV      at 0 range 25 .. 26;
      TOUCH_TIMER_FORCE_DONE at 0 range 27 .. 28;
      TOUCH_RESET            at 0 range 29 .. 29;
      TOUCH_CLK_FO           at 0 range 30 .. 30;
      TOUCH_CLKGATE_EN       at 0 range 31 .. 31;
   end record;

   --  configure touch controller
   type TOUCH_SCAN_CTRL_Register is record
      --  De-noise resolution: 12/10/8/4 bit
      TOUCH_DENOISE_RES         : SVD.UInt2 := 16#2#;
      --  touch pad0 will be used to de-noise
      TOUCH_DENOISE_EN          : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_3_7              : SVD.UInt5 := 16#0#;
      --  inactive touch pads connect to 1: gnd 0: HighZ
      TOUCH_INACTIVE_CONNECTION : SVD.Bit := 16#1#;
      --  touch pad14 will be used as shield
      TOUCH_SHIELD_PAD_EN       : SVD.Bit := 16#0#;
      --  touch scan mode pad enable map
      TOUCH_SCAN_PAD_MAP        : SVD.UInt15 := 16#0#;
      --  touch7 buffer driver strength
      TOUCH_BUFDRV              : SVD.UInt3 := 16#0#;
      --  select out ring pad
      TOUCH_OUT_RING            : SVD.UInt4 := 16#F#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOUCH_SCAN_CTRL_Register use record
      TOUCH_DENOISE_RES         at 0 range 0 .. 1;
      TOUCH_DENOISE_EN          at 0 range 2 .. 2;
      Reserved_3_7              at 0 range 3 .. 7;
      TOUCH_INACTIVE_CONNECTION at 0 range 8 .. 8;
      TOUCH_SHIELD_PAD_EN       at 0 range 9 .. 9;
      TOUCH_SCAN_PAD_MAP        at 0 range 10 .. 24;
      TOUCH_BUFDRV              at 0 range 25 .. 27;
      TOUCH_OUT_RING            at 0 range 28 .. 31;
   end record;

   --  configure touch controller
   type TOUCH_SLP_THRES_Register is record
      --  the threshold for sleep touch pad
      TOUCH_SLP_TH          : SVD.UInt22 := 16#0#;
      --  unspecified
      Reserved_22_25        : SVD.UInt4 := 16#0#;
      --  sleep pad approach function enable
      TOUCH_SLP_APPROACH_EN : SVD.Bit := 16#0#;
      --  configure which pad as slp pad
      TOUCH_SLP_PAD         : SVD.UInt5 := 16#F#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOUCH_SLP_THRES_Register use record
      TOUCH_SLP_TH          at 0 range 0 .. 21;
      Reserved_22_25        at 0 range 22 .. 25;
      TOUCH_SLP_APPROACH_EN at 0 range 26 .. 26;
      TOUCH_SLP_PAD         at 0 range 27 .. 31;
   end record;

   --  configure touch controller
   type TOUCH_APPROACH_Register is record
      --  unspecified
      Reserved_0_22            : SVD.UInt23 := 16#0#;
      --  Write-only. clear touch slp channel
      TOUCH_SLP_CHANNEL_CLR    : SVD.Bit := 16#0#;
      --  approach pads total meas times
      TOUCH_APPROACH_MEAS_TIME : SVD.Byte := 16#50#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOUCH_APPROACH_Register use record
      Reserved_0_22            at 0 range 0 .. 22;
      TOUCH_SLP_CHANNEL_CLR    at 0 range 23 .. 23;
      TOUCH_APPROACH_MEAS_TIME at 0 range 24 .. 31;
   end record;

   --  configure touch controller
   type TOUCH_FILTER_CTRL_Register is record
      --  unspecified
      Reserved_0_6                 : SVD.UInt7 := 16#0#;
      --  bypass neg noise thres
      TOUCH_BYPASS_NEG_NOISE_THRES : SVD.Bit := 16#0#;
      --  bypaas noise thres
      TOUCH_BYPASS_NOISE_THRES     : SVD.Bit := 16#0#;
      --  smooth filter factor
      TOUCH_SMOOTH_LVL             : SVD.UInt2 := 16#0#;
      --  touch jitter step
      TOUCH_JITTER_STEP            : SVD.UInt4 := 16#1#;
      --  negative threshold counter limit
      TOUCH_NEG_NOISE_LIMIT        : SVD.UInt4 := 16#5#;
      --  neg noise thres
      TOUCH_NEG_NOISE_THRES        : SVD.UInt2 := 16#1#;
      --  noise thres
      TOUCH_NOISE_THRES            : SVD.UInt2 := 16#1#;
      --  hysteresis
      TOUCH_HYSTERESIS             : SVD.UInt2 := 16#1#;
      --  debounce counter
      TOUCH_DEBOUNCE               : SVD.UInt3 := 16#3#;
      --  0: IIR ? 1: IIR ? 2: IIR 1/8 3: Jitter
      TOUCH_FILTER_MODE            : SVD.UInt3 := 16#1#;
      --  touch filter enable
      TOUCH_FILTER_EN              : SVD.Bit := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOUCH_FILTER_CTRL_Register use record
      Reserved_0_6                 at 0 range 0 .. 6;
      TOUCH_BYPASS_NEG_NOISE_THRES at 0 range 7 .. 7;
      TOUCH_BYPASS_NOISE_THRES     at 0 range 8 .. 8;
      TOUCH_SMOOTH_LVL             at 0 range 9 .. 10;
      TOUCH_JITTER_STEP            at 0 range 11 .. 14;
      TOUCH_NEG_NOISE_LIMIT        at 0 range 15 .. 18;
      TOUCH_NEG_NOISE_THRES        at 0 range 19 .. 20;
      TOUCH_NOISE_THRES            at 0 range 21 .. 22;
      TOUCH_HYSTERESIS             at 0 range 23 .. 24;
      TOUCH_DEBOUNCE               at 0 range 25 .. 27;
      TOUCH_FILTER_MODE            at 0 range 28 .. 30;
      TOUCH_FILTER_EN              at 0 range 31 .. 31;
   end record;

   --  usb configure
   type USB_CONF_Register is record
      --  reg_usb_vrefh
      USB_VREFH               : SVD.UInt2 := 16#0#;
      --  reg_usb_vrefl
      USB_VREFL               : SVD.UInt2 := 16#0#;
      --  reg_usb_vref_override
      USB_VREF_OVERRIDE       : SVD.Bit := 16#0#;
      --  reg_usb_pad_pull_override
      USB_PAD_PULL_OVERRIDE   : SVD.Bit := 16#0#;
      --  reg_usb_dp_pullup
      USB_DP_PULLUP           : SVD.Bit := 16#0#;
      --  reg_usb_dp_pulldown
      USB_DP_PULLDOWN         : SVD.Bit := 16#0#;
      --  reg_usb_dm_pullup
      USB_DM_PULLUP           : SVD.Bit := 16#0#;
      --  reg_usb_dm_pulldown
      USB_DM_PULLDOWN         : SVD.Bit := 16#0#;
      --  reg_usb_pullup_value
      USB_PULLUP_VALUE        : SVD.Bit := 16#0#;
      --  reg_usb_pad_enable_override
      USB_PAD_ENABLE_OVERRIDE : SVD.Bit := 16#0#;
      --  reg_usb_pad_enable
      USB_PAD_ENABLE          : SVD.Bit := 16#0#;
      --  reg_usb_txm
      USB_TXM                 : SVD.Bit := 16#0#;
      --  reg_usb_txp
      USB_TXP                 : SVD.Bit := 16#0#;
      --  reg_usb_tx_en
      USB_TX_EN               : SVD.Bit := 16#0#;
      --  reg_usb_tx_en_override
      USB_TX_EN_OVERRIDE      : SVD.Bit := 16#0#;
      --  reg_usb_reset_disable
      USB_RESET_DISABLE       : SVD.Bit := 16#0#;
      --  reg_io_mux_reset_disable
      IO_MUX_RESET_DISABLE    : SVD.Bit := 16#0#;
      --  reg_sw_usb_phy_sel
      SW_USB_PHY_SEL          : SVD.Bit := 16#0#;
      --  reg_sw_hw_usb_phy_sel
      SW_HW_USB_PHY_SEL       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_21_31          : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USB_CONF_Register use record
      USB_VREFH               at 0 range 0 .. 1;
      USB_VREFL               at 0 range 2 .. 3;
      USB_VREF_OVERRIDE       at 0 range 4 .. 4;
      USB_PAD_PULL_OVERRIDE   at 0 range 5 .. 5;
      USB_DP_PULLUP           at 0 range 6 .. 6;
      USB_DP_PULLDOWN         at 0 range 7 .. 7;
      USB_DM_PULLUP           at 0 range 8 .. 8;
      USB_DM_PULLDOWN         at 0 range 9 .. 9;
      USB_PULLUP_VALUE        at 0 range 10 .. 10;
      USB_PAD_ENABLE_OVERRIDE at 0 range 11 .. 11;
      USB_PAD_ENABLE          at 0 range 12 .. 12;
      USB_TXM                 at 0 range 13 .. 13;
      USB_TXP                 at 0 range 14 .. 14;
      USB_TX_EN               at 0 range 15 .. 15;
      USB_TX_EN_OVERRIDE      at 0 range 16 .. 16;
      USB_RESET_DISABLE       at 0 range 17 .. 17;
      IO_MUX_RESET_DISABLE    at 0 range 18 .. 18;
      SW_USB_PHY_SEL          at 0 range 19 .. 19;
      SW_HW_USB_PHY_SEL       at 0 range 20 .. 20;
      Reserved_21_31          at 0 range 21 .. 31;
   end record;

   --  configure touch controller
   type TOUCH_TIMEOUT_CTRL_Register is record
      --  configure touch timerout time
      TOUCH_TIMEOUT_NUM : SVD.UInt22 := 16#3FFFFF#;
      --  enable touch timerout
      TOUCH_TIMEOUT_EN  : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_23_31    : SVD.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOUCH_TIMEOUT_CTRL_Register use record
      TOUCH_TIMEOUT_NUM at 0 range 0 .. 21;
      TOUCH_TIMEOUT_EN  at 0 range 22 .. 22;
      Reserved_23_31    at 0 range 23 .. 31;
   end record;

   --  get reject casue
   type SLP_REJECT_CAUSE_Register is record
      --  Read-only. sleep reject cause
      REJECT_CAUSE   : SVD.UInt18;
      --  unspecified
      Reserved_18_31 : SVD.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_REJECT_CAUSE_Register use record
      REJECT_CAUSE   at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  rtc common configure
   type OPTION1_Register is record
      --  force chip entry download boot by sw
      FORCE_DOWNLOAD_BOOT : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_1_31       : SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPTION1_Register use record
      FORCE_DOWNLOAD_BOOT at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   --  get wakeup cause
   type SLP_WAKEUP_CAUSE_Register is record
      --  Read-only. sleep wakeup cause
      WAKEUP_CAUSE   : SVD.UInt17;
      --  unspecified
      Reserved_17_31 : SVD.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLP_WAKEUP_CAUSE_Register use record
      WAKEUP_CAUSE   at 0 range 0 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  configure ulp sleep time
   type ULP_CP_TIMER_1_Register is record
      --  unspecified
      Reserved_0_7           : SVD.Byte := 16#0#;
      --  sleep cycles for ULP-coprocessor timer
      ULP_CP_TIMER_SLP_CYCLE : SVD.UInt24 := 16#C8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ULP_CP_TIMER_1_Register use record
      Reserved_0_7           at 0 range 0 .. 7;
      ULP_CP_TIMER_SLP_CYCLE at 0 range 8 .. 31;
   end record;

   --  oneset rtc interrupt
   type INT_ENA_RTC_W1TS_Register is record
      --  Write-only. enable sleep wakeup interrupt
      SLP_WAKEUP_INT_ENA_W1TS               : SVD.Bit := 16#0#;
      --  Write-only. enable sleep reject interrupt
      SLP_REJECT_INT_ENA_W1TS               : SVD.Bit := 16#0#;
      --  Write-only. enable SDIO idle interrupt
      SDIO_IDLE_INT_ENA_W1TS                : SVD.Bit := 16#0#;
      --  Write-only. enable RTC WDT interrupt
      WDT_INT_ENA_W1TS                      : SVD.Bit := 16#0#;
      --  Write-only. enable touch scan done interrupt
      TOUCH_SCAN_DONE_INT_ENA_W1TS          : SVD.Bit := 16#0#;
      --  Write-only. enable ULP-coprocessor interrupt
      ULP_CP_INT_ENA_W1TS                   : SVD.Bit := 16#0#;
      --  Write-only. enable touch done interrupt
      TOUCH_DONE_INT_ENA_W1TS               : SVD.Bit := 16#0#;
      --  Write-only. enable touch active interrupt
      TOUCH_ACTIVE_INT_ENA_W1TS             : SVD.Bit := 16#0#;
      --  Write-only. enable touch inactive interrupt
      TOUCH_INACTIVE_INT_ENA_W1TS           : SVD.Bit := 16#0#;
      --  Write-only. enable brown out interrupt
      BROWN_OUT_INT_ENA_W1TS                : SVD.Bit := 16#0#;
      --  Write-only. enable RTC main timer interrupt
      MAIN_TIMER_INT_ENA_W1TS               : SVD.Bit := 16#0#;
      --  Write-only. enable saradc1 interrupt
      SARADC1_INT_ENA_W1TS                  : SVD.Bit := 16#0#;
      --  Write-only. enable tsens interrupt
      TSENS_INT_ENA_W1TS                    : SVD.Bit := 16#0#;
      --  Write-only. enable riscV cocpu interrupt
      COCPU_INT_ENA_W1TS                    : SVD.Bit := 16#0#;
      --  Write-only. enable saradc2 interrupt
      SARADC2_INT_ENA_W1TS                  : SVD.Bit := 16#0#;
      --  Write-only. enable super watch dog interrupt
      SWD_INT_ENA_W1TS                      : SVD.Bit := 16#0#;
      --  Write-only. enable xtal32k_dead interrupt
      XTAL32K_DEAD_INT_ENA_W1TS             : SVD.Bit := 16#0#;
      --  Write-only. enable cocpu trap interrupt
      COCPU_TRAP_INT_ENA_W1TS               : SVD.Bit := 16#0#;
      --  Write-only. enable touch timeout interrupt
      TOUCH_TIMEOUT_INT_ENA_W1TS            : SVD.Bit := 16#0#;
      --  Write-only. enbale gitch det interrupt
      GLITCH_DET_INT_ENA_W1TS               : SVD.Bit := 16#0#;
      --  Write-only. enbale touch approach_loop done interrupt
      TOUCH_APPROACH_LOOP_DONE_INT_ENA_W1TS : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_21_31                        : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_RTC_W1TS_Register use record
      SLP_WAKEUP_INT_ENA_W1TS               at 0 range 0 .. 0;
      SLP_REJECT_INT_ENA_W1TS               at 0 range 1 .. 1;
      SDIO_IDLE_INT_ENA_W1TS                at 0 range 2 .. 2;
      WDT_INT_ENA_W1TS                      at 0 range 3 .. 3;
      TOUCH_SCAN_DONE_INT_ENA_W1TS          at 0 range 4 .. 4;
      ULP_CP_INT_ENA_W1TS                   at 0 range 5 .. 5;
      TOUCH_DONE_INT_ENA_W1TS               at 0 range 6 .. 6;
      TOUCH_ACTIVE_INT_ENA_W1TS             at 0 range 7 .. 7;
      TOUCH_INACTIVE_INT_ENA_W1TS           at 0 range 8 .. 8;
      BROWN_OUT_INT_ENA_W1TS                at 0 range 9 .. 9;
      MAIN_TIMER_INT_ENA_W1TS               at 0 range 10 .. 10;
      SARADC1_INT_ENA_W1TS                  at 0 range 11 .. 11;
      TSENS_INT_ENA_W1TS                    at 0 range 12 .. 12;
      COCPU_INT_ENA_W1TS                    at 0 range 13 .. 13;
      SARADC2_INT_ENA_W1TS                  at 0 range 14 .. 14;
      SWD_INT_ENA_W1TS                      at 0 range 15 .. 15;
      XTAL32K_DEAD_INT_ENA_W1TS             at 0 range 16 .. 16;
      COCPU_TRAP_INT_ENA_W1TS               at 0 range 17 .. 17;
      TOUCH_TIMEOUT_INT_ENA_W1TS            at 0 range 18 .. 18;
      GLITCH_DET_INT_ENA_W1TS               at 0 range 19 .. 19;
      TOUCH_APPROACH_LOOP_DONE_INT_ENA_W1TS at 0 range 20 .. 20;
      Reserved_21_31                        at 0 range 21 .. 31;
   end record;

   --  oneset clr rtc interrupt enable
   type INT_ENA_RTC_W1TC_Register is record
      --  Write-only. enable sleep wakeup interrupt
      SLP_WAKEUP_INT_ENA_W1TC               : SVD.Bit := 16#0#;
      --  Write-only. enable sleep reject interrupt
      SLP_REJECT_INT_ENA_W1TC               : SVD.Bit := 16#0#;
      --  Write-only. enable SDIO idle interrupt
      SDIO_IDLE_INT_ENA_W1TC                : SVD.Bit := 16#0#;
      --  Write-only. enable RTC WDT interrupt
      WDT_INT_ENA_W1TC                      : SVD.Bit := 16#0#;
      --  Write-only. enable touch scan done interrupt
      TOUCH_SCAN_DONE_INT_ENA_W1TC          : SVD.Bit := 16#0#;
      --  Write-only. enable ULP-coprocessor interrupt
      ULP_CP_INT_ENA_W1TC                   : SVD.Bit := 16#0#;
      --  Write-only. enable touch done interrupt
      TOUCH_DONE_INT_ENA_W1TC               : SVD.Bit := 16#0#;
      --  Write-only. enable touch active interrupt
      TOUCH_ACTIVE_INT_ENA_W1TC             : SVD.Bit := 16#0#;
      --  Write-only. enable touch inactive interrupt
      TOUCH_INACTIVE_INT_ENA_W1TC           : SVD.Bit := 16#0#;
      --  Write-only. enable brown out interrupt
      BROWN_OUT_INT_ENA_W1TC                : SVD.Bit := 16#0#;
      --  Write-only. enable RTC main timer interrupt
      MAIN_TIMER_INT_ENA_W1TC               : SVD.Bit := 16#0#;
      --  Write-only. enable saradc1 interrupt
      SARADC1_INT_ENA_W1TC                  : SVD.Bit := 16#0#;
      --  Write-only. enable tsens interrupt
      TSENS_INT_ENA_W1TC                    : SVD.Bit := 16#0#;
      --  Write-only. enable riscV cocpu interrupt
      COCPU_INT_ENA_W1TC                    : SVD.Bit := 16#0#;
      --  Write-only. enable saradc2 interrupt
      SARADC2_INT_ENA_W1TC                  : SVD.Bit := 16#0#;
      --  Write-only. enable super watch dog interrupt
      SWD_INT_ENA_W1TC                      : SVD.Bit := 16#0#;
      --  Write-only. enable xtal32k_dead interrupt
      XTAL32K_DEAD_INT_ENA_W1TC             : SVD.Bit := 16#0#;
      --  Write-only. enable cocpu trap interrupt
      COCPU_TRAP_INT_ENA_W1TC               : SVD.Bit := 16#0#;
      --  Write-only. enable touch timeout interrupt
      TOUCH_TIMEOUT_INT_ENA_W1TC            : SVD.Bit := 16#0#;
      --  Write-only. enbale gitch det interrupt
      GLITCH_DET_INT_ENA_W1TC               : SVD.Bit := 16#0#;
      --  Write-only. enbale touch approach_loop done interrupt
      TOUCH_APPROACH_LOOP_DONE_INT_ENA_W1TC : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_21_31                        : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_RTC_W1TC_Register use record
      SLP_WAKEUP_INT_ENA_W1TC               at 0 range 0 .. 0;
      SLP_REJECT_INT_ENA_W1TC               at 0 range 1 .. 1;
      SDIO_IDLE_INT_ENA_W1TC                at 0 range 2 .. 2;
      WDT_INT_ENA_W1TC                      at 0 range 3 .. 3;
      TOUCH_SCAN_DONE_INT_ENA_W1TC          at 0 range 4 .. 4;
      ULP_CP_INT_ENA_W1TC                   at 0 range 5 .. 5;
      TOUCH_DONE_INT_ENA_W1TC               at 0 range 6 .. 6;
      TOUCH_ACTIVE_INT_ENA_W1TC             at 0 range 7 .. 7;
      TOUCH_INACTIVE_INT_ENA_W1TC           at 0 range 8 .. 8;
      BROWN_OUT_INT_ENA_W1TC                at 0 range 9 .. 9;
      MAIN_TIMER_INT_ENA_W1TC               at 0 range 10 .. 10;
      SARADC1_INT_ENA_W1TC                  at 0 range 11 .. 11;
      TSENS_INT_ENA_W1TC                    at 0 range 12 .. 12;
      COCPU_INT_ENA_W1TC                    at 0 range 13 .. 13;
      SARADC2_INT_ENA_W1TC                  at 0 range 14 .. 14;
      SWD_INT_ENA_W1TC                      at 0 range 15 .. 15;
      XTAL32K_DEAD_INT_ENA_W1TC             at 0 range 16 .. 16;
      COCPU_TRAP_INT_ENA_W1TC               at 0 range 17 .. 17;
      TOUCH_TIMEOUT_INT_ENA_W1TC            at 0 range 18 .. 18;
      GLITCH_DET_INT_ENA_W1TC               at 0 range 19 .. 19;
      TOUCH_APPROACH_LOOP_DONE_INT_ENA_W1TC at 0 range 20 .. 20;
      Reserved_21_31                        at 0 range 21 .. 31;
   end record;

   --  configure retention
   type RETENTION_CTRL_Register is record
      --  unspecified
      Reserved_0_9          : SVD.UInt10 := 16#0#;
      --  No public
      RETENTION_TAG_MODE    : SVD.UInt4 := 16#0#;
      --  congfigure retention target cpu and/or tag
      RETENTION_TARGET      : SVD.UInt2 := 16#0#;
      --  No public
      RETENTION_CLK_SEL     : SVD.Bit := 16#0#;
      --  wait retention done cycle
      RETENTION_DONE_WAIT   : SVD.UInt3 := 16#2#;
      --  wait clk off cycle
      RETENTION_CLKOFF_WAIT : SVD.UInt4 := 16#3#;
      --  enable retention
      RETENTION_EN          : SVD.Bit := 16#0#;
      --  wait cycles for rention operation
      RETENTION_WAIT        : SVD.UInt7 := 16#14#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RETENTION_CTRL_Register use record
      Reserved_0_9          at 0 range 0 .. 9;
      RETENTION_TAG_MODE    at 0 range 10 .. 13;
      RETENTION_TARGET      at 0 range 14 .. 15;
      RETENTION_CLK_SEL     at 0 range 16 .. 16;
      RETENTION_DONE_WAIT   at 0 range 17 .. 19;
      RETENTION_CLKOFF_WAIT at 0 range 20 .. 23;
      RETENTION_EN          at 0 range 24 .. 24;
      RETENTION_WAIT        at 0 range 25 .. 31;
   end record;

   --  configure power glitch
   type PG_CTRL_Register is record
      --  unspecified
      Reserved_0_25          : SVD.UInt26 := 16#0#;
      --  GLITCH_DSENSE
      POWER_GLITCH_DSENSE    : SVD.UInt2 := 16#0#;
      --  force power glitch disable
      POWER_GLITCH_FORCE_PD  : SVD.Bit := 16#0#;
      --  force power glitch enable
      POWER_GLITCH_FORCE_PU  : SVD.Bit := 16#0#;
      --  select use analog fib signal
      POWER_GLITCH_EFUSE_SEL : SVD.Bit := 16#0#;
      --  enable power glitch
      POWER_GLITCH_EN        : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PG_CTRL_Register use record
      Reserved_0_25          at 0 range 0 .. 25;
      POWER_GLITCH_DSENSE    at 0 range 26 .. 27;
      POWER_GLITCH_FORCE_PD  at 0 range 28 .. 28;
      POWER_GLITCH_FORCE_PU  at 0 range 29 .. 29;
      POWER_GLITCH_EFUSE_SEL at 0 range 30 .. 30;
      POWER_GLITCH_EN        at 0 range 31 .. 31;
   end record;

   --  No public
   type FIB_SEL_Register is record
      --  No public
      FIB_SEL       : SVD.UInt3 := 16#7#;
      --  unspecified
      Reserved_3_31 : SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIB_SEL_Register use record
      FIB_SEL       at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  configure touch dac
   type TOUCH_DAC_Register is record
      --  unspecified
      Reserved_0_1   : SVD.UInt2 := 16#0#;
      --  configure touch pad dac9
      TOUCH_PAD9_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac8
      TOUCH_PAD8_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac7
      TOUCH_PAD7_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac6
      TOUCH_PAD6_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac5
      TOUCH_PAD5_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac4
      TOUCH_PAD4_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac3
      TOUCH_PAD3_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac2
      TOUCH_PAD2_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac1
      TOUCH_PAD1_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac0
      TOUCH_PAD0_DAC : SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOUCH_DAC_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      TOUCH_PAD9_DAC at 0 range 2 .. 4;
      TOUCH_PAD8_DAC at 0 range 5 .. 7;
      TOUCH_PAD7_DAC at 0 range 8 .. 10;
      TOUCH_PAD6_DAC at 0 range 11 .. 13;
      TOUCH_PAD5_DAC at 0 range 14 .. 16;
      TOUCH_PAD4_DAC at 0 range 17 .. 19;
      TOUCH_PAD3_DAC at 0 range 20 .. 22;
      TOUCH_PAD2_DAC at 0 range 23 .. 25;
      TOUCH_PAD1_DAC at 0 range 26 .. 28;
      TOUCH_PAD0_DAC at 0 range 29 .. 31;
   end record;

   --  configure touch dac
   type TOUCH_DAC1_Register is record
      --  unspecified
      Reserved_0_16   : SVD.UInt17 := 16#0#;
      --  configure touch pad dac14
      TOUCH_PAD14_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac13
      TOUCH_PAD13_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac12
      TOUCH_PAD12_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac11
      TOUCH_PAD11_DAC : SVD.UInt3 := 16#0#;
      --  configure touch pad dac10
      TOUCH_PAD10_DAC : SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOUCH_DAC1_Register use record
      Reserved_0_16   at 0 range 0 .. 16;
      TOUCH_PAD14_DAC at 0 range 17 .. 19;
      TOUCH_PAD13_DAC at 0 range 20 .. 22;
      TOUCH_PAD12_DAC at 0 range 23 .. 25;
      TOUCH_PAD11_DAC at 0 range 26 .. 28;
      TOUCH_PAD10_DAC at 0 range 29 .. 31;
   end record;

   --  configure ulp diable
   type COCPU_DISABLE_Register is record
      --  unspecified
      Reserved_0_30   : SVD.UInt31 := 16#0#;
      --  configure ulp diable
      DISABLE_RTC_CPU : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COCPU_DISABLE_Register use record
      Reserved_0_30   at 0 range 0 .. 30;
      DISABLE_RTC_CPU at 0 range 31 .. 31;
   end record;

   --  version register
   type DATE_Register is record
      --  version register
      DATE           : SVD.UInt28 := 16#2101271#;
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

   --  Real-Time Clock Control
   type RTC_CNTL_Peripheral is record
      --  RTC common configure register
      OPTIONS0           : aliased OPTIONS0_Register;
      --  configure min sleep time
      SLP_TIMER0         : aliased SVD.UInt32;
      --  configure sleep time hi
      SLP_TIMER1         : aliased SLP_TIMER1_Register;
      --  update rtc main timer
      TIME_UPDATE        : aliased TIME_UPDATE_Register;
      --  read rtc_main timer low bits
      TIME_LOW0          : aliased SVD.UInt32;
      --  read rtc_main timer high bits
      TIME_HIGH0         : aliased TIME_HIGH0_Register;
      --  configure chip sleep
      STATE0             : aliased STATE0_Register;
      --  rtc state wait time
      TIMER1             : aliased TIMER1_Register;
      --  rtc monitor state delay time
      TIMER2             : aliased TIMER2_Register;
      --  No public
      TIMER3             : aliased TIMER3_Register;
      --  No public
      TIMER4             : aliased TIMER4_Register;
      --  configure min sleep time
      TIMER5             : aliased TIMER5_Register;
      --  No public
      TIMER6             : aliased TIMER6_Register;
      --  analog configure register
      ANA_CONF           : aliased ANA_CONF_Register;
      --  get reset state
      RESET_STATE        : aliased RESET_STATE_Register;
      --  configure wakeup state
      WAKEUP_STATE       : aliased WAKEUP_STATE_Register;
      --  configure rtc interrupt register
      INT_ENA_RTC        : aliased INT_ENA_RTC_Register;
      --  rtc interrupt register
      INT_RAW_RTC        : aliased INT_RAW_RTC_Register;
      --  rtc interrupt register
      INT_ST_RTC         : aliased INT_ST_RTC_Register;
      --  rtc interrupt register
      INT_CLR_RTC        : aliased INT_CLR_RTC_Register;
      --  Reserved register
      STORE0             : aliased SVD.UInt32;
      --  Reserved register
      STORE1             : aliased SVD.UInt32;
      --  Reserved register
      STORE2             : aliased SVD.UInt32;
      --  Reserved register
      STORE3             : aliased SVD.UInt32;
      --  Reserved register
      EXT_XTL_CONF       : aliased EXT_XTL_CONF_Register;
      --  ext wakeup configure
      EXT_WAKEUP_CONF    : aliased EXT_WAKEUP_CONF_Register;
      --  reject sleep register
      SLP_REJECT_CONF    : aliased SLP_REJECT_CONF_Register;
      --  conigure cpu freq
      CPU_PERIOD_CONF    : aliased CPU_PERIOD_CONF_Register;
      --  No public
      SDIO_ACT_CONF      : aliased SDIO_ACT_CONF_Register;
      --  configure clock register
      CLK_CONF           : aliased CLK_CONF_Register;
      --  configure slow clk
      SLOW_CLK_CONF      : aliased SLOW_CLK_CONF_Register;
      --  configure flash power
      SDIO_CONF          : aliased SDIO_CONF_Register;
      --  No public
      BIAS_CONF          : aliased BIAS_CONF_Register;
      --  configure rtc regulator
      RTC                : aliased RTC_Register;
      --  configure rtc power
      PWC                : aliased PWC_Register;
      --  No public
      REGULATOR_DRV_CTRL : aliased REGULATOR_DRV_CTRL_Register;
      --  configure digital power
      DIG_PWC            : aliased DIG_PWC_Register;
      --  congigure digital power isolation
      DIG_ISO            : aliased DIG_ISO_Register;
      --  configure rtc watch dog
      WDTCONFIG0         : aliased WDTCONFIG0_Register;
      --  stage0 hold time
      WDTCONFIG1         : aliased SVD.UInt32;
      --  stage1 hold time
      WDTCONFIG2         : aliased SVD.UInt32;
      --  stage2 hold time
      WDTCONFIG3         : aliased SVD.UInt32;
      --  stage3 hold time
      WDTCONFIG4         : aliased SVD.UInt32;
      --  rtc wdt feed
      WDTFEED            : aliased WDTFEED_Register;
      --  configure rtc watch dog
      WDTWPROTECT        : aliased SVD.UInt32;
      --  congfigure super watch dog
      SWD_CONF           : aliased SWD_CONF_Register;
      --  super watch dog key
      SWD_WPROTECT       : aliased SVD.UInt32;
      --  configure cpu stall by sw
      SW_CPU_STALL       : aliased SW_CPU_STALL_Register;
      --  reserved register
      STORE4             : aliased SVD.UInt32;
      --  reserved register
      STORE5             : aliased SVD.UInt32;
      --  reserved register
      STORE6             : aliased SVD.UInt32;
      --  reserved register
      STORE7             : aliased SVD.UInt32;
      --  reserved register
      LOW_POWER_ST       : aliased LOW_POWER_ST_Register;
      --  No public
      DIAG0              : aliased SVD.UInt32;
      --  rtc pad hold configure
      PAD_HOLD           : aliased PAD_HOLD_Register;
      --  configure digtal pad hold
      DIG_PAD_HOLD       : aliased SVD.UInt32;
      --  configure ext1 wakeup
      EXT_WAKEUP1        : aliased EXT_WAKEUP1_Register;
      --  check ext wakeup1 status
      EXT_WAKEUP1_STATUS : aliased EXT_WAKEUP1_STATUS_Register;
      --  congfigure brownout
      BROWN_OUT          : aliased BROWN_OUT_Register;
      --  RTC timer low 32 bits
      TIME_LOW1          : aliased SVD.UInt32;
      --  RTC timer high 16 bits
      TIME_HIGH1         : aliased TIME_HIGH1_Register;
      --  xtal 32k watch dog backup clock factor
      XTAL32K_CLK_FACTOR : aliased SVD.UInt32;
      --  configure xtal32k
      XTAL32K_CONF       : aliased XTAL32K_CONF_Register;
      --  configure ulp
      ULP_CP_TIMER       : aliased ULP_CP_TIMER_Register;
      --  configure ulp
      ULP_CP_CTRL        : aliased ULP_CP_CTRL_Register;
      --  configure ulp-riscv
      COCPU_CTRL         : aliased COCPU_CTRL_Register;
      --  configure touch controller
      TOUCH_CTRL1        : aliased TOUCH_CTRL1_Register;
      --  configure touch controller
      TOUCH_CTRL2        : aliased TOUCH_CTRL2_Register;
      --  configure touch controller
      TOUCH_SCAN_CTRL    : aliased TOUCH_SCAN_CTRL_Register;
      --  configure touch controller
      TOUCH_SLP_THRES    : aliased TOUCH_SLP_THRES_Register;
      --  configure touch controller
      TOUCH_APPROACH     : aliased TOUCH_APPROACH_Register;
      --  configure touch controller
      TOUCH_FILTER_CTRL  : aliased TOUCH_FILTER_CTRL_Register;
      --  usb configure
      USB_CONF           : aliased USB_CONF_Register;
      --  configure touch controller
      TOUCH_TIMEOUT_CTRL : aliased TOUCH_TIMEOUT_CTRL_Register;
      --  get reject casue
      SLP_REJECT_CAUSE   : aliased SLP_REJECT_CAUSE_Register;
      --  rtc common configure
      OPTION1            : aliased OPTION1_Register;
      --  get wakeup cause
      SLP_WAKEUP_CAUSE   : aliased SLP_WAKEUP_CAUSE_Register;
      --  configure ulp sleep time
      ULP_CP_TIMER_1     : aliased ULP_CP_TIMER_1_Register;
      --  oneset rtc interrupt
      INT_ENA_RTC_W1TS   : aliased INT_ENA_RTC_W1TS_Register;
      --  oneset clr rtc interrupt enable
      INT_ENA_RTC_W1TC   : aliased INT_ENA_RTC_W1TC_Register;
      --  configure retention
      RETENTION_CTRL     : aliased RETENTION_CTRL_Register;
      --  configure power glitch
      PG_CTRL            : aliased PG_CTRL_Register;
      --  No public
      FIB_SEL            : aliased FIB_SEL_Register;
      --  configure touch dac
      TOUCH_DAC          : aliased TOUCH_DAC_Register;
      --  configure touch dac
      TOUCH_DAC1         : aliased TOUCH_DAC1_Register;
      --  configure ulp diable
      COCPU_DISABLE      : aliased COCPU_DISABLE_Register;
      --  version register
      DATE               : aliased DATE_Register;
   end record
     with Volatile;

   for RTC_CNTL_Peripheral use record
      OPTIONS0           at 16#0# range 0 .. 31;
      SLP_TIMER0         at 16#4# range 0 .. 31;
      SLP_TIMER1         at 16#8# range 0 .. 31;
      TIME_UPDATE        at 16#C# range 0 .. 31;
      TIME_LOW0          at 16#10# range 0 .. 31;
      TIME_HIGH0         at 16#14# range 0 .. 31;
      STATE0             at 16#18# range 0 .. 31;
      TIMER1             at 16#1C# range 0 .. 31;
      TIMER2             at 16#20# range 0 .. 31;
      TIMER3             at 16#24# range 0 .. 31;
      TIMER4             at 16#28# range 0 .. 31;
      TIMER5             at 16#2C# range 0 .. 31;
      TIMER6             at 16#30# range 0 .. 31;
      ANA_CONF           at 16#34# range 0 .. 31;
      RESET_STATE        at 16#38# range 0 .. 31;
      WAKEUP_STATE       at 16#3C# range 0 .. 31;
      INT_ENA_RTC        at 16#40# range 0 .. 31;
      INT_RAW_RTC        at 16#44# range 0 .. 31;
      INT_ST_RTC         at 16#48# range 0 .. 31;
      INT_CLR_RTC        at 16#4C# range 0 .. 31;
      STORE0             at 16#50# range 0 .. 31;
      STORE1             at 16#54# range 0 .. 31;
      STORE2             at 16#58# range 0 .. 31;
      STORE3             at 16#5C# range 0 .. 31;
      EXT_XTL_CONF       at 16#60# range 0 .. 31;
      EXT_WAKEUP_CONF    at 16#64# range 0 .. 31;
      SLP_REJECT_CONF    at 16#68# range 0 .. 31;
      CPU_PERIOD_CONF    at 16#6C# range 0 .. 31;
      SDIO_ACT_CONF      at 16#70# range 0 .. 31;
      CLK_CONF           at 16#74# range 0 .. 31;
      SLOW_CLK_CONF      at 16#78# range 0 .. 31;
      SDIO_CONF          at 16#7C# range 0 .. 31;
      BIAS_CONF          at 16#80# range 0 .. 31;
      RTC                at 16#84# range 0 .. 31;
      PWC                at 16#88# range 0 .. 31;
      REGULATOR_DRV_CTRL at 16#8C# range 0 .. 31;
      DIG_PWC            at 16#90# range 0 .. 31;
      DIG_ISO            at 16#94# range 0 .. 31;
      WDTCONFIG0         at 16#98# range 0 .. 31;
      WDTCONFIG1         at 16#9C# range 0 .. 31;
      WDTCONFIG2         at 16#A0# range 0 .. 31;
      WDTCONFIG3         at 16#A4# range 0 .. 31;
      WDTCONFIG4         at 16#A8# range 0 .. 31;
      WDTFEED            at 16#AC# range 0 .. 31;
      WDTWPROTECT        at 16#B0# range 0 .. 31;
      SWD_CONF           at 16#B4# range 0 .. 31;
      SWD_WPROTECT       at 16#B8# range 0 .. 31;
      SW_CPU_STALL       at 16#BC# range 0 .. 31;
      STORE4             at 16#C0# range 0 .. 31;
      STORE5             at 16#C4# range 0 .. 31;
      STORE6             at 16#C8# range 0 .. 31;
      STORE7             at 16#CC# range 0 .. 31;
      LOW_POWER_ST       at 16#D0# range 0 .. 31;
      DIAG0              at 16#D4# range 0 .. 31;
      PAD_HOLD           at 16#D8# range 0 .. 31;
      DIG_PAD_HOLD       at 16#DC# range 0 .. 31;
      EXT_WAKEUP1        at 16#E0# range 0 .. 31;
      EXT_WAKEUP1_STATUS at 16#E4# range 0 .. 31;
      BROWN_OUT          at 16#E8# range 0 .. 31;
      TIME_LOW1          at 16#EC# range 0 .. 31;
      TIME_HIGH1         at 16#F0# range 0 .. 31;
      XTAL32K_CLK_FACTOR at 16#F4# range 0 .. 31;
      XTAL32K_CONF       at 16#F8# range 0 .. 31;
      ULP_CP_TIMER       at 16#FC# range 0 .. 31;
      ULP_CP_CTRL        at 16#100# range 0 .. 31;
      COCPU_CTRL         at 16#104# range 0 .. 31;
      TOUCH_CTRL1        at 16#108# range 0 .. 31;
      TOUCH_CTRL2        at 16#10C# range 0 .. 31;
      TOUCH_SCAN_CTRL    at 16#110# range 0 .. 31;
      TOUCH_SLP_THRES    at 16#114# range 0 .. 31;
      TOUCH_APPROACH     at 16#118# range 0 .. 31;
      TOUCH_FILTER_CTRL  at 16#11C# range 0 .. 31;
      USB_CONF           at 16#120# range 0 .. 31;
      TOUCH_TIMEOUT_CTRL at 16#124# range 0 .. 31;
      SLP_REJECT_CAUSE   at 16#128# range 0 .. 31;
      OPTION1            at 16#12C# range 0 .. 31;
      SLP_WAKEUP_CAUSE   at 16#130# range 0 .. 31;
      ULP_CP_TIMER_1     at 16#134# range 0 .. 31;
      INT_ENA_RTC_W1TS   at 16#138# range 0 .. 31;
      INT_ENA_RTC_W1TC   at 16#13C# range 0 .. 31;
      RETENTION_CTRL     at 16#140# range 0 .. 31;
      PG_CTRL            at 16#144# range 0 .. 31;
      FIB_SEL            at 16#148# range 0 .. 31;
      TOUCH_DAC          at 16#14C# range 0 .. 31;
      TOUCH_DAC1         at 16#150# range 0 .. 31;
      COCPU_DISABLE      at 16#154# range 0 .. 31;
      DATE               at 16#1FC# range 0 .. 31;
   end record;

   --  Real-Time Clock Control
   RTC_CNTL_Periph : aliased RTC_CNTL_Peripheral
     with Import, Address => RTC_CNTL_Base;

end SVD.RTC_CNTL;
