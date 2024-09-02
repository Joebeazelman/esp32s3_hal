--  SPDX-FileCopyrightText: 2021 Max Reznik <reznikmm@gmail.com>
--
--  SPDX-License-Identifier: MIT
-------------------------------------------------------------

package ESP32.GPIO is
   pragma Preelaborate;
   pragma Discard_Names;

   type GPIO_Pad is range 0 .. 39;
   --  The ESP32 chip features 34 physical GPIO pads with numbers 0 .. 39
   --  and some of numbers are reserved.

   subtype Reserved_GPIO_Pad is GPIO_Pad
     with Static_Predicate =>
       Reserved_GPIO_Pad not in 0 .. 19 | 21 .. 23 | 25 .. 27 | 32 .. 39;

   subtype Input_Only_GPIO_Pad is GPIO_Pad range 34 .. 39;
   --  GPIO pads 34-39 are input-only.

   type Pad_Direction is (Input, Output, Disable);
   --  Direction of a GPIO pad

   type Input_Signal is
     (SPICLK, SPIQ, SPID, SPIHD, SPIWP, SPICS0, SPICS1, SPICS2,
      HSPICLK, HSPIQ, HSPID, HSPICS0, HSPIHD, HSPIWP,
      U0RXD, U0CTS, U0DSR, U1RXD, U1CTS,
      I2CM_SDA,
      EXT_I2C_SDA,
      I2S0O_BCK, I2S1O_BCK, I2S0O_WS, I2S1O_WS, I2S0I_BCK,
      I2S0I_WS, I2CEXT0_SCL, I2CEXT0_SDA,
      PWM0_SYNC0, PWM0_SYNC1, PWM0_SYNC2,
      PWM0_F0, PWM0_F1, PWM0_F2,
      GPIO_BT_ACTIVE, GPIO_BT_PRIORITY,
      PCNT_SIG_CH0_IN0, PCNT_SIG_CH1_IN0,
      PCNT_CTRL_CH0_IN0, PCNT_CTRL_CH1_IN0,
      PCNT_SIG_CH0_IN1, PCNT_SIG_CH1_IN1,
      PCNT_CTRL_CH0_IN1, PCNT_CTRL_CH1_IN1,
      PCNT_SIG_CH0_IN2, PCNT_SIG_CH1_IN2,
      PCNT_CTRL_CH0_IN2, PCNT_CTRL_CH1_IN2,
      PCNT_SIG_CH0_IN3, PCNT_SIG_CH1_IN3,
      PCNT_CTRL_CH0_IN3, PCNT_CTRL_CH1_IN3,
      PCNT_SIG_CH0_IN4, PCNT_SIG_CH1_IN4,
      PCNT_CTRL_CH0_IN4, PCNT_CTRL_CH1_IN4,
      HSPICS1, HSPICS2,
      VSPICLK, VSPIQ, VSPID, VSPIHD, VSPIWP, VSPICS0, VSPICS1, VSPICS2,
      PCNT_SIG_CH0_IN5, PCNT_SIG_CH1_IN5,
      PCNT_CTRL_CH0_IN5, PCNT_CTRL_CH1_IN5,
      PCNT_SIG_CH0_IN6, PCNT_SIG_CH1_IN6,
      PCNT_CTRL_CH0_IN6, PCNT_CTRL_CH1_IN6,
      PCNT_SIG_CH0_IN7, PCNT_SIG_CH1_IN7,
      PCNT_CTRL_CH0_IN7, PCNT_CTRL_CH1_IN7,
      RMT_SIG_IN0, RMT_SIG_IN1, RMT_SIG_IN2, RMT_SIG_IN3,
      RMT_SIG_IN4, RMT_SIG_IN5, RMT_SIG_IN6, RMT_SIG_IN7,
      EXT_ADC_START,
      TWAI_RX,
      I2CEXT1_SCL, I2CEXT1_SDA,
      HOST_CARD_DETECT_N_1, HOST_CARD_DETECT_N_2,
      HOST_CARD_WRITE_PRT_1, HOST_CARD_WRITE_PRT_2,
      HOST_CARD_INT_N_1, HOST_CARD_INT_N_2,
      PWM1_SYNC0, PWM1_SYNC1, PWM1_SYNC2,
      PWM1_F0, PWM1_F1, PWM1_F2,
      PWM0_CAP0, PWM0_CAP1, PWM0_CAP2,
      PWM1_CAP0, PWM1_CAP1, PWM1_CAP2,
      PWM2_FLTA, PWM2_FLTB,
      PWM2_CAP1, PWM2_CAP2, PWM2_CAP3,
      PWM3_FLTA, PWM3_FLTB,
      PWM3_CAP1, PWM3_CAP2, PWM3_CAP3,
      TWAI_CLKOUT,
      SPID4, SPID5, SPID6, SPID7,
      HSPID4, HSPID5, HSPID6, HSPID7,
      VSPID4, VSPID5, VSPID6, VSPID7,
      I2S0I_DATA_IN0, I2S0I_DATA_IN1, I2S0I_DATA_IN2, I2S0I_DATA_IN3,
      I2S0I_DATA_IN4, I2S0I_DATA_IN5, I2S0I_DATA_IN6, I2S0I_DATA_IN7,
      I2S0I_DATA_IN8, I2S0I_DATA_IN9, I2S0I_DATA_IN10, I2S0I_DATA_IN11,
      I2S0I_DATA_IN12, I2S0I_DATA_IN13, I2S0I_DATA_IN14, I2S0I_DATA_IN15,
      I2S1I_BCK,
      I2S1I_WS,
      I2S1I_DATA_IN0, I2S1I_DATA_IN1, I2S1I_DATA_IN2, I2S1I_DATA_IN3,
      I2S1I_DATA_IN4, I2S1I_DATA_IN5, I2S1I_DATA_IN6, I2S1I_DATA_IN7,
      I2S1I_DATA_IN8, I2S1I_DATA_IN9, I2S1I_DATA_IN10, I2S1I_DATA_IN11,
      I2S1I_DATA_IN12, I2S1I_DATA_IN13, I2S1I_DATA_IN14, I2S1I_DATA_IN15,
      I2S0I_H_SYNC, I2S0I_V_SYNC, I2S0I_H_ENABLE, I2S1I_H_SYNC,
      I2S1I_V_SYNC, I2S1I_H_ENABLE,
      U2RXD, U2CTS,
      EMAC_MDC, EMAC_MDI, EMAC_CRS, EMAC_COL,
      PCMFSYNC, PCMCLK, PCMDIN,
      BLE_AUDIO0_IRQ, BLE_AUDIO1_IRQ, BLE_AUDIO2_IRQ,
      PCMDOUT,
      BLE_AUDIO_SYNC0_P, BLE_AUDIO_SYNC1_P, BLE_AUDIO_SYNC2_P,
      ANT_SEL0, ANT_SEL1, ANT_SEL2, ANT_SEL3,
      ANT_SEL4, ANT_SEL5, ANT_SEL6, ANT_SEL7,
      SIG_IN_FUNC224, SIG_IN_FUNC225, SIG_IN_FUNC226, SIG_IN_FUNC227,
      SIG_IN_FUNC228,
      None);
   --  GPIO Matrix input signal. None means don't configure any input, use it
   --  for simple read using GPIO_IN_REG

   type Output_Signal is
     (SPICLK, SPIQ, SPID, SPIHD, SPIWP, SPICS0, SPICS1, SPICS2,
      HSPICLK, HSPIQ, HSPID, HSPICS0, HSPIHD, HSPIWP,
      U0TXD, U0RTS, U0DTR, U1TXD, U1RTS,
      I2CM_SCL, I2CM_SDA,
      EXT_I2C_SCL, EXT_I2C_SDA,
      I2S0O_BCK, I2S1O_BCK, I2S0O_WS, I2S1O_WS, I2S0I_BCK, I2S0I_WS,
      I2CEXT0_SCL, I2CEXT0_SDA,
      SDIO_TOHOST_INT,
      PWM0_OUT0A, PWM0_OUT0B, PWM0_OUT1A, PWM0_OUT1B, PWM0_OUT2A, PWM0_OUT2B,
      GPIO_BT_PRIORITY, GPIO_WLAN_ACTIVE,
      BB_DIAG0, BB_DIAG1, BB_DIAG2, BB_DIAG3,
      BB_DIAG4, BB_DIAG5, BB_DIAG6, BB_DIAG7,
      BB_DIAG8, BB_DIAG9, BB_DIAG10, BB_DIAG11,
      BB_DIAG12, BB_DIAG13, BB_DIAG14, BB_DIAG15,
      BB_DIAG16, BB_DIAG17, BB_DIAG18, BB_DIAG19,
      HSPICS1, HSPICS2,
      VSPICLK, VSPIQ, VSPID, VSPIHD, VSPIWP, VSPICS0, VSPICS1, VSPICS2,
      LEDC_HS_SIG_OUT0, LEDC_HS_SIG_OUT1, LEDC_HS_SIG_OUT2, LEDC_HS_SIG_OUT3,
      LEDC_HS_SIG_OUT4, LEDC_HS_SIG_OUT5, LEDC_HS_SIG_OUT6, LEDC_HS_SIG_OUT7,
      LEDC_LS_SIG_OUT0, LEDC_LS_SIG_OUT1, LEDC_LS_SIG_OUT2, LEDC_LS_SIG_OUT3,
      LEDC_LS_SIG_OUT4, LEDC_LS_SIG_OUT5, LEDC_LS_SIG_OUT6, LEDC_LS_SIG_OUT7,
      RMT_SIG_OUT0, RMT_SIG_OUT1, RMT_SIG_OUT2, RMT_SIG_OUT3,
      RMT_SIG_OUT4, RMT_SIG_OUT5, RMT_SIG_OUT6, RMT_SIG_OUT7,
      I2CEXT1_SCL, I2CEXT1_SDA,
      HOST_CCMD_OD_PULLUP_EN_N,
      HOST_RST_N_1, HOST_RST_N_2,
      GPIO_SD0, GPIO_SD1, GPIO_SD2, GPIO_SD3,
      GPIO_SD4, GPIO_SD5, GPIO_SD6, GPIO_SD7,
      PWM1_OUT0A, PWM1_OUT0B, PWM1_OUT1A, PWM1_OUT1B,
      PWM1_OUT2A, PWM1_OUT2B, PWM2_OUT1H, PWM2_OUT1L,
      PWM2_OUT2H, PWM2_OUT2L, PWM2_OUT3H, PWM2_OUT3L,
      PWM2_OUT4H, PWM2_OUT4L,
      TWAI_TX, TWAI_BUS_OFF_ON, TWAI_CLKOUT,
      SPID4, SPID5, SPID6, SPID7,
      HSPID4, HSPID5, HSPID6, HSPID7,
      VSPID4, VSPID5, VSPID6, VSPID7,
      I2S0O_DATA_OUT0, I2S0O_DATA_OUT1, I2S0O_DATA_OUT2, I2S0O_DATA_OUT3,
      I2S0O_DATA_OUT4, I2S0O_DATA_OUT5, I2S0O_DATA_OUT6, I2S0O_DATA_OUT7,
      I2S0O_DATA_OUT8, I2S0O_DATA_OUT9, I2S0O_DATA_OUT10, I2S0O_DATA_OUT11,
      I2S0O_DATA_OUT12, I2S0O_DATA_OUT13, I2S0O_DATA_OUT14, I2S0O_DATA_OUT15,
      I2S0O_DATA_OUT16, I2S0O_DATA_OUT17, I2S0O_DATA_OUT18, I2S0O_DATA_OUT19,
      I2S0O_DATA_OUT20, I2S0O_DATA_OUT21, I2S0O_DATA_OUT22, I2S0O_DATA_OUT23,
      I2S1I_BCK, I2S1I_WS,
      I2S1O_DATA_OUT0, I2S1O_DATA_OUT1, I2S1O_DATA_OUT2, I2S1O_DATA_OUT3,
      I2S1O_DATA_OUT4, I2S1O_DATA_OUT5, I2S1O_DATA_OUT6, I2S1O_DATA_OUT7,
      I2S1O_DATA_OUT8, I2S1O_DATA_OUT9, I2S1O_DATA_OUT10, I2S1O_DATA_OUT11,
      I2S1O_DATA_OUT12, I2S1O_DATA_OUT13, I2S1O_DATA_OUT14, I2S1O_DATA_OUT15,
      I2S1O_DATA_OUT16, I2S1O_DATA_OUT17, I2S1O_DATA_OUT18, I2S1O_DATA_OUT19,
      I2S1O_DATA_OUT20, I2S1O_DATA_OUT21, I2S1O_DATA_OUT22, I2S1O_DATA_OUT23,
      PWM3_OUT1H, PWM3_OUT1L, PWM3_OUT2H, PWM3_OUT2L,
      PWM3_OUT3H, PWM3_OUT3L, PWM3_OUT4H, PWM3_OUT4L,
      U2TXD, U2RTS,
      EMAC_MDC, EMAC_MDO, EMAC_CRS, EMAC_COL,
      BT_AUDIO0_IRQ, BT_AUDIO1_IRQ, BT_AUDIO2_IRQ,
      BLE_AUDIO0_IRQ, BLE_AUDIO1_IRQ, BLE_AUDIO2_IRQ,
      PCMFSYNC, PCMCLK, PCMDOUT,
      BLE_AUDIO_SYNC0, BLE_AUDIO_SYNC1, BLE_AUDIO_SYNC2,
      ANT_SEL0, ANT_SEL1, ANT_SEL2, ANT_SEL3,
      ANT_SEL4, ANT_SEL5, ANT_SEL6, ANT_SEL7,
      GPIO_OUT);
   --  GPIO Matrix output signal.  GPIO_OUT - use GPIO_OUT/GPIO_ENABLE

   type IO_MUX_Signal is
     (GPIO_Matrix,  --  Route through GPIO Matrix
      CLK_OUT1,

      U0CTS,
      EMAC_RXD0,
      EMAC_RX_DV,
      EMAC_RX_CLK,
      EMAC_TXD0,
      EMAC_TX_CLK,
      HS1_DATA6,
      HS1_DATA7,
      VSPICLK,
      VSPIQ,
      VSPICS0);
   --  Signal configurable over IO_Mux

   type Interrupt_Kind is
     (Disabled,
      Rising_Edge,
      Falling_Edge,
      Any_Edge,
      Low_Level,
      High_Level);
   --  Interrupt type selection

   function Valid_IO_MUX_Signal
     (Pad : GPIO_Pad; IO_MUX : IO_MUX_Signal) return Boolean;
   --  Check if the Pad is configurable for given IO_MUX signal

   type Configuration
     (Pad       : GPIO_Pad := 0;
      IO_MUX    : IO_MUX_Signal := GPIO_Matrix;
      Direction : Pad_Direction := Disable) is
   record
      case IO_MUX is
         when GPIO_Matrix =>
            case Direction is
               when Output =>
                  Output : Output_Signal;
               when Input =>
                  Input     : Input_Signal;
                  Interrupt : Interrupt_Kind := Disabled;
               when Disable =>
                  null;
            end case;
         when others =>
            null;
      end case;
   end record
     with Dynamic_Predicate =>
       Valid_IO_MUX_Signal (Configuration.Pad, Configuration.IO_MUX)
       and then not (Configuration.Direction = ESP32.GPIO.Output
                and then Pad in Input_Only_GPIO_Pad);
   --  Configuration type represents a pad configuration for input/output and
   --  IO_MUX and/or GPIO Matrix settings.

   type Configuration_Array is array (Positive range <>) of Configuration;
   --  Vector of pad configurations

   procedure Configure (Value : Configuration);
   --  Configure a GPIO pad according to given value

   procedure Configure_All (Value : Configuration_Array);
   --  Configure GPIO pads according to given values

   procedure Set_Level
     (Pad   : GPIO_Pad;
      Value : Boolean);
   --  Change output level for the Pad

   function Get_Level (Pad : GPIO_Pad) return Boolean;
   --  Return input level of the Pad

   type GPIO_Pad_Set is array (GPIO_Pad range <>) of Boolean
     with Pack;

   subtype GPIO_40_Set is GPIO_Pad_Set (GPIO_Pad'Range);

   function Get_Interrupt_Status return GPIO_40_Set
     with Inline;
   --  Return interrupt status for each gpio pad

   procedure Set_Interrupt_Status (Value : GPIO_40_Set)
     with Inline;
   --  Set interrupt status for each gpio pad

private

   for Input_Signal use
     (SPICLK                   => 0,
      SPIQ                     => 1,
      SPID                     => 2,
      SPIHD                    => 3,
      SPIWP                    => 4,
      SPICS0                   => 5,
      SPICS1                   => 6,
      SPICS2                   => 7,
      HSPICLK                  => 8,
      HSPIQ                    => 9,
      HSPID                    => 10,
      HSPICS0                  => 11,
      HSPIHD                   => 12,
      HSPIWP                   => 13,
      U0RXD                    => 14,
      U0CTS                    => 15,
      U0DSR                    => 16,
      U1RXD                    => 17,
      U1CTS                    => 18,
      I2CM_SDA                 => 20,
      EXT_I2C_SDA              => 22,
      I2S0O_BCK                => 23,
      I2S1O_BCK                => 24,
      I2S0O_WS                 => 25,
      I2S1O_WS                 => 26,
      I2S0I_BCK                => 27,
      I2S0I_WS                 => 28,
      I2CEXT0_SCL              => 29,
      I2CEXT0_SDA              => 30,
      PWM0_SYNC0               => 31,
      PWM0_SYNC1               => 32,
      PWM0_SYNC2               => 33,
      PWM0_F0                  => 34,
      PWM0_F1                  => 35,
      PWM0_F2                  => 36,
      GPIO_BT_ACTIVE           => 37,
      GPIO_BT_PRIORITY         => 38,
      PCNT_SIG_CH0_IN0         => 39,
      PCNT_SIG_CH1_IN0         => 40,
      PCNT_CTRL_CH0_IN0        => 41,
      PCNT_CTRL_CH1_IN0        => 42,
      PCNT_SIG_CH0_IN1         => 43,
      PCNT_SIG_CH1_IN1         => 44,
      PCNT_CTRL_CH0_IN1        => 45,
      PCNT_CTRL_CH1_IN1        => 46,
      PCNT_SIG_CH0_IN2         => 47,
      PCNT_SIG_CH1_IN2         => 48,
      PCNT_CTRL_CH0_IN2        => 49,
      PCNT_CTRL_CH1_IN2        => 50,
      PCNT_SIG_CH0_IN3         => 51,
      PCNT_SIG_CH1_IN3         => 52,
      PCNT_CTRL_CH0_IN3        => 53,
      PCNT_CTRL_CH1_IN3        => 54,
      PCNT_SIG_CH0_IN4         => 55,
      PCNT_SIG_CH1_IN4         => 56,
      PCNT_CTRL_CH0_IN4        => 57,
      PCNT_CTRL_CH1_IN4        => 58,
      HSPICS1                  => 61,
      HSPICS2                  => 62,
      VSPICLK                  => 63,
      VSPIQ                    => 64,
      VSPID                    => 65,
      VSPIHD                   => 66,
      VSPIWP                   => 67,
      VSPICS0                  => 68,
      VSPICS1                  => 69,
      VSPICS2                  => 70,
      PCNT_SIG_CH0_IN5         => 71,
      PCNT_SIG_CH1_IN5         => 72,
      PCNT_CTRL_CH0_IN5        => 73,
      PCNT_CTRL_CH1_IN5        => 74,
      PCNT_SIG_CH0_IN6         => 75,
      PCNT_SIG_CH1_IN6         => 76,
      PCNT_CTRL_CH0_IN6        => 77,
      PCNT_CTRL_CH1_IN6        => 78,
      PCNT_SIG_CH0_IN7         => 79,
      PCNT_SIG_CH1_IN7         => 80,
      PCNT_CTRL_CH0_IN7        => 81,
      PCNT_CTRL_CH1_IN7        => 82,
      RMT_SIG_IN0              => 83,
      RMT_SIG_IN1              => 84,
      RMT_SIG_IN2              => 85,
      RMT_SIG_IN3              => 86,
      RMT_SIG_IN4              => 87,
      RMT_SIG_IN5              => 88,
      RMT_SIG_IN6              => 89,
      RMT_SIG_IN7              => 90,
      EXT_ADC_START            => 93,
      TWAI_RX                  => 94,
      I2CEXT1_SCL              => 95,
      I2CEXT1_SDA              => 96,
      HOST_CARD_DETECT_N_1     => 97,
      HOST_CARD_DETECT_N_2     => 98,
      HOST_CARD_WRITE_PRT_1    => 99,
      HOST_CARD_WRITE_PRT_2    => 100,
      HOST_CARD_INT_N_1        => 101,
      HOST_CARD_INT_N_2        => 102,
      PWM1_SYNC0               => 103,
      PWM1_SYNC1               => 104,
      PWM1_SYNC2               => 105,
      PWM1_F0                  => 106,
      PWM1_F1                  => 107,
      PWM1_F2                  => 108,
      PWM0_CAP0                => 109,
      PWM0_CAP1                => 110,
      PWM0_CAP2                => 111,
      PWM1_CAP0                => 112,
      PWM1_CAP1                => 113,
      PWM1_CAP2                => 114,
      PWM2_FLTA                => 115,
      PWM2_FLTB                => 116,
      PWM2_CAP1                => 117,
      PWM2_CAP2                => 118,
      PWM2_CAP3                => 119,
      PWM3_FLTA                => 120,
      PWM3_FLTB                => 121,
      PWM3_CAP1                => 122,
      PWM3_CAP2                => 123,
      PWM3_CAP3                => 124,
      TWAI_CLKOUT              => 125,
      SPID4                    => 128,
      SPID5                    => 129,
      SPID6                    => 130,
      SPID7                    => 131,
      HSPID4                   => 132,
      HSPID5                   => 133,
      HSPID6                   => 134,
      HSPID7                   => 135,
      VSPID4                   => 136,
      VSPID5                   => 137,
      VSPID6                   => 138,
      VSPID7                   => 139,
      I2S0I_DATA_IN0           => 140,
      I2S0I_DATA_IN1           => 141,
      I2S0I_DATA_IN2           => 142,
      I2S0I_DATA_IN3           => 143,
      I2S0I_DATA_IN4           => 144,
      I2S0I_DATA_IN5           => 145,
      I2S0I_DATA_IN6           => 146,
      I2S0I_DATA_IN7           => 147,
      I2S0I_DATA_IN8           => 148,
      I2S0I_DATA_IN9           => 149,
      I2S0I_DATA_IN10          => 150,
      I2S0I_DATA_IN11          => 151,
      I2S0I_DATA_IN12          => 152,
      I2S0I_DATA_IN13          => 153,
      I2S0I_DATA_IN14          => 154,
      I2S0I_DATA_IN15          => 155,
      I2S1I_BCK                => 164,
      I2S1I_WS                 => 165,
      I2S1I_DATA_IN0           => 166,
      I2S1I_DATA_IN1           => 167,
      I2S1I_DATA_IN2           => 168,
      I2S1I_DATA_IN3           => 169,
      I2S1I_DATA_IN4           => 170,
      I2S1I_DATA_IN5           => 171,
      I2S1I_DATA_IN6           => 172,
      I2S1I_DATA_IN7           => 173,
      I2S1I_DATA_IN8           => 174,
      I2S1I_DATA_IN9           => 175,
      I2S1I_DATA_IN10          => 176,
      I2S1I_DATA_IN11          => 177,
      I2S1I_DATA_IN12          => 178,
      I2S1I_DATA_IN13          => 179,
      I2S1I_DATA_IN14          => 180,
      I2S1I_DATA_IN15          => 181,
      I2S0I_H_SYNC             => 190,
      I2S0I_V_SYNC             => 191,
      I2S0I_H_ENABLE           => 192,
      I2S1I_H_SYNC             => 193,
      I2S1I_V_SYNC             => 194,
      I2S1I_H_ENABLE           => 195,
      U2RXD                    => 198,
      U2CTS                    => 199,
      EMAC_MDC                 => 200,
      EMAC_MDI                 => 201,
      EMAC_CRS                 => 202,
      EMAC_COL                 => 203,
      PCMFSYNC                 => 204,
      PCMCLK                   => 205,
      PCMDIN                   => 206,
      BLE_AUDIO0_IRQ           => 207,
      BLE_AUDIO1_IRQ           => 208,
      BLE_AUDIO2_IRQ           => 209,
      PCMDOUT                  => 212,
      BLE_AUDIO_SYNC0_P        => 213,
      BLE_AUDIO_SYNC1_P        => 214,
      BLE_AUDIO_SYNC2_P        => 215,
      ANT_SEL0                 => 216,
      ANT_SEL1                 => 217,
      ANT_SEL2                 => 218,
      ANT_SEL3                 => 219,
      ANT_SEL4                 => 220,
      ANT_SEL5                 => 221,
      ANT_SEL6                 => 222,
      ANT_SEL7                 => 223,
      SIG_IN_FUNC224           => 224,
      SIG_IN_FUNC225           => 225,
      SIG_IN_FUNC226           => 226,
      SIG_IN_FUNC227           => 227,
      SIG_IN_FUNC228           => 228,
      None                     => 255);

   for Output_Signal use
     (SPICLK                       => 0,
      SPIQ                         => 1,
      SPID                         => 2,
      SPIHD                        => 3,
      SPIWP                        => 4,
      SPICS0                       => 5,
      SPICS1                       => 6,
      SPICS2                       => 7,
      HSPICLK                      => 8,
      HSPIQ                        => 9,
      HSPID                        => 10,
      HSPICS0                      => 11,
      HSPIHD                       => 12,
      HSPIWP                       => 13,
      U0TXD                        => 14,
      U0RTS                        => 15,
      U0DTR                        => 16,
      U1TXD                        => 17,
      U1RTS                        => 18,
      I2CM_SCL                     => 19,
      I2CM_SDA                     => 20,
      EXT_I2C_SCL                  => 21,
      EXT_I2C_SDA                  => 22,
      I2S0O_BCK                    => 23,
      I2S1O_BCK                    => 24,
      I2S0O_WS                     => 25,
      I2S1O_WS                     => 26,
      I2S0I_BCK                    => 27,
      I2S0I_WS                     => 28,
      I2CEXT0_SCL                  => 29,
      I2CEXT0_SDA                  => 30,
      SDIO_TOHOST_INT              => 31,
      PWM0_OUT0A                   => 32,
      PWM0_OUT0B                   => 33,
      PWM0_OUT1A                   => 34,
      PWM0_OUT1B                   => 35,
      PWM0_OUT2A                   => 36,
      PWM0_OUT2B                   => 37,
      GPIO_BT_PRIORITY             => 38,
      GPIO_WLAN_ACTIVE             => 40,
      BB_DIAG0                     => 41,
      BB_DIAG1                     => 42,
      BB_DIAG2                     => 43,
      BB_DIAG3                     => 44,
      BB_DIAG4                     => 45,
      BB_DIAG5                     => 46,
      BB_DIAG6                     => 47,
      BB_DIAG7                     => 48,
      BB_DIAG8                     => 49,
      BB_DIAG9                     => 50,
      BB_DIAG10                    => 51,
      BB_DIAG11                    => 52,
      BB_DIAG12                    => 53,
      BB_DIAG13                    => 54,
      BB_DIAG14                    => 55,
      BB_DIAG15                    => 56,
      BB_DIAG16                    => 57,
      BB_DIAG17                    => 58,
      BB_DIAG18                    => 59,
      BB_DIAG19                    => 60,
      HSPICS1                      => 61,
      HSPICS2                      => 62,
      VSPICLK                      => 63,
      VSPIQ                        => 64,
      VSPID                        => 65,
      VSPIHD                       => 66,
      VSPIWP                       => 67,
      VSPICS0                      => 68,
      VSPICS1                      => 69,
      VSPICS2                      => 70,
      LEDC_HS_SIG_OUT0             => 71,
      LEDC_HS_SIG_OUT1             => 72,
      LEDC_HS_SIG_OUT2             => 73,
      LEDC_HS_SIG_OUT3             => 74,
      LEDC_HS_SIG_OUT4             => 75,
      LEDC_HS_SIG_OUT5             => 76,
      LEDC_HS_SIG_OUT6             => 77,
      LEDC_HS_SIG_OUT7             => 78,
      LEDC_LS_SIG_OUT0             => 79,
      LEDC_LS_SIG_OUT1             => 80,
      LEDC_LS_SIG_OUT2             => 81,
      LEDC_LS_SIG_OUT3             => 82,
      LEDC_LS_SIG_OUT4             => 83,
      LEDC_LS_SIG_OUT5             => 84,
      LEDC_LS_SIG_OUT6             => 85,
      LEDC_LS_SIG_OUT7             => 86,
      RMT_SIG_OUT0                 => 87,
      RMT_SIG_OUT1                 => 88,
      RMT_SIG_OUT2                 => 89,
      RMT_SIG_OUT3                 => 90,
      RMT_SIG_OUT4                 => 91,
      RMT_SIG_OUT5                 => 92,
      RMT_SIG_OUT6                 => 93,
      RMT_SIG_OUT7                 => 94,
      I2CEXT1_SCL                  => 95,
      I2CEXT1_SDA                  => 96,
      HOST_CCMD_OD_PULLUP_EN_N     => 97,
      HOST_RST_N_1                 => 98,
      HOST_RST_N_2                 => 99,
      GPIO_SD0                     => 100,
      GPIO_SD1                     => 101,
      GPIO_SD2                     => 102,
      GPIO_SD3                     => 103,
      GPIO_SD4                     => 104,
      GPIO_SD5                     => 105,
      GPIO_SD6                     => 106,
      GPIO_SD7                     => 107,
      PWM1_OUT0A                   => 108,
      PWM1_OUT0B                   => 109,
      PWM1_OUT1A                   => 110,
      PWM1_OUT1B                   => 111,
      PWM1_OUT2A                   => 112,
      PWM1_OUT2B                   => 113,
      PWM2_OUT1H                   => 114,
      PWM2_OUT1L                   => 115,
      PWM2_OUT2H                   => 116,
      PWM2_OUT2L                   => 117,
      PWM2_OUT3H                   => 118,
      PWM2_OUT3L                   => 119,
      PWM2_OUT4H                   => 120,
      PWM2_OUT4L                   => 121,
      TWAI_TX                      => 123,
      TWAI_BUS_OFF_ON              => 124,
      TWAI_CLKOUT                  => 125,
      SPID4                        => 128,
      SPID5                        => 129,
      SPID6                        => 130,
      SPID7                        => 131,
      HSPID4                       => 132,
      HSPID5                       => 133,
      HSPID6                       => 134,
      HSPID7                       => 135,
      VSPID4                       => 136,
      VSPID5                       => 137,
      VSPID6                       => 138,
      VSPID7                       => 139,
      I2S0O_DATA_OUT0              => 140,
      I2S0O_DATA_OUT1              => 141,
      I2S0O_DATA_OUT2              => 142,
      I2S0O_DATA_OUT3              => 143,
      I2S0O_DATA_OUT4              => 144,
      I2S0O_DATA_OUT5              => 145,
      I2S0O_DATA_OUT6              => 146,
      I2S0O_DATA_OUT7              => 147,
      I2S0O_DATA_OUT8              => 148,
      I2S0O_DATA_OUT9              => 149,
      I2S0O_DATA_OUT10             => 150,
      I2S0O_DATA_OUT11             => 151,
      I2S0O_DATA_OUT12             => 152,
      I2S0O_DATA_OUT13             => 153,
      I2S0O_DATA_OUT14             => 154,
      I2S0O_DATA_OUT15             => 155,
      I2S0O_DATA_OUT16             => 156,
      I2S0O_DATA_OUT17             => 157,
      I2S0O_DATA_OUT18             => 158,
      I2S0O_DATA_OUT19             => 159,
      I2S0O_DATA_OUT20             => 160,
      I2S0O_DATA_OUT21             => 161,
      I2S0O_DATA_OUT22             => 162,
      I2S0O_DATA_OUT23             => 163,
      I2S1I_BCK                    => 164,
      I2S1I_WS                     => 165,
      I2S1O_DATA_OUT0              => 166,
      I2S1O_DATA_OUT1              => 167,
      I2S1O_DATA_OUT2              => 168,
      I2S1O_DATA_OUT3              => 169,
      I2S1O_DATA_OUT4              => 170,
      I2S1O_DATA_OUT5              => 171,
      I2S1O_DATA_OUT6              => 172,
      I2S1O_DATA_OUT7              => 173,
      I2S1O_DATA_OUT8              => 174,
      I2S1O_DATA_OUT9              => 175,
      I2S1O_DATA_OUT10             => 176,
      I2S1O_DATA_OUT11             => 177,
      I2S1O_DATA_OUT12             => 178,
      I2S1O_DATA_OUT13             => 179,
      I2S1O_DATA_OUT14             => 180,
      I2S1O_DATA_OUT15             => 181,
      I2S1O_DATA_OUT16             => 182,
      I2S1O_DATA_OUT17             => 183,
      I2S1O_DATA_OUT18             => 184,
      I2S1O_DATA_OUT19             => 185,
      I2S1O_DATA_OUT20             => 186,
      I2S1O_DATA_OUT21             => 187,
      I2S1O_DATA_OUT22             => 188,
      I2S1O_DATA_OUT23             => 189,
      PWM3_OUT1H                   => 190,
      PWM3_OUT1L                   => 191,
      PWM3_OUT2H                   => 192,
      PWM3_OUT2L                   => 193,
      PWM3_OUT3H                   => 194,
      PWM3_OUT3L                   => 195,
      PWM3_OUT4H                   => 196,
      PWM3_OUT4L                   => 197,
      U2TXD                        => 198,
      U2RTS                        => 199,
      EMAC_MDC                     => 200,
      EMAC_MDO                     => 201,
      EMAC_CRS                     => 202,
      EMAC_COL                     => 203,
      BT_AUDIO0_IRQ                => 204,
      BT_AUDIO1_IRQ                => 205,
      BT_AUDIO2_IRQ                => 206,
      BLE_AUDIO0_IRQ               => 207,
      BLE_AUDIO1_IRQ               => 208,
      BLE_AUDIO2_IRQ               => 209,
      PCMFSYNC                     => 210,
      PCMCLK                       => 211,
      PCMDOUT                      => 212,
      BLE_AUDIO_SYNC0              => 213,
      BLE_AUDIO_SYNC1              => 214,
      BLE_AUDIO_SYNC2              => 215,
      ANT_SEL0                     => 216,
      ANT_SEL1                     => 217,
      ANT_SEL2                     => 218,
      ANT_SEL3                     => 219,
      ANT_SEL4                     => 220,
      ANT_SEL5                     => 221,
      ANT_SEL6                     => 222,
      ANT_SEL7                     => 223,
      GPIO_OUT                     => 256);

end ESP32.GPIO;