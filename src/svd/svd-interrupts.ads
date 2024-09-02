pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

--  Definition of the device's interrupts
package SVD.Interrupts is

   ----------------
   -- Interrupts --
   ----------------

   WIFI_MAC_Interrupt              : constant := 0;
   WIFI_NMI_Interrupt              : constant := 1;
   WIFI_PWR_Interrupt              : constant := 2;
   WIFI_BB_Interrupt               : constant := 3;
   BT_MAC_Interrupt                : constant := 4;
   BT_BB_Interrupt                 : constant := 5;
   BT_BB_NMI_Interrupt             : constant := 6;
   RWBT_Interrupt                  : constant := 7;
   RWBLE_Interrupt                 : constant := 8;
   RWBT_NMI_Interrupt              : constant := 9;
   RWBLE_NMI_Interrupt             : constant := 10;
   I2C_MASTER_Interrupt            : constant := 11;
   SLC0_Interrupt                  : constant := 12;
   SLC1_Interrupt                  : constant := 13;
   UHCI0_Interrupt                 : constant := 14;
   UHCI1_Interrupt                 : constant := 15;
   GPIO_Interrupt                  : constant := 16;
   GPIO_NMI_Interrupt              : constant := 17;
   GPIO_INTR_2_Interrupt           : constant := 18;
   GPIO_NMI_2_Interrupt            : constant := 19;
   SPI1_Interrupt                  : constant := 20;
   SPI2_Interrupt                  : constant := 21;
   SPI3_Interrupt                  : constant := 22;
   LCD_CAM_Interrupt               : constant := 24;
   I2S0_Interrupt                  : constant := 25;
   I2S1_Interrupt                  : constant := 26;
   UART0_Interrupt                 : constant := 27;
   UART1_Interrupt                 : constant := 28;
   UART2_Interrupt                 : constant := 29;
   SDIO_HOST_Interrupt             : constant := 30;
   MCPWM0_Interrupt                : constant := 31;
   MCPWM1_Interrupt                : constant := 32;
   LEDC_Interrupt                  : constant := 35;
   EFUSE_Interrupt                 : constant := 36;
   TWAI0_Interrupt                 : constant := 37;
   USB_Interrupt                   : constant := 38;
   RTC_CORE_Interrupt              : constant := 39;
   RMT_Interrupt                   : constant := 40;
   PCNT_Interrupt                  : constant := 41;
   I2C_EXT0_Interrupt              : constant := 42;
   I2C_EXT1_Interrupt              : constant := 43;
   SPI2_DMA_Interrupt              : constant := 44;
   SPI3_DMA_Interrupt              : constant := 45;
   WDT_Interrupt                   : constant := 47;
   TIMER1_Interrupt                : constant := 48;
   TIMER2_Interrupt                : constant := 49;
   TG0_T0_LEVEL_Interrupt          : constant := 50;
   TG0_T1_LEVEL_Interrupt          : constant := 51;
   TG0_WDT_LEVEL_Interrupt         : constant := 52;
   TG1_T0_LEVEL_Interrupt          : constant := 53;
   TG1_T1_LEVEL_Interrupt          : constant := 54;
   TG1_WDT_LEVEL_Interrupt         : constant := 55;
   CACHE_IA_Interrupt              : constant := 56;
   SYSTIMER_TARGET0_Interrupt      : constant := 57;
   SYSTIMER_TARGET1_Interrupt      : constant := 58;
   SYSTIMER_TARGET2_Interrupt      : constant := 59;
   SPI_MEM_REJECT_CACHE_Interrupt  : constant := 60;
   DCACHE_PRELOAD0_Interrupt       : constant := 61;
   ICACHE_PRELOAD0_Interrupt       : constant := 62;
   DCACHE_SYNC0_Interrupt          : constant := 63;
   ICACHE_SYNC0_Interrupt          : constant := 64;
   APB_ADC_Interrupt               : constant := 65;
   DMA_IN_CH0_Interrupt            : constant := 66;
   DMA_IN_CH1_Interrupt            : constant := 67;
   DMA_IN_CH2_Interrupt            : constant := 68;
   DMA_IN_CH3_Interrupt            : constant := 69;
   DMA_IN_CH4_Interrupt            : constant := 70;
   DMA_OUT_CH0_Interrupt           : constant := 71;
   DMA_OUT_CH1_Interrupt           : constant := 72;
   DMA_OUT_CH2_Interrupt           : constant := 73;
   DMA_OUT_CH3_Interrupt           : constant := 74;
   DMA_OUT_CH4_Interrupt           : constant := 75;
   RSA_Interrupt                   : constant := 76;
   SHA_Interrupt                   : constant := 77;
   FROM_CPU_INTR0_Interrupt        : constant := 79;
   FROM_CPU_INTR1_Interrupt        : constant := 80;
   FROM_CPU_INTR2_Interrupt        : constant := 81;
   FROM_CPU_INTR3_Interrupt        : constant := 82;
   ASSIST_DEBUG_Interrupt          : constant := 83;
   DMA_APBPERI_PMS_Interrupt       : constant := 84;
   CORE0_IRAM0_PMS_Interrupt       : constant := 85;
   CORE0_DRAM0_PMS_Interrupt       : constant := 86;
   CORE0_PIF_PMS_Interrupt         : constant := 87;
   CORE0_PIF_PMS_SIZE_Interrupt    : constant := 88;
   CORE1_IRAM0_PMS_Interrupt       : constant := 89;
   CORE1_DRAM0_PMS_Interrupt       : constant := 90;
   CORE1_PIF_PMS_Interrupt         : constant := 91;
   CORE1_PIF_PMS_SIZE_Interrupt    : constant := 92;
   BACKUP_PMS_VIOLATE_Interrupt    : constant := 93;
   CACHE_CORE0_ACS_Interrupt       : constant := 94;
   CACHE_CORE1_ACS_Interrupt       : constant := 95;
   USB_DEVICE_Interrupt            : constant := 96;
   PERI_BACKUP_Interrupt           : constant := 97;
   DMA_EXTMEM_REJECT_Interrupt     : constant := 98;

end SVD.Interrupts;
