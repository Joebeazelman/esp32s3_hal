pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.EFUSE is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  BLOCK0 data register 1.
   type RD_REPEAT_DATA0_Register is record
      --  Read-only. Set this bit to disable reading from BlOCK4-10.
      RD_DIS                      : SVD.UInt7;
      --  Read-only. Set this bit to disable boot from RTC RAM.
      DIS_RTC_RAM_BOOT            : SVD.Bit;
      --  Read-only. Set this bit to disable Icache.
      DIS_ICACHE                  : SVD.Bit;
      --  Read-only. Set this bit to disable Dcache.
      DIS_DCACHE                  : SVD.Bit;
      --  Read-only. Set this bit to disable Icache in download mode
      --  (boot_mode[3:0] is 0, 1, 2, 3, 6, 7).
      DIS_DOWNLOAD_ICACHE         : SVD.Bit;
      --  Read-only. Set this bit to disable Dcache in download mode (
      --  boot_mode[3:0] is 0, 1, 2, 3, 6, 7).
      DIS_DOWNLOAD_DCACHE         : SVD.Bit;
      --  Read-only. Set this bit to disable the function that forces chip into
      --  download mode.
      DIS_FORCE_DOWNLOAD          : SVD.Bit;
      --  Read-only. Set this bit to disable USB function.
      DIS_USB                     : SVD.Bit;
      --  Read-only. Set this bit to disable CAN function.
      DIS_CAN                     : SVD.Bit;
      --  Read-only. Disable app cpu.
      DIS_APP_CPU                 : SVD.Bit;
      --  Read-only. Set these bits to disable JTAG in the soft way (odd number
      --  1 means disable ). JTAG can be enabled in HMAC module.
      SOFT_DIS_JTAG               : SVD.UInt3;
      --  Read-only. Set this bit to disable JTAG in the hard way. JTAG is
      --  disabled permanently.
      DIS_PAD_JTAG                : SVD.Bit;
      --  Read-only. Set this bit to disable flash encryption when in download
      --  boot modes.
      DIS_DOWNLOAD_MANUAL_ENCRYPT : SVD.Bit;
      --  Read-only. Controls single-end input threshold vrefh, 1.76 V to 2 V
      --  with step of 80 mV, stored in eFuse.
      USB_DREFH                   : SVD.UInt2;
      --  Read-only. Controls single-end input threshold vrefl, 0.8 V to 1.04 V
      --  with step of 80 mV, stored in eFuse.
      USB_DREFL                   : SVD.UInt2;
      --  Read-only. Set this bit to exchange USB D+ and D- pins.
      USB_EXCHG_PINS              : SVD.Bit;
      --  Read-only. Set this bit to enable external PHY.
      EXT_PHY_ENABLE              : SVD.Bit;
      --  Read-only. Bluetooth GPIO signal output security level control.
      BTLC_GPIO_ENABLE            : SVD.UInt2;
      --  Read-only. SPI regulator switches current limit mode.
      VDD_SPI_MODECURLIM          : SVD.Bit;
      --  Read-only. SPI regulator high voltage reference.
      VDD_SPI_DREFH               : SVD.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_DATA0_Register use record
      RD_DIS                      at 0 range 0 .. 6;
      DIS_RTC_RAM_BOOT            at 0 range 7 .. 7;
      DIS_ICACHE                  at 0 range 8 .. 8;
      DIS_DCACHE                  at 0 range 9 .. 9;
      DIS_DOWNLOAD_ICACHE         at 0 range 10 .. 10;
      DIS_DOWNLOAD_DCACHE         at 0 range 11 .. 11;
      DIS_FORCE_DOWNLOAD          at 0 range 12 .. 12;
      DIS_USB                     at 0 range 13 .. 13;
      DIS_CAN                     at 0 range 14 .. 14;
      DIS_APP_CPU                 at 0 range 15 .. 15;
      SOFT_DIS_JTAG               at 0 range 16 .. 18;
      DIS_PAD_JTAG                at 0 range 19 .. 19;
      DIS_DOWNLOAD_MANUAL_ENCRYPT at 0 range 20 .. 20;
      USB_DREFH                   at 0 range 21 .. 22;
      USB_DREFL                   at 0 range 23 .. 24;
      USB_EXCHG_PINS              at 0 range 25 .. 25;
      EXT_PHY_ENABLE              at 0 range 26 .. 26;
      BTLC_GPIO_ENABLE            at 0 range 27 .. 28;
      VDD_SPI_MODECURLIM          at 0 range 29 .. 29;
      VDD_SPI_DREFH               at 0 range 30 .. 31;
   end record;

   --  RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE array
   type RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE_Field_Array is array (0 .. 2)
     of SVD.Bit
     with Component_Size => 1, Size => 3;

   --  Type definition for RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE
   type RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SECURE_BOOT_KEY_REVOKE as a value
            Val : SVD.UInt3;
         when True =>
            --  SECURE_BOOT_KEY_REVOKE as an array
            Arr : RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  BLOCK0 data register 2.
   type RD_REPEAT_DATA1_Register is record
      --  Read-only. SPI regulator medium voltage reference.
      VDD_SPI_DREFM          : SVD.UInt2;
      --  Read-only. SPI regulator low voltage reference.
      VDD_SPI_DREFL          : SVD.UInt2;
      --  Read-only. SPI regulator power up signal.
      VDD_SPI_XPD            : SVD.Bit;
      --  Read-only. SPI regulator output is short connected to VDD3P3_RTC_IO.
      VDD_SPI_TIEH           : SVD.Bit;
      --  Read-only. Set this bit and force to use the configuration of eFuse
      --  to configure VDD_SPI.
      VDD_SPI_FORCE          : SVD.Bit;
      --  Read-only. Set SPI regulator to 0 to configure init[1:0]=0.
      VDD_SPI_EN_INIT        : SVD.Bit;
      --  Read-only. Set SPI regulator to 1 to enable output current limit.
      VDD_SPI_ENCURLIM       : SVD.Bit;
      --  Read-only. Tunes the current limit threshold of SPI regulator when
      --  tieh=0, about 800 mA/(8+d).
      VDD_SPI_DCURLIM        : SVD.UInt3;
      --  Read-only. Adds resistor from LDO output to ground. 0: no resistance
      --  1: 6 K 2: 4 K 3: 2 K.
      VDD_SPI_INIT           : SVD.UInt2;
      --  Read-only. Prevents SPI regulator from overshoot.
      VDD_SPI_DCAP           : SVD.UInt2;
      --  Read-only. Selects RTC watchdog timeout threshold, in unit of slow
      --  clock cycle. 0: 40000. 1: 80000. 2: 160000. 3:320000.
      WDT_DELAY_SEL          : SVD.UInt2;
      --  Read-only. Set this bit to enable SPI boot encrypt/decrypt. Odd
      --  number of 1: enable. even number of 1: disable.
      SPI_BOOT_CRYPT_CNT     : SVD.UInt3;
      --  Read-only. Set this bit to enable revoking first secure boot key.
      SECURE_BOOT_KEY_REVOKE : RD_REPEAT_DATA1_SECURE_BOOT_KEY_REVOKE_Field;
      --  Read-only. Purpose of Key0.
      KEY_PURPOSE_0          : SVD.UInt4;
      --  Read-only. Purpose of Key1.
      KEY_PURPOSE_1          : SVD.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_DATA1_Register use record
      VDD_SPI_DREFM          at 0 range 0 .. 1;
      VDD_SPI_DREFL          at 0 range 2 .. 3;
      VDD_SPI_XPD            at 0 range 4 .. 4;
      VDD_SPI_TIEH           at 0 range 5 .. 5;
      VDD_SPI_FORCE          at 0 range 6 .. 6;
      VDD_SPI_EN_INIT        at 0 range 7 .. 7;
      VDD_SPI_ENCURLIM       at 0 range 8 .. 8;
      VDD_SPI_DCURLIM        at 0 range 9 .. 11;
      VDD_SPI_INIT           at 0 range 12 .. 13;
      VDD_SPI_DCAP           at 0 range 14 .. 15;
      WDT_DELAY_SEL          at 0 range 16 .. 17;
      SPI_BOOT_CRYPT_CNT     at 0 range 18 .. 20;
      SECURE_BOOT_KEY_REVOKE at 0 range 21 .. 23;
      KEY_PURPOSE_0          at 0 range 24 .. 27;
      KEY_PURPOSE_1          at 0 range 28 .. 31;
   end record;

   --  BLOCK0 data register 3.
   type RD_REPEAT_DATA2_Register is record
      --  Read-only. Purpose of Key2.
      KEY_PURPOSE_2                 : SVD.UInt4;
      --  Read-only. Purpose of Key3.
      KEY_PURPOSE_3                 : SVD.UInt4;
      --  Read-only. Purpose of Key4.
      KEY_PURPOSE_4                 : SVD.UInt4;
      --  Read-only. Purpose of Key5.
      KEY_PURPOSE_5                 : SVD.UInt4;
      --  Read-only. Reserved (used for four backups method).
      RPT4_RESERVED0                : SVD.UInt4;
      --  Read-only. Set this bit to enable secure boot.
      SECURE_BOOT_EN                : SVD.Bit;
      --  Read-only. Set this bit to enable revoking aggressive secure boot.
      SECURE_BOOT_AGGRESSIVE_REVOKE : SVD.Bit;
      --  Read-only. Set this bit to disable function of usb switch to jtag in
      --  module of usb device.
      DIS_USB_JTAG                  : SVD.Bit;
      --  Read-only. Set this bit to disable usb device.
      DIS_USB_DEVICE                : SVD.Bit;
      --  Read-only. Set this bit to enable selection between usb_to_jtag and
      --  pad_to_jtag through strapping gpio10 when both reg_dis_usb_jtag and
      --  reg_dis_pad_jtag are equal to 0.
      STRAP_JTAG_SEL                : SVD.Bit;
      --  Read-only. This bit is used to switch internal PHY and external PHY
      --  for USB OTG and USB Device. 0: internal PHY is assigned to USB Device
      --  while external PHY is assigned to USB OTG. 1: internal PHY is
      --  assigned to USB OTG while external PHY is assigned to USB Device.
      USB_PHY_SEL                   : SVD.Bit;
      --  Read-only. Sample delay configuration of power glitch.
      POWER_GLITCH_DSENSE           : SVD.UInt2;
      --  Read-only. Configures flash waiting time after power-up, in unit of
      --  ms. If the value is less than 15, the waiting time is the
      --  configurable value. Otherwise, the waiting time is twice the
      --  configurable value.
      FLASH_TPUW                    : SVD.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_DATA2_Register use record
      KEY_PURPOSE_2                 at 0 range 0 .. 3;
      KEY_PURPOSE_3                 at 0 range 4 .. 7;
      KEY_PURPOSE_4                 at 0 range 8 .. 11;
      KEY_PURPOSE_5                 at 0 range 12 .. 15;
      RPT4_RESERVED0                at 0 range 16 .. 19;
      SECURE_BOOT_EN                at 0 range 20 .. 20;
      SECURE_BOOT_AGGRESSIVE_REVOKE at 0 range 21 .. 21;
      DIS_USB_JTAG                  at 0 range 22 .. 22;
      DIS_USB_DEVICE                at 0 range 23 .. 23;
      STRAP_JTAG_SEL                at 0 range 24 .. 24;
      USB_PHY_SEL                   at 0 range 25 .. 25;
      POWER_GLITCH_DSENSE           at 0 range 26 .. 27;
      FLASH_TPUW                    at 0 range 28 .. 31;
   end record;

   --  BLOCK0 data register 4.
   type RD_REPEAT_DATA3_Register is record
      --  Read-only. Set this bit to disable download mode (boot_mode[3:0] = 0,
      --  1, 2, 3, 6, 7).
      DIS_DOWNLOAD_MODE        : SVD.Bit;
      --  Read-only. Set this bit to disable Legacy SPI boot mode
      --  (boot_mode[3:0] = 4).
      DIS_LEGACY_SPI_BOOT      : SVD.Bit;
      --  Read-only. Selectes the default UART print channel. 0: UART0. 1:
      --  UART1.
      UART_PRINT_CHANNEL       : SVD.Bit;
      --  Read-only. Set ECC mode in ROM, 0: ROM would Enable Flash ECC 16to18
      --  byte mode. 1:ROM would use 16to17 byte mode.
      FLASH_ECC_MODE           : SVD.Bit;
      --  Read-only. Set this bit to disable UART download mode through USB.
      DIS_USB_DOWNLOAD_MODE    : SVD.Bit;
      --  Read-only. Set this bit to enable secure UART download mode.
      ENABLE_SECURITY_DOWNLOAD : SVD.Bit;
      --  Read-only. Set the default UARTboot message output mode. 00: Enabled.
      --  01: Enabled when GPIO8 is low at reset. 10: Enabled when GPIO8 is
      --  high at reset. 11:disabled.
      UART_PRINT_CONTROL       : SVD.UInt2;
      --  Read-only. GPIO33-GPIO37 power supply selection in ROM code. 0:
      --  VDD3P3_CPU. 1: VDD_SPI.
      PIN_POWER_SELECTION      : SVD.Bit;
      --  Read-only. Set the maximum lines of SPI flash. 0: four lines. 1:
      --  eight lines.
      FLASH_TYPE               : SVD.Bit;
      --  Read-only. Set Flash page size.
      FLASH_PAGE_SIZE          : SVD.UInt2;
      --  Read-only. Set 1 to enable ECC for flash boot.
      FLASH_ECC_EN             : SVD.Bit;
      --  Read-only. Set this bit to force ROM code to send a resume command
      --  during SPI boot.
      FORCE_SEND_RESUME        : SVD.Bit;
      --  Read-only. Secure version (used by ESP-IDF anti-rollback feature).
      SECURE_VERSION           : SVD.UInt16;
      --  Read-only. Set this bit to enable power glitch function.
      POWERGLITCH_EN           : SVD.Bit;
      --  Read-only. Reserved (used for four backups method).
      RPT4_RESERVED1           : SVD.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_DATA3_Register use record
      DIS_DOWNLOAD_MODE        at 0 range 0 .. 0;
      DIS_LEGACY_SPI_BOOT      at 0 range 1 .. 1;
      UART_PRINT_CHANNEL       at 0 range 2 .. 2;
      FLASH_ECC_MODE           at 0 range 3 .. 3;
      DIS_USB_DOWNLOAD_MODE    at 0 range 4 .. 4;
      ENABLE_SECURITY_DOWNLOAD at 0 range 5 .. 5;
      UART_PRINT_CONTROL       at 0 range 6 .. 7;
      PIN_POWER_SELECTION      at 0 range 8 .. 8;
      FLASH_TYPE               at 0 range 9 .. 9;
      FLASH_PAGE_SIZE          at 0 range 10 .. 11;
      FLASH_ECC_EN             at 0 range 12 .. 12;
      FORCE_SEND_RESUME        at 0 range 13 .. 13;
      SECURE_VERSION           at 0 range 14 .. 29;
      POWERGLITCH_EN           at 0 range 30 .. 30;
      RPT4_RESERVED1           at 0 range 31 .. 31;
   end record;

   --  BLOCK0 data register 5.
   type RD_REPEAT_DATA4_Register is record
      --  Read-only. Reserved (used for four backups method).
      RPT4_RESERVED2 : SVD.UInt24;
      --  unspecified
      Reserved_24_31 : SVD.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_DATA4_Register use record
      RPT4_RESERVED2 at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  BLOCK1 data register 1.
   type RD_MAC_SPI_SYS_1_Register is record
      --  Read-only. Stores the high 16 bits of MAC address.
      MAC_1          : SVD.UInt16;
      --  Read-only. Stores the zeroth part of SPI_PAD_CONF.
      SPI_PAD_CONF_0 : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_MAC_SPI_SYS_1_Register use record
      MAC_1          at 0 range 0 .. 15;
      SPI_PAD_CONF_0 at 0 range 16 .. 31;
   end record;

   --  BLOCK1 data register 3.
   type RD_MAC_SPI_SYS_3_Register is record
      --  Read-only. Stores the second part of SPI_PAD_CONF.
      SPI_PAD_CONF_2   : SVD.UInt18;
      --  Read-only. Stores the fist 14 bits of the zeroth part of system data.
      SYS_DATA_PART0_0 : SVD.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_MAC_SPI_SYS_3_Register use record
      SPI_PAD_CONF_2   at 0 range 0 .. 17;
      SYS_DATA_PART0_0 at 0 range 18 .. 31;
   end record;

   --  Programming error record register 0 of BLOCK0.
   type RD_REPEAT_ERR0_Register is record
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      RD_DIS_ERR                      : SVD.UInt7;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_RTC_RAM_BOOT_ERR            : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_ICACHE_ERR                  : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_DCACHE_ERR                  : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_DOWNLOAD_ICACHE_ERR         : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_DOWNLOAD_DCACHE_ERR         : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_FORCE_DOWNLOAD_ERR          : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_USB_ERR                     : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_CAN_ERR                     : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_APP_CPU_ERR                 : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      SOFT_DIS_JTAG_ERR               : SVD.UInt3;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_PAD_JTAG_ERR                : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_DOWNLOAD_MANUAL_ENCRYPT_ERR : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      USB_DREFH_ERR                   : SVD.UInt2;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      USB_DREFL_ERR                   : SVD.UInt2;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      USB_EXCHG_PINS_ERR              : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      EXT_PHY_ENABLE_ERR              : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      BTLC_GPIO_ENABLE_ERR            : SVD.UInt2;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_MODECURLIM_ERR          : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_DREFH_ERR               : SVD.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_ERR0_Register use record
      RD_DIS_ERR                      at 0 range 0 .. 6;
      DIS_RTC_RAM_BOOT_ERR            at 0 range 7 .. 7;
      DIS_ICACHE_ERR                  at 0 range 8 .. 8;
      DIS_DCACHE_ERR                  at 0 range 9 .. 9;
      DIS_DOWNLOAD_ICACHE_ERR         at 0 range 10 .. 10;
      DIS_DOWNLOAD_DCACHE_ERR         at 0 range 11 .. 11;
      DIS_FORCE_DOWNLOAD_ERR          at 0 range 12 .. 12;
      DIS_USB_ERR                     at 0 range 13 .. 13;
      DIS_CAN_ERR                     at 0 range 14 .. 14;
      DIS_APP_CPU_ERR                 at 0 range 15 .. 15;
      SOFT_DIS_JTAG_ERR               at 0 range 16 .. 18;
      DIS_PAD_JTAG_ERR                at 0 range 19 .. 19;
      DIS_DOWNLOAD_MANUAL_ENCRYPT_ERR at 0 range 20 .. 20;
      USB_DREFH_ERR                   at 0 range 21 .. 22;
      USB_DREFL_ERR                   at 0 range 23 .. 24;
      USB_EXCHG_PINS_ERR              at 0 range 25 .. 25;
      EXT_PHY_ENABLE_ERR              at 0 range 26 .. 26;
      BTLC_GPIO_ENABLE_ERR            at 0 range 27 .. 28;
      VDD_SPI_MODECURLIM_ERR          at 0 range 29 .. 29;
      VDD_SPI_DREFH_ERR               at 0 range 30 .. 31;
   end record;

   --  Programming error record register 1 of BLOCK0.
   type RD_REPEAT_ERR1_Register is record
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_DREFM_ERR           : SVD.UInt2;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_DREFL_ERR           : SVD.UInt2;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_XPD_ERR             : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_TIEH_ERR            : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_FORCE_ERR           : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_EN_INIT_ERR         : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_ENCURLIM_ERR        : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_DCURLIM_ERR         : SVD.UInt3;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_INIT_ERR            : SVD.UInt2;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      VDD_SPI_DCAP_ERR            : SVD.UInt2;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      WDT_DELAY_SEL_ERR           : SVD.UInt2;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      SPI_BOOT_CRYPT_CNT_ERR      : SVD.UInt3;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      SECURE_BOOT_KEY_REVOKE0_ERR : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      SECURE_BOOT_KEY_REVOKE1_ERR : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      SECURE_BOOT_KEY_REVOKE2_ERR : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      KEY_PURPOSE_0_ERR           : SVD.UInt4;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      KEY_PURPOSE_1_ERR           : SVD.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_ERR1_Register use record
      VDD_SPI_DREFM_ERR           at 0 range 0 .. 1;
      VDD_SPI_DREFL_ERR           at 0 range 2 .. 3;
      VDD_SPI_XPD_ERR             at 0 range 4 .. 4;
      VDD_SPI_TIEH_ERR            at 0 range 5 .. 5;
      VDD_SPI_FORCE_ERR           at 0 range 6 .. 6;
      VDD_SPI_EN_INIT_ERR         at 0 range 7 .. 7;
      VDD_SPI_ENCURLIM_ERR        at 0 range 8 .. 8;
      VDD_SPI_DCURLIM_ERR         at 0 range 9 .. 11;
      VDD_SPI_INIT_ERR            at 0 range 12 .. 13;
      VDD_SPI_DCAP_ERR            at 0 range 14 .. 15;
      WDT_DELAY_SEL_ERR           at 0 range 16 .. 17;
      SPI_BOOT_CRYPT_CNT_ERR      at 0 range 18 .. 20;
      SECURE_BOOT_KEY_REVOKE0_ERR at 0 range 21 .. 21;
      SECURE_BOOT_KEY_REVOKE1_ERR at 0 range 22 .. 22;
      SECURE_BOOT_KEY_REVOKE2_ERR at 0 range 23 .. 23;
      KEY_PURPOSE_0_ERR           at 0 range 24 .. 27;
      KEY_PURPOSE_1_ERR           at 0 range 28 .. 31;
   end record;

   --  Programming error record register 2 of BLOCK0.
   type RD_REPEAT_ERR2_Register is record
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      KEY_PURPOSE_2_ERR                 : SVD.UInt4;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      KEY_PURPOSE_3_ERR                 : SVD.UInt4;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      KEY_PURPOSE_4_ERR                 : SVD.UInt4;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      KEY_PURPOSE_5_ERR                 : SVD.UInt4;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      RPT4_RESERVED0_ERR                : SVD.UInt4;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      SECURE_BOOT_EN_ERR                : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      SECURE_BOOT_AGGRESSIVE_REVOKE_ERR : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_USB_JTAG_ERR                  : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_USB_DEVICE_ERR                : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      STRAP_JTAG_SEL_ERR                : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      USB_PHY_SEL_ERR                   : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      POWER_GLITCH_DSENSE_ERR           : SVD.UInt2;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      FLASH_TPUW_ERR                    : SVD.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_ERR2_Register use record
      KEY_PURPOSE_2_ERR                 at 0 range 0 .. 3;
      KEY_PURPOSE_3_ERR                 at 0 range 4 .. 7;
      KEY_PURPOSE_4_ERR                 at 0 range 8 .. 11;
      KEY_PURPOSE_5_ERR                 at 0 range 12 .. 15;
      RPT4_RESERVED0_ERR                at 0 range 16 .. 19;
      SECURE_BOOT_EN_ERR                at 0 range 20 .. 20;
      SECURE_BOOT_AGGRESSIVE_REVOKE_ERR at 0 range 21 .. 21;
      DIS_USB_JTAG_ERR                  at 0 range 22 .. 22;
      DIS_USB_DEVICE_ERR                at 0 range 23 .. 23;
      STRAP_JTAG_SEL_ERR                at 0 range 24 .. 24;
      USB_PHY_SEL_ERR                   at 0 range 25 .. 25;
      POWER_GLITCH_DSENSE_ERR           at 0 range 26 .. 27;
      FLASH_TPUW_ERR                    at 0 range 28 .. 31;
   end record;

   --  Programming error record register 3 of BLOCK0.
   type RD_REPEAT_ERR3_Register is record
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_DOWNLOAD_MODE_ERR        : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_LEGACY_SPI_BOOT_ERR      : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      UART_PRINT_CHANNEL_ERR       : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      FLASH_ECC_MODE_ERR           : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      DIS_USB_DOWNLOAD_MODE_ERR    : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      ENABLE_SECURITY_DOWNLOAD_ERR : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      UART_PRINT_CONTROL_ERR       : SVD.UInt2;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      PIN_POWER_SELECTION_ERR      : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      FLASH_TYPE_ERR               : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      FLASH_PAGE_SIZE_ERR          : SVD.UInt2;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      FLASH_ECC_EN_ERR             : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      FORCE_SEND_RESUME_ERR        : SVD.Bit;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      SECURE_VERSION_ERR           : SVD.UInt16;
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      POWERGLITCH_EN_ERR           : SVD.Bit;
      --  Read-only. Reserved.
      RPT4_RESERVED1_ERR           : SVD.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_ERR3_Register use record
      DIS_DOWNLOAD_MODE_ERR        at 0 range 0 .. 0;
      DIS_LEGACY_SPI_BOOT_ERR      at 0 range 1 .. 1;
      UART_PRINT_CHANNEL_ERR       at 0 range 2 .. 2;
      FLASH_ECC_MODE_ERR           at 0 range 3 .. 3;
      DIS_USB_DOWNLOAD_MODE_ERR    at 0 range 4 .. 4;
      ENABLE_SECURITY_DOWNLOAD_ERR at 0 range 5 .. 5;
      UART_PRINT_CONTROL_ERR       at 0 range 6 .. 7;
      PIN_POWER_SELECTION_ERR      at 0 range 8 .. 8;
      FLASH_TYPE_ERR               at 0 range 9 .. 9;
      FLASH_PAGE_SIZE_ERR          at 0 range 10 .. 11;
      FLASH_ECC_EN_ERR             at 0 range 12 .. 12;
      FORCE_SEND_RESUME_ERR        at 0 range 13 .. 13;
      SECURE_VERSION_ERR           at 0 range 14 .. 29;
      POWERGLITCH_EN_ERR           at 0 range 30 .. 30;
      RPT4_RESERVED1_ERR           at 0 range 31 .. 31;
   end record;

   --  Programming error record register 4 of BLOCK0.
   type RD_REPEAT_ERR4_Register is record
      --  Read-only. If any bits in this filed are 1, then it indicates a
      --  programming error.
      RPT4_RESERVED2_ERR : SVD.UInt24;
      --  unspecified
      Reserved_24_31     : SVD.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_REPEAT_ERR4_Register use record
      RPT4_RESERVED2_ERR at 0 range 0 .. 23;
      Reserved_24_31     at 0 range 24 .. 31;
   end record;

   --  Programming error record register 0 of BLOCK1-10.
   type RD_RS_ERR0_Register is record
      --  Read-only. The value of this signal means the number of error bytes.
      MAC_SPI_8M_ERR_NUM : SVD.UInt3;
      --  Read-only. 0: Means no failure and that the data of MAC_SPI_8M is
      --  reliable 1: Means that programming user data failed and the number of
      --  error bytes is over 6.
      MAC_SPI_8M_FAIL    : SVD.Bit;
      --  Read-only. The value of this signal means the number of error bytes.
      SYS_PART1_NUM      : SVD.UInt3;
      --  Read-only. 0: Means no failure and that the data of system part1 is
      --  reliable 1: Means that programming user data failed and the number of
      --  error bytes is over 6.
      SYS_PART1_FAIL     : SVD.Bit;
      --  Read-only. The value of this signal means the number of error bytes.
      USR_DATA_ERR_NUM   : SVD.UInt3;
      --  Read-only. 0: Means no failure and that the user data is reliable 1:
      --  Means that programming user data failed and the number of error bytes
      --  is over 6.
      USR_DATA_FAIL      : SVD.Bit;
      --  Read-only. The value of this signal means the number of error bytes.
      KEY0_ERR_NUM       : SVD.UInt3;
      --  Read-only. 0: Means no failure and that the data of key0 is reliable
      --  1: Means that programming key0 failed and the number of error bytes
      --  is over 6.
      KEY0_FAIL          : SVD.Bit;
      --  Read-only. The value of this signal means the number of error bytes.
      KEY1_ERR_NUM       : SVD.UInt3;
      --  Read-only. 0: Means no failure and that the data of key1 is reliable
      --  1: Means that programming key1 failed and the number of error bytes
      --  is over 6.
      KEY1_FAIL          : SVD.Bit;
      --  Read-only. The value of this signal means the number of error bytes.
      KEY2_ERR_NUM       : SVD.UInt3;
      --  Read-only. 0: Means no failure and that the data of key2 is reliable
      --  1: Means that programming key2 failed and the number of error bytes
      --  is over 6.
      KEY2_FAIL          : SVD.Bit;
      --  Read-only. The value of this signal means the number of error bytes.
      KEY3_ERR_NUM       : SVD.UInt3;
      --  Read-only. 0: Means no failure and that the data of key3 is reliable
      --  1: Means that programming key3 failed and the number of error bytes
      --  is over 6.
      KEY3_FAIL          : SVD.Bit;
      --  Read-only. The value of this signal means the number of error bytes.
      KEY4_ERR_NUM       : SVD.UInt3;
      --  Read-only. 0: Means no failure and that the data of key4 is reliable
      --  1: Means that programming key4 failed and the number of error bytes
      --  is over 6.
      KEY4_FAIL          : SVD.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_RS_ERR0_Register use record
      MAC_SPI_8M_ERR_NUM at 0 range 0 .. 2;
      MAC_SPI_8M_FAIL    at 0 range 3 .. 3;
      SYS_PART1_NUM      at 0 range 4 .. 6;
      SYS_PART1_FAIL     at 0 range 7 .. 7;
      USR_DATA_ERR_NUM   at 0 range 8 .. 10;
      USR_DATA_FAIL      at 0 range 11 .. 11;
      KEY0_ERR_NUM       at 0 range 12 .. 14;
      KEY0_FAIL          at 0 range 15 .. 15;
      KEY1_ERR_NUM       at 0 range 16 .. 18;
      KEY1_FAIL          at 0 range 19 .. 19;
      KEY2_ERR_NUM       at 0 range 20 .. 22;
      KEY2_FAIL          at 0 range 23 .. 23;
      KEY3_ERR_NUM       at 0 range 24 .. 26;
      KEY3_FAIL          at 0 range 27 .. 27;
      KEY4_ERR_NUM       at 0 range 28 .. 30;
      KEY4_FAIL          at 0 range 31 .. 31;
   end record;

   --  Programming error record register 1 of BLOCK1-10.
   type RD_RS_ERR1_Register is record
      --  Read-only. The value of this signal means the number of error bytes.
      KEY5_ERR_NUM      : SVD.UInt3;
      --  Read-only. 0: Means no failure and that the data of KEY5 is reliable
      --  1: Means that programming user data failed and the number of error
      --  bytes is over 6.
      KEY5_FAIL         : SVD.Bit;
      --  Read-only. The value of this signal means the number of error bytes.
      SYS_PART2_ERR_NUM : SVD.UInt3;
      --  Read-only. 0: Means no failure and that the data of system part2 is
      --  reliable 1: Means that programming user data failed and the number of
      --  error bytes is over 6.
      SYS_PART2_FAIL    : SVD.Bit;
      --  unspecified
      Reserved_8_31     : SVD.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_RS_ERR1_Register use record
      KEY5_ERR_NUM      at 0 range 0 .. 2;
      KEY5_FAIL         at 0 range 3 .. 3;
      SYS_PART2_ERR_NUM at 0 range 4 .. 6;
      SYS_PART2_FAIL    at 0 range 7 .. 7;
      Reserved_8_31     at 0 range 8 .. 31;
   end record;

   --  eFuse clcok configuration register.
   type CLK_Register is record
      --  Set this bit to force eFuse SRAM into power-saving mode.
      EFUSE_MEM_FORCE_PD : SVD.Bit := 16#0#;
      --  Set this bit and force to activate clock signal of eFuse SRAM.
      MEM_CLK_FORCE_ON   : SVD.Bit := 16#1#;
      --  Set this bit to force eFuse SRAM into working mode.
      EFUSE_MEM_FORCE_PU : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_3_15      : SVD.UInt13 := 16#0#;
      --  Set this bit and force to enable clock signal of eFuse memory.
      EN                 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_17_31     : SVD.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_Register use record
      EFUSE_MEM_FORCE_PD at 0 range 0 .. 0;
      MEM_CLK_FORCE_ON   at 0 range 1 .. 1;
      EFUSE_MEM_FORCE_PU at 0 range 2 .. 2;
      Reserved_3_15      at 0 range 3 .. 15;
      EN                 at 0 range 16 .. 16;
      Reserved_17_31     at 0 range 17 .. 31;
   end record;

   --  eFuse operation mode configuraiton register
   type CONF_Register is record
      --  0x5A5A: Operate programming command 0x5AA5: Operate read command.
      OP_CODE        : SVD.UInt16 := 16#0#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONF_Register use record
      OP_CODE        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  eFuse status register.
   type STATUS_Register is record
      --  Read-only. Indicates the state of the eFuse state machine.
      STATE            : SVD.UInt4;
      --  Read-only. The value of OTP_LOAD_SW.
      OTP_LOAD_SW      : SVD.Bit;
      --  Read-only. The value of OTP_VDDQ_C_SYNC2.
      OTP_VDDQ_C_SYNC2 : SVD.Bit;
      --  Read-only. The value of OTP_STROBE_SW.
      OTP_STROBE_SW    : SVD.Bit;
      --  Read-only. The value of OTP_CSB_SW.
      OTP_CSB_SW       : SVD.Bit;
      --  Read-only. The value of OTP_PGENB_SW.
      OTP_PGENB_SW     : SVD.Bit;
      --  Read-only. The value of OTP_VDDQ_IS_SW.
      OTP_VDDQ_IS_SW   : SVD.Bit;
      --  Read-only. Indicates the number of error bits during programming
      --  BLOCK0.
      REPEAT_ERR_CNT   : SVD.Byte;
      --  unspecified
      Reserved_18_31   : SVD.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      STATE            at 0 range 0 .. 3;
      OTP_LOAD_SW      at 0 range 4 .. 4;
      OTP_VDDQ_C_SYNC2 at 0 range 5 .. 5;
      OTP_STROBE_SW    at 0 range 6 .. 6;
      OTP_CSB_SW       at 0 range 7 .. 7;
      OTP_PGENB_SW     at 0 range 8 .. 8;
      OTP_VDDQ_IS_SW   at 0 range 9 .. 9;
      REPEAT_ERR_CNT   at 0 range 10 .. 17;
      Reserved_18_31   at 0 range 18 .. 31;
   end record;

   --  eFuse command register.
   type CMD_Register is record
      --  Set this bit to send read command.
      READ_CMD      : SVD.Bit := 16#0#;
      --  Set this bit to send programming command.
      PGM_CMD       : SVD.Bit := 16#0#;
      --  The serial number of the block to be programmed. Value 0-10
      --  corresponds to block number 0-10, respectively.
      BLK_NUM       : SVD.UInt4 := 16#0#;
      --  unspecified
      Reserved_6_31 : SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      READ_CMD      at 0 range 0 .. 0;
      PGM_CMD       at 0 range 1 .. 1;
      BLK_NUM       at 0 range 2 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  eFuse raw interrupt register.
   type INT_RAW_Register is record
      --  The raw bit signal for read_done interrupt.
      READ_DONE_INT_RAW : SVD.Bit := 16#0#;
      --  The raw bit signal for pgm_done interrupt.
      PGM_DONE_INT_RAW  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31     : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_RAW_Register use record
      READ_DONE_INT_RAW at 0 range 0 .. 0;
      PGM_DONE_INT_RAW  at 0 range 1 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   --  eFuse interrupt status register.
   type INT_ST_Register is record
      --  Read-only. The status signal for read_done interrupt.
      READ_DONE_INT_ST : SVD.Bit;
      --  Read-only. The status signal for pgm_done interrupt.
      PGM_DONE_INT_ST  : SVD.Bit;
      --  unspecified
      Reserved_2_31    : SVD.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ST_Register use record
      READ_DONE_INT_ST at 0 range 0 .. 0;
      PGM_DONE_INT_ST  at 0 range 1 .. 1;
      Reserved_2_31    at 0 range 2 .. 31;
   end record;

   --  eFuse interrupt enable register.
   type INT_ENA_Register is record
      --  The enable signal for read_done interrupt.
      READ_DONE_INT_ENA : SVD.Bit := 16#0#;
      --  The enable signal for pgm_done interrupt.
      PGM_DONE_INT_ENA  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31     : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_ENA_Register use record
      READ_DONE_INT_ENA at 0 range 0 .. 0;
      PGM_DONE_INT_ENA  at 0 range 1 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   --  eFuse interrupt clear register.
   type INT_CLR_Register is record
      --  Write-only. The clear signal for read_done interrupt.
      READ_DONE_INT_CLR : SVD.Bit := 16#0#;
      --  Write-only. The clear signal for pgm_done interrupt.
      PGM_DONE_INT_CLR  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_2_31     : SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_CLR_Register use record
      READ_DONE_INT_CLR at 0 range 0 .. 0;
      PGM_DONE_INT_CLR  at 0 range 1 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   --  Controls the eFuse programming voltage.
   type DAC_CONF_Register is record
      --  Controls the division factor of the rising clock of the programming
      --  voltage.
      DAC_CLK_DIV     : SVD.Byte := 16#1C#;
      --  Don't care.
      DAC_CLK_PAD_SEL : SVD.Bit := 16#0#;
      --  Controls the rising period of the programming voltage.
      DAC_NUM         : SVD.Byte := 16#FF#;
      --  Reduces the power supply of the programming voltage.
      OE_CLR          : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_18_31  : SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAC_CONF_Register use record
      DAC_CLK_DIV     at 0 range 0 .. 7;
      DAC_CLK_PAD_SEL at 0 range 8 .. 8;
      DAC_NUM         at 0 range 9 .. 16;
      OE_CLR          at 0 range 17 .. 17;
      Reserved_18_31  at 0 range 18 .. 31;
   end record;

   --  Configures read timing parameters.
   type RD_TIM_CONF_Register is record
      --  unspecified
      Reserved_0_23 : SVD.UInt24 := 16#0#;
      --  Configures the initial read time of eFuse.
      READ_INIT_NUM : SVD.Byte := 16#12#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RD_TIM_CONF_Register use record
      Reserved_0_23 at 0 range 0 .. 23;
      READ_INIT_NUM at 0 range 24 .. 31;
   end record;

   --  Configurarion register 1 of eFuse programming timing parameters.
   type WR_TIM_CONF1_Register is record
      --  unspecified
      Reserved_0_7   : SVD.Byte := 16#0#;
      --  Configures the power up time for VDDQ.
      PWR_ON_NUM     : SVD.UInt16 := 16#2880#;
      --  unspecified
      Reserved_24_31 : SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WR_TIM_CONF1_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PWR_ON_NUM     at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Configurarion register 2 of eFuse programming timing parameters.
   type WR_TIM_CONF2_Register is record
      --  Configures the power outage time for VDDQ.
      PWR_OFF_NUM    : SVD.UInt16 := 16#190#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WR_TIM_CONF2_Register use record
      PWR_OFF_NUM    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  eFuse version register.
   type DATE_Register is record
      --  Stores eFuse version.
      DATE           : SVD.UInt28 := 16#2101290#;
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

   --  eFuse Controller
   type EFUSE_Peripheral is record
      --  Register 0 that stores data to be programmed.
      PGM_DATA0          : aliased SVD.UInt32;
      --  Register 1 that stores data to be programmed.
      PGM_DATA1          : aliased SVD.UInt32;
      --  Register 2 that stores data to be programmed.
      PGM_DATA2          : aliased SVD.UInt32;
      --  Register 3 that stores data to be programmed.
      PGM_DATA3          : aliased SVD.UInt32;
      --  Register 4 that stores data to be programmed.
      PGM_DATA4          : aliased SVD.UInt32;
      --  Register 5 that stores data to be programmed.
      PGM_DATA5          : aliased SVD.UInt32;
      --  Register 6 that stores data to be programmed.
      PGM_DATA6          : aliased SVD.UInt32;
      --  Register 7 that stores data to be programmed.
      PGM_DATA7          : aliased SVD.UInt32;
      --  Register 0 that stores the RS code to be programmed.
      PGM_CHECK_VALUE0   : aliased SVD.UInt32;
      --  Register 1 that stores the RS code to be programmed.
      PGM_CHECK_VALUE1   : aliased SVD.UInt32;
      --  Register 2 that stores the RS code to be programmed.
      PGM_CHECK_VALUE2   : aliased SVD.UInt32;
      --  BLOCK0 data register 0.
      RD_WR_DIS          : aliased SVD.UInt32;
      --  BLOCK0 data register 1.
      RD_REPEAT_DATA0    : aliased RD_REPEAT_DATA0_Register;
      --  BLOCK0 data register 2.
      RD_REPEAT_DATA1    : aliased RD_REPEAT_DATA1_Register;
      --  BLOCK0 data register 3.
      RD_REPEAT_DATA2    : aliased RD_REPEAT_DATA2_Register;
      --  BLOCK0 data register 4.
      RD_REPEAT_DATA3    : aliased RD_REPEAT_DATA3_Register;
      --  BLOCK0 data register 5.
      RD_REPEAT_DATA4    : aliased RD_REPEAT_DATA4_Register;
      --  BLOCK1 data register 0.
      RD_MAC_SPI_SYS_0   : aliased SVD.UInt32;
      --  BLOCK1 data register 1.
      RD_MAC_SPI_SYS_1   : aliased RD_MAC_SPI_SYS_1_Register;
      --  BLOCK1 data register 2.
      RD_MAC_SPI_SYS_2   : aliased SVD.UInt32;
      --  BLOCK1 data register 3.
      RD_MAC_SPI_SYS_3   : aliased RD_MAC_SPI_SYS_3_Register;
      --  BLOCK1 data register 4.
      RD_MAC_SPI_SYS_4   : aliased SVD.UInt32;
      --  BLOCK1 data register 5.
      RD_MAC_SPI_SYS_5   : aliased SVD.UInt32;
      --  Register 0 of BLOCK2 (system).
      RD_SYS_PART1_DATA0 : aliased SVD.UInt32;
      --  Register 1 of BLOCK2 (system).
      RD_SYS_PART1_DATA1 : aliased SVD.UInt32;
      --  Register 2 of BLOCK2 (system).
      RD_SYS_PART1_DATA2 : aliased SVD.UInt32;
      --  Register 3 of BLOCK2 (system).
      RD_SYS_PART1_DATA3 : aliased SVD.UInt32;
      --  Register 4 of BLOCK2 (system).
      RD_SYS_PART1_DATA4 : aliased SVD.UInt32;
      --  Register 5 of BLOCK2 (system).
      RD_SYS_PART1_DATA5 : aliased SVD.UInt32;
      --  Register 6 of BLOCK2 (system).
      RD_SYS_PART1_DATA6 : aliased SVD.UInt32;
      --  Register 7 of BLOCK2 (system).
      RD_SYS_PART1_DATA7 : aliased SVD.UInt32;
      --  Register 0 of BLOCK3 (user).
      RD_USR_DATA0       : aliased SVD.UInt32;
      --  Register 1 of BLOCK3 (user).
      RD_USR_DATA1       : aliased SVD.UInt32;
      --  Register 2 of BLOCK3 (user).
      RD_USR_DATA2       : aliased SVD.UInt32;
      --  Register 3 of BLOCK3 (user).
      RD_USR_DATA3       : aliased SVD.UInt32;
      --  Register 4 of BLOCK3 (user).
      RD_USR_DATA4       : aliased SVD.UInt32;
      --  Register 5 of BLOCK3 (user).
      RD_USR_DATA5       : aliased SVD.UInt32;
      --  Register 6 of BLOCK3 (user).
      RD_USR_DATA6       : aliased SVD.UInt32;
      --  Register 7 of BLOCK3 (user).
      RD_USR_DATA7       : aliased SVD.UInt32;
      --  Register 0 of BLOCK4 (KEY0).
      RD_KEY0_DATA0      : aliased SVD.UInt32;
      --  Register 1 of BLOCK4 (KEY0).
      RD_KEY0_DATA1      : aliased SVD.UInt32;
      --  Register 2 of BLOCK4 (KEY0).
      RD_KEY0_DATA2      : aliased SVD.UInt32;
      --  Register 3 of BLOCK4 (KEY0).
      RD_KEY0_DATA3      : aliased SVD.UInt32;
      --  Register 4 of BLOCK4 (KEY0).
      RD_KEY0_DATA4      : aliased SVD.UInt32;
      --  Register 5 of BLOCK4 (KEY0).
      RD_KEY0_DATA5      : aliased SVD.UInt32;
      --  Register 6 of BLOCK4 (KEY0).
      RD_KEY0_DATA6      : aliased SVD.UInt32;
      --  Register 7 of BLOCK4 (KEY0).
      RD_KEY0_DATA7      : aliased SVD.UInt32;
      --  Register 0 of BLOCK5 (KEY1).
      RD_KEY1_DATA0      : aliased SVD.UInt32;
      --  Register 1 of BLOCK5 (KEY1).
      RD_KEY1_DATA1      : aliased SVD.UInt32;
      --  Register 2 of BLOCK5 (KEY1).
      RD_KEY1_DATA2      : aliased SVD.UInt32;
      --  Register 3 of BLOCK5 (KEY1).
      RD_KEY1_DATA3      : aliased SVD.UInt32;
      --  Register 4 of BLOCK5 (KEY1).
      RD_KEY1_DATA4      : aliased SVD.UInt32;
      --  Register 5 of BLOCK5 (KEY1).
      RD_KEY1_DATA5      : aliased SVD.UInt32;
      --  Register 6 of BLOCK5 (KEY1).
      RD_KEY1_DATA6      : aliased SVD.UInt32;
      --  Register 7 of BLOCK5 (KEY1).
      RD_KEY1_DATA7      : aliased SVD.UInt32;
      --  Register 0 of BLOCK6 (KEY2).
      RD_KEY2_DATA0      : aliased SVD.UInt32;
      --  Register 1 of BLOCK6 (KEY2).
      RD_KEY2_DATA1      : aliased SVD.UInt32;
      --  Register 2 of BLOCK6 (KEY2).
      RD_KEY2_DATA2      : aliased SVD.UInt32;
      --  Register 3 of BLOCK6 (KEY2).
      RD_KEY2_DATA3      : aliased SVD.UInt32;
      --  Register 4 of BLOCK6 (KEY2).
      RD_KEY2_DATA4      : aliased SVD.UInt32;
      --  Register 5 of BLOCK6 (KEY2).
      RD_KEY2_DATA5      : aliased SVD.UInt32;
      --  Register 6 of BLOCK6 (KEY2).
      RD_KEY2_DATA6      : aliased SVD.UInt32;
      --  Register 7 of BLOCK6 (KEY2).
      RD_KEY2_DATA7      : aliased SVD.UInt32;
      --  Register 0 of BLOCK7 (KEY3).
      RD_KEY3_DATA0      : aliased SVD.UInt32;
      --  Register 1 of BLOCK7 (KEY3).
      RD_KEY3_DATA1      : aliased SVD.UInt32;
      --  Register 2 of BLOCK7 (KEY3).
      RD_KEY3_DATA2      : aliased SVD.UInt32;
      --  Register 3 of BLOCK7 (KEY3).
      RD_KEY3_DATA3      : aliased SVD.UInt32;
      --  Register 4 of BLOCK7 (KEY3).
      RD_KEY3_DATA4      : aliased SVD.UInt32;
      --  Register 5 of BLOCK7 (KEY3).
      RD_KEY3_DATA5      : aliased SVD.UInt32;
      --  Register 6 of BLOCK7 (KEY3).
      RD_KEY3_DATA6      : aliased SVD.UInt32;
      --  Register 7 of BLOCK7 (KEY3).
      RD_KEY3_DATA7      : aliased SVD.UInt32;
      --  Register 0 of BLOCK8 (KEY4).
      RD_KEY4_DATA0      : aliased SVD.UInt32;
      --  Register 1 of BLOCK8 (KEY4).
      RD_KEY4_DATA1      : aliased SVD.UInt32;
      --  Register 2 of BLOCK8 (KEY4).
      RD_KEY4_DATA2      : aliased SVD.UInt32;
      --  Register 3 of BLOCK8 (KEY4).
      RD_KEY4_DATA3      : aliased SVD.UInt32;
      --  Register 4 of BLOCK8 (KEY4).
      RD_KEY4_DATA4      : aliased SVD.UInt32;
      --  Register 5 of BLOCK8 (KEY4).
      RD_KEY4_DATA5      : aliased SVD.UInt32;
      --  Register 6 of BLOCK8 (KEY4).
      RD_KEY4_DATA6      : aliased SVD.UInt32;
      --  Register 7 of BLOCK8 (KEY4).
      RD_KEY4_DATA7      : aliased SVD.UInt32;
      --  Register 0 of BLOCK9 (KEY5).
      RD_KEY5_DATA0      : aliased SVD.UInt32;
      --  Register 1 of BLOCK9 (KEY5).
      RD_KEY5_DATA1      : aliased SVD.UInt32;
      --  Register 2 of BLOCK9 (KEY5).
      RD_KEY5_DATA2      : aliased SVD.UInt32;
      --  Register 3 of BLOCK9 (KEY5).
      RD_KEY5_DATA3      : aliased SVD.UInt32;
      --  Register 4 of BLOCK9 (KEY5).
      RD_KEY5_DATA4      : aliased SVD.UInt32;
      --  Register 5 of BLOCK9 (KEY5).
      RD_KEY5_DATA5      : aliased SVD.UInt32;
      --  Register 6 of BLOCK9 (KEY5).
      RD_KEY5_DATA6      : aliased SVD.UInt32;
      --  Register 7 of BLOCK9 (KEY5).
      RD_KEY5_DATA7      : aliased SVD.UInt32;
      --  Register 0 of BLOCK10 (system).
      RD_SYS_PART2_DATA0 : aliased SVD.UInt32;
      --  Register 1 of BLOCK9 (KEY5).
      RD_SYS_PART2_DATA1 : aliased SVD.UInt32;
      --  Register 2 of BLOCK10 (system).
      RD_SYS_PART2_DATA2 : aliased SVD.UInt32;
      --  Register 3 of BLOCK10 (system).
      RD_SYS_PART2_DATA3 : aliased SVD.UInt32;
      --  Register 4 of BLOCK10 (system).
      RD_SYS_PART2_DATA4 : aliased SVD.UInt32;
      --  Register 5 of BLOCK10 (system).
      RD_SYS_PART2_DATA5 : aliased SVD.UInt32;
      --  Register 6 of BLOCK10 (system).
      RD_SYS_PART2_DATA6 : aliased SVD.UInt32;
      --  Register 7 of BLOCK10 (system).
      RD_SYS_PART2_DATA7 : aliased SVD.UInt32;
      --  Programming error record register 0 of BLOCK0.
      RD_REPEAT_ERR0     : aliased RD_REPEAT_ERR0_Register;
      --  Programming error record register 1 of BLOCK0.
      RD_REPEAT_ERR1     : aliased RD_REPEAT_ERR1_Register;
      --  Programming error record register 2 of BLOCK0.
      RD_REPEAT_ERR2     : aliased RD_REPEAT_ERR2_Register;
      --  Programming error record register 3 of BLOCK0.
      RD_REPEAT_ERR3     : aliased RD_REPEAT_ERR3_Register;
      --  Programming error record register 4 of BLOCK0.
      RD_REPEAT_ERR4     : aliased RD_REPEAT_ERR4_Register;
      --  Programming error record register 0 of BLOCK1-10.
      RD_RS_ERR0         : aliased RD_RS_ERR0_Register;
      --  Programming error record register 1 of BLOCK1-10.
      RD_RS_ERR1         : aliased RD_RS_ERR1_Register;
      --  eFuse clcok configuration register.
      CLK                : aliased CLK_Register;
      --  eFuse operation mode configuraiton register
      CONF               : aliased CONF_Register;
      --  eFuse status register.
      STATUS             : aliased STATUS_Register;
      --  eFuse command register.
      CMD                : aliased CMD_Register;
      --  eFuse raw interrupt register.
      INT_RAW            : aliased INT_RAW_Register;
      --  eFuse interrupt status register.
      INT_ST             : aliased INT_ST_Register;
      --  eFuse interrupt enable register.
      INT_ENA            : aliased INT_ENA_Register;
      --  eFuse interrupt clear register.
      INT_CLR            : aliased INT_CLR_Register;
      --  Controls the eFuse programming voltage.
      DAC_CONF           : aliased DAC_CONF_Register;
      --  Configures read timing parameters.
      RD_TIM_CONF        : aliased RD_TIM_CONF_Register;
      --  Configurarion register 1 of eFuse programming timing parameters.
      WR_TIM_CONF1       : aliased WR_TIM_CONF1_Register;
      --  Configurarion register 2 of eFuse programming timing parameters.
      WR_TIM_CONF2       : aliased WR_TIM_CONF2_Register;
      --  eFuse version register.
      DATE               : aliased DATE_Register;
   end record
     with Volatile;

   for EFUSE_Peripheral use record
      PGM_DATA0          at 16#0# range 0 .. 31;
      PGM_DATA1          at 16#4# range 0 .. 31;
      PGM_DATA2          at 16#8# range 0 .. 31;
      PGM_DATA3          at 16#C# range 0 .. 31;
      PGM_DATA4          at 16#10# range 0 .. 31;
      PGM_DATA5          at 16#14# range 0 .. 31;
      PGM_DATA6          at 16#18# range 0 .. 31;
      PGM_DATA7          at 16#1C# range 0 .. 31;
      PGM_CHECK_VALUE0   at 16#20# range 0 .. 31;
      PGM_CHECK_VALUE1   at 16#24# range 0 .. 31;
      PGM_CHECK_VALUE2   at 16#28# range 0 .. 31;
      RD_WR_DIS          at 16#2C# range 0 .. 31;
      RD_REPEAT_DATA0    at 16#30# range 0 .. 31;
      RD_REPEAT_DATA1    at 16#34# range 0 .. 31;
      RD_REPEAT_DATA2    at 16#38# range 0 .. 31;
      RD_REPEAT_DATA3    at 16#3C# range 0 .. 31;
      RD_REPEAT_DATA4    at 16#40# range 0 .. 31;
      RD_MAC_SPI_SYS_0   at 16#44# range 0 .. 31;
      RD_MAC_SPI_SYS_1   at 16#48# range 0 .. 31;
      RD_MAC_SPI_SYS_2   at 16#4C# range 0 .. 31;
      RD_MAC_SPI_SYS_3   at 16#50# range 0 .. 31;
      RD_MAC_SPI_SYS_4   at 16#54# range 0 .. 31;
      RD_MAC_SPI_SYS_5   at 16#58# range 0 .. 31;
      RD_SYS_PART1_DATA0 at 16#5C# range 0 .. 31;
      RD_SYS_PART1_DATA1 at 16#60# range 0 .. 31;
      RD_SYS_PART1_DATA2 at 16#64# range 0 .. 31;
      RD_SYS_PART1_DATA3 at 16#68# range 0 .. 31;
      RD_SYS_PART1_DATA4 at 16#6C# range 0 .. 31;
      RD_SYS_PART1_DATA5 at 16#70# range 0 .. 31;
      RD_SYS_PART1_DATA6 at 16#74# range 0 .. 31;
      RD_SYS_PART1_DATA7 at 16#78# range 0 .. 31;
      RD_USR_DATA0       at 16#7C# range 0 .. 31;
      RD_USR_DATA1       at 16#80# range 0 .. 31;
      RD_USR_DATA2       at 16#84# range 0 .. 31;
      RD_USR_DATA3       at 16#88# range 0 .. 31;
      RD_USR_DATA4       at 16#8C# range 0 .. 31;
      RD_USR_DATA5       at 16#90# range 0 .. 31;
      RD_USR_DATA6       at 16#94# range 0 .. 31;
      RD_USR_DATA7       at 16#98# range 0 .. 31;
      RD_KEY0_DATA0      at 16#9C# range 0 .. 31;
      RD_KEY0_DATA1      at 16#A0# range 0 .. 31;
      RD_KEY0_DATA2      at 16#A4# range 0 .. 31;
      RD_KEY0_DATA3      at 16#A8# range 0 .. 31;
      RD_KEY0_DATA4      at 16#AC# range 0 .. 31;
      RD_KEY0_DATA5      at 16#B0# range 0 .. 31;
      RD_KEY0_DATA6      at 16#B4# range 0 .. 31;
      RD_KEY0_DATA7      at 16#B8# range 0 .. 31;
      RD_KEY1_DATA0      at 16#BC# range 0 .. 31;
      RD_KEY1_DATA1      at 16#C0# range 0 .. 31;
      RD_KEY1_DATA2      at 16#C4# range 0 .. 31;
      RD_KEY1_DATA3      at 16#C8# range 0 .. 31;
      RD_KEY1_DATA4      at 16#CC# range 0 .. 31;
      RD_KEY1_DATA5      at 16#D0# range 0 .. 31;
      RD_KEY1_DATA6      at 16#D4# range 0 .. 31;
      RD_KEY1_DATA7      at 16#D8# range 0 .. 31;
      RD_KEY2_DATA0      at 16#DC# range 0 .. 31;
      RD_KEY2_DATA1      at 16#E0# range 0 .. 31;
      RD_KEY2_DATA2      at 16#E4# range 0 .. 31;
      RD_KEY2_DATA3      at 16#E8# range 0 .. 31;
      RD_KEY2_DATA4      at 16#EC# range 0 .. 31;
      RD_KEY2_DATA5      at 16#F0# range 0 .. 31;
      RD_KEY2_DATA6      at 16#F4# range 0 .. 31;
      RD_KEY2_DATA7      at 16#F8# range 0 .. 31;
      RD_KEY3_DATA0      at 16#FC# range 0 .. 31;
      RD_KEY3_DATA1      at 16#100# range 0 .. 31;
      RD_KEY3_DATA2      at 16#104# range 0 .. 31;
      RD_KEY3_DATA3      at 16#108# range 0 .. 31;
      RD_KEY3_DATA4      at 16#10C# range 0 .. 31;
      RD_KEY3_DATA5      at 16#110# range 0 .. 31;
      RD_KEY3_DATA6      at 16#114# range 0 .. 31;
      RD_KEY3_DATA7      at 16#118# range 0 .. 31;
      RD_KEY4_DATA0      at 16#11C# range 0 .. 31;
      RD_KEY4_DATA1      at 16#120# range 0 .. 31;
      RD_KEY4_DATA2      at 16#124# range 0 .. 31;
      RD_KEY4_DATA3      at 16#128# range 0 .. 31;
      RD_KEY4_DATA4      at 16#12C# range 0 .. 31;
      RD_KEY4_DATA5      at 16#130# range 0 .. 31;
      RD_KEY4_DATA6      at 16#134# range 0 .. 31;
      RD_KEY4_DATA7      at 16#138# range 0 .. 31;
      RD_KEY5_DATA0      at 16#13C# range 0 .. 31;
      RD_KEY5_DATA1      at 16#140# range 0 .. 31;
      RD_KEY5_DATA2      at 16#144# range 0 .. 31;
      RD_KEY5_DATA3      at 16#148# range 0 .. 31;
      RD_KEY5_DATA4      at 16#14C# range 0 .. 31;
      RD_KEY5_DATA5      at 16#150# range 0 .. 31;
      RD_KEY5_DATA6      at 16#154# range 0 .. 31;
      RD_KEY5_DATA7      at 16#158# range 0 .. 31;
      RD_SYS_PART2_DATA0 at 16#15C# range 0 .. 31;
      RD_SYS_PART2_DATA1 at 16#160# range 0 .. 31;
      RD_SYS_PART2_DATA2 at 16#164# range 0 .. 31;
      RD_SYS_PART2_DATA3 at 16#168# range 0 .. 31;
      RD_SYS_PART2_DATA4 at 16#16C# range 0 .. 31;
      RD_SYS_PART2_DATA5 at 16#170# range 0 .. 31;
      RD_SYS_PART2_DATA6 at 16#174# range 0 .. 31;
      RD_SYS_PART2_DATA7 at 16#178# range 0 .. 31;
      RD_REPEAT_ERR0     at 16#17C# range 0 .. 31;
      RD_REPEAT_ERR1     at 16#180# range 0 .. 31;
      RD_REPEAT_ERR2     at 16#184# range 0 .. 31;
      RD_REPEAT_ERR3     at 16#188# range 0 .. 31;
      RD_REPEAT_ERR4     at 16#190# range 0 .. 31;
      RD_RS_ERR0         at 16#1C0# range 0 .. 31;
      RD_RS_ERR1         at 16#1C4# range 0 .. 31;
      CLK                at 16#1C8# range 0 .. 31;
      CONF               at 16#1CC# range 0 .. 31;
      STATUS             at 16#1D0# range 0 .. 31;
      CMD                at 16#1D4# range 0 .. 31;
      INT_RAW            at 16#1D8# range 0 .. 31;
      INT_ST             at 16#1DC# range 0 .. 31;
      INT_ENA            at 16#1E0# range 0 .. 31;
      INT_CLR            at 16#1E4# range 0 .. 31;
      DAC_CONF           at 16#1E8# range 0 .. 31;
      RD_TIM_CONF        at 16#1EC# range 0 .. 31;
      WR_TIM_CONF1       at 16#1F4# range 0 .. 31;
      WR_TIM_CONF2       at 16#1F8# range 0 .. 31;
      DATE               at 16#1FC# range 0 .. 31;
   end record;

   --  eFuse Controller
   EFUSE_Periph : aliased EFUSE_Peripheral
     with Import, Address => EFUSE_Base;

end SVD.EFUSE;
