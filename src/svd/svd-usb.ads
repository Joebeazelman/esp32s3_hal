pragma Style_Checks (Off);

--  Copyright 2024 Espressif Systems (Shanghai) PTE LTD    Licensed under the Apache License, Version 2.0 (the "License");    you may not use this file except in compliance with the License.    You may obtain a copy of the License at        http://www.apache.org/licenses/LICENSE-2.0    Unless required by applicable law or agreed to in writing, software    distributed under the License is distributed on an "AS IS" BASIS,    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    See the License for the specific language governing permissions and    limitations under the License.

--  This spec has been automatically generated from esp32s3.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package SVD.USB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   type GOTGCTL_Register is record
      --  Read-only.
      SESREQSCS       : SVD.Bit := 16#0#;
      SESREQ          : SVD.Bit := 16#0#;
      VBVALIDOVEN     : SVD.Bit := 16#0#;
      VBVALIDOVVAL    : SVD.Bit := 16#0#;
      AVALIDOVEN      : SVD.Bit := 16#0#;
      AVALIDOVVAL     : SVD.Bit := 16#0#;
      BVALIDOVEN      : SVD.Bit := 16#0#;
      BVALIDOVVAL     : SVD.Bit := 16#0#;
      --  Read-only.
      HSTNEGSCS       : SVD.Bit := 16#0#;
      HNPREQ          : SVD.Bit := 16#0#;
      HSTSETHNPEN     : SVD.Bit := 16#0#;
      DEVHNPEN        : SVD.Bit := 16#0#;
      EHEN            : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_13_14  : SVD.UInt2 := 16#0#;
      DBNCEFLTRBYPASS : SVD.Bit := 16#0#;
      --  Read-only.
      CONIDSTS        : SVD.Bit := 16#0#;
      --  Read-only.
      DBNCTIME        : SVD.Bit := 16#0#;
      --  Read-only.
      ASESVLD         : SVD.Bit := 16#0#;
      --  Read-only.
      BSESVLD         : SVD.Bit := 16#0#;
      OTGVER          : SVD.Bit := 16#0#;
      --  Read-only.
      CURMOD          : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_22_31  : SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GOTGCTL_Register use record
      SESREQSCS       at 0 range 0 .. 0;
      SESREQ          at 0 range 1 .. 1;
      VBVALIDOVEN     at 0 range 2 .. 2;
      VBVALIDOVVAL    at 0 range 3 .. 3;
      AVALIDOVEN      at 0 range 4 .. 4;
      AVALIDOVVAL     at 0 range 5 .. 5;
      BVALIDOVEN      at 0 range 6 .. 6;
      BVALIDOVVAL     at 0 range 7 .. 7;
      HSTNEGSCS       at 0 range 8 .. 8;
      HNPREQ          at 0 range 9 .. 9;
      HSTSETHNPEN     at 0 range 10 .. 10;
      DEVHNPEN        at 0 range 11 .. 11;
      EHEN            at 0 range 12 .. 12;
      Reserved_13_14  at 0 range 13 .. 14;
      DBNCEFLTRBYPASS at 0 range 15 .. 15;
      CONIDSTS        at 0 range 16 .. 16;
      DBNCTIME        at 0 range 17 .. 17;
      ASESVLD         at 0 range 18 .. 18;
      BSESVLD         at 0 range 19 .. 19;
      OTGVER          at 0 range 20 .. 20;
      CURMOD          at 0 range 21 .. 21;
      Reserved_22_31  at 0 range 22 .. 31;
   end record;

   type GOTGINT_Register is record
      --  unspecified
      Reserved_0_1     : SVD.UInt2 := 16#0#;
      SESENDDET        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_3_7     : SVD.UInt5 := 16#0#;
      SESREQSUCSTSCHNG : SVD.Bit := 16#0#;
      HSTNEGSUCSTSCHNG : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_16   : SVD.UInt7 := 16#0#;
      HSTNEGDET        : SVD.Bit := 16#0#;
      ADEVTOUTCHG      : SVD.Bit := 16#0#;
      DBNCEDONE        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_20_31   : SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GOTGINT_Register use record
      Reserved_0_1     at 0 range 0 .. 1;
      SESENDDET        at 0 range 2 .. 2;
      Reserved_3_7     at 0 range 3 .. 7;
      SESREQSUCSTSCHNG at 0 range 8 .. 8;
      HSTNEGSUCSTSCHNG at 0 range 9 .. 9;
      Reserved_10_16   at 0 range 10 .. 16;
      HSTNEGDET        at 0 range 17 .. 17;
      ADEVTOUTCHG      at 0 range 18 .. 18;
      DBNCEDONE        at 0 range 19 .. 19;
      Reserved_20_31   at 0 range 20 .. 31;
   end record;

   type GAHBCFG_Register is record
      GLBLLNTRMSK      : SVD.Bit := 16#0#;
      HBSTLEN          : SVD.UInt4 := 16#0#;
      DMAEN            : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_6_6     : SVD.Bit := 16#0#;
      NPTXFEMPLVL      : SVD.Bit := 16#0#;
      PTXFEMPLVL       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_9_20    : SVD.UInt12 := 16#0#;
      REMMEMSUPP       : SVD.Bit := 16#0#;
      NOTIALLDMAWRIT   : SVD.Bit := 16#0#;
      AHBSINGLE        : SVD.Bit := 16#0#;
      INVDESCENDIANESS : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_25_31   : SVD.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GAHBCFG_Register use record
      GLBLLNTRMSK      at 0 range 0 .. 0;
      HBSTLEN          at 0 range 1 .. 4;
      DMAEN            at 0 range 5 .. 5;
      Reserved_6_6     at 0 range 6 .. 6;
      NPTXFEMPLVL      at 0 range 7 .. 7;
      PTXFEMPLVL       at 0 range 8 .. 8;
      Reserved_9_20    at 0 range 9 .. 20;
      REMMEMSUPP       at 0 range 21 .. 21;
      NOTIALLDMAWRIT   at 0 range 22 .. 22;
      AHBSINGLE        at 0 range 23 .. 23;
      INVDESCENDIANESS at 0 range 24 .. 24;
      Reserved_25_31   at 0 range 25 .. 31;
   end record;

   type GUSBCFG_Register is record
      TOUTCAL        : SVD.UInt3 := 16#0#;
      PHYIF          : SVD.Bit := 16#0#;
      --  Read-only.
      ULPI_UTMI_SEL  : SVD.Bit := 16#0#;
      FSINTF         : SVD.Bit := 16#0#;
      --  Read-only.
      PHYSEL         : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_7_7   : SVD.Bit := 16#0#;
      SRPCAP         : SVD.Bit := 16#0#;
      HNPCAP         : SVD.Bit := 16#0#;
      USBTRDTIM      : SVD.UInt4 := 16#5#;
      --  unspecified
      Reserved_14_21 : SVD.Byte := 16#0#;
      TERMSELDLPULSE : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_23_27 : SVD.UInt5 := 16#0#;
      TXENDDELAY     : SVD.Bit := 16#0#;
      FORCEHSTMODE   : SVD.Bit := 16#0#;
      FORCEDEVMODE   : SVD.Bit := 16#0#;
      CORRUPTTXPKT   : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GUSBCFG_Register use record
      TOUTCAL        at 0 range 0 .. 2;
      PHYIF          at 0 range 3 .. 3;
      ULPI_UTMI_SEL  at 0 range 4 .. 4;
      FSINTF         at 0 range 5 .. 5;
      PHYSEL         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SRPCAP         at 0 range 8 .. 8;
      HNPCAP         at 0 range 9 .. 9;
      USBTRDTIM      at 0 range 10 .. 13;
      Reserved_14_21 at 0 range 14 .. 21;
      TERMSELDLPULSE at 0 range 22 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      TXENDDELAY     at 0 range 28 .. 28;
      FORCEHSTMODE   at 0 range 29 .. 29;
      FORCEDEVMODE   at 0 range 30 .. 30;
      CORRUPTTXPKT   at 0 range 31 .. 31;
   end record;

   type GRSTCTL_Register is record
      CSFTRST        : SVD.Bit := 16#0#;
      PIUFSSFTRST    : SVD.Bit := 16#0#;
      FRMCNTRRST     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_3_3   : SVD.Bit := 16#0#;
      RXFFLSH        : SVD.Bit := 16#0#;
      TXFFLSH        : SVD.Bit := 16#0#;
      TXFNUM         : SVD.UInt5 := 16#0#;
      --  unspecified
      Reserved_11_29 : SVD.UInt19 := 16#0#;
      --  Read-only.
      DMAREQ         : SVD.Bit := 16#0#;
      --  Read-only.
      AHBIDLE        : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRSTCTL_Register use record
      CSFTRST        at 0 range 0 .. 0;
      PIUFSSFTRST    at 0 range 1 .. 1;
      FRMCNTRRST     at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RXFFLSH        at 0 range 4 .. 4;
      TXFFLSH        at 0 range 5 .. 5;
      TXFNUM         at 0 range 6 .. 10;
      Reserved_11_29 at 0 range 11 .. 29;
      DMAREQ         at 0 range 30 .. 30;
      AHBIDLE        at 0 range 31 .. 31;
   end record;

   type GINTSTS_Register is record
      --  Read-only.
      CURMOD_INT     : SVD.Bit := 16#0#;
      MODEMIS        : SVD.Bit := 16#0#;
      --  Read-only.
      OTGINT         : SVD.Bit := 16#0#;
      SOF            : SVD.Bit := 16#0#;
      --  Read-only.
      RXFLVI         : SVD.Bit := 16#0#;
      --  Read-only.
      NPTXFEMP       : SVD.Bit := 16#0#;
      --  Read-only.
      GINNAKEFF      : SVD.Bit := 16#0#;
      --  Read-only.
      GOUTNAKEFF     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_8_9   : SVD.UInt2 := 16#0#;
      ERLYSUSP       : SVD.Bit := 16#0#;
      USBSUSP        : SVD.Bit := 16#0#;
      USBRST         : SVD.Bit := 16#0#;
      ENUMDONE       : SVD.Bit := 16#0#;
      ISOOUTDROP     : SVD.Bit := 16#0#;
      EOPF           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      EPMIS          : SVD.Bit := 16#0#;
      --  Read-only.
      IEPINT         : SVD.Bit := 16#0#;
      --  Read-only.
      OEPINT         : SVD.Bit := 16#0#;
      INCOMPISOIN    : SVD.Bit := 16#0#;
      INCOMPIP       : SVD.Bit := 16#0#;
      FETSUSP        : SVD.Bit := 16#0#;
      RESETDET       : SVD.Bit := 16#0#;
      --  Read-only.
      PRTLNT         : SVD.Bit := 16#0#;
      --  Read-only.
      HCHLNT         : SVD.Bit := 16#0#;
      --  Read-only.
      PTXFEMP        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_27_27 : SVD.Bit := 16#0#;
      CONIDSTSCHNG   : SVD.Bit := 16#0#;
      DISCONNINT     : SVD.Bit := 16#0#;
      SESSREQINT     : SVD.Bit := 16#0#;
      WKUPINT        : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GINTSTS_Register use record
      CURMOD_INT     at 0 range 0 .. 0;
      MODEMIS        at 0 range 1 .. 1;
      OTGINT         at 0 range 2 .. 2;
      SOF            at 0 range 3 .. 3;
      RXFLVI         at 0 range 4 .. 4;
      NPTXFEMP       at 0 range 5 .. 5;
      GINNAKEFF      at 0 range 6 .. 6;
      GOUTNAKEFF     at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ERLYSUSP       at 0 range 10 .. 10;
      USBSUSP        at 0 range 11 .. 11;
      USBRST         at 0 range 12 .. 12;
      ENUMDONE       at 0 range 13 .. 13;
      ISOOUTDROP     at 0 range 14 .. 14;
      EOPF           at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      EPMIS          at 0 range 17 .. 17;
      IEPINT         at 0 range 18 .. 18;
      OEPINT         at 0 range 19 .. 19;
      INCOMPISOIN    at 0 range 20 .. 20;
      INCOMPIP       at 0 range 21 .. 21;
      FETSUSP        at 0 range 22 .. 22;
      RESETDET       at 0 range 23 .. 23;
      PRTLNT         at 0 range 24 .. 24;
      HCHLNT         at 0 range 25 .. 25;
      PTXFEMP        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      CONIDSTSCHNG   at 0 range 28 .. 28;
      DISCONNINT     at 0 range 29 .. 29;
      SESSREQINT     at 0 range 30 .. 30;
      WKUPINT        at 0 range 31 .. 31;
   end record;

   type GINTMSK_Register is record
      --  unspecified
      Reserved_0_0    : SVD.Bit := 16#0#;
      MODEMISMSK      : SVD.Bit := 16#0#;
      OTGINTMSK       : SVD.Bit := 16#0#;
      SOFMSK          : SVD.Bit := 16#0#;
      RXFLVIMSK       : SVD.Bit := 16#0#;
      NPTXFEMPMSK     : SVD.Bit := 16#0#;
      GINNAKEFFMSK    : SVD.Bit := 16#0#;
      GOUTNACKEFFMSK  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_8_9    : SVD.UInt2 := 16#0#;
      ERLYSUSPMSK     : SVD.Bit := 16#0#;
      USBSUSPMSK      : SVD.Bit := 16#0#;
      USBRSTMSK       : SVD.Bit := 16#0#;
      ENUMDONEMSK     : SVD.Bit := 16#0#;
      ISOOUTDROPMSK   : SVD.Bit := 16#0#;
      EOPFMSK         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_16  : SVD.Bit := 16#0#;
      EPMISMSK        : SVD.Bit := 16#0#;
      IEPINTMSK       : SVD.Bit := 16#0#;
      OEPINTMSK       : SVD.Bit := 16#0#;
      INCOMPISOINMSK  : SVD.Bit := 16#0#;
      INCOMPIPMSK     : SVD.Bit := 16#0#;
      FETSUSPMSK      : SVD.Bit := 16#0#;
      RESETDETMSK     : SVD.Bit := 16#0#;
      PRTLNTMSK       : SVD.Bit := 16#0#;
      HCHINTMSK       : SVD.Bit := 16#0#;
      PTXFEMPMSK      : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_27_27  : SVD.Bit := 16#0#;
      CONIDSTSCHNGMSK : SVD.Bit := 16#0#;
      DISCONNINTMSK   : SVD.Bit := 16#0#;
      SESSREQINTMSK   : SVD.Bit := 16#0#;
      WKUPINTMSK      : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GINTMSK_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      MODEMISMSK      at 0 range 1 .. 1;
      OTGINTMSK       at 0 range 2 .. 2;
      SOFMSK          at 0 range 3 .. 3;
      RXFLVIMSK       at 0 range 4 .. 4;
      NPTXFEMPMSK     at 0 range 5 .. 5;
      GINNAKEFFMSK    at 0 range 6 .. 6;
      GOUTNACKEFFMSK  at 0 range 7 .. 7;
      Reserved_8_9    at 0 range 8 .. 9;
      ERLYSUSPMSK     at 0 range 10 .. 10;
      USBSUSPMSK      at 0 range 11 .. 11;
      USBRSTMSK       at 0 range 12 .. 12;
      ENUMDONEMSK     at 0 range 13 .. 13;
      ISOOUTDROPMSK   at 0 range 14 .. 14;
      EOPFMSK         at 0 range 15 .. 15;
      Reserved_16_16  at 0 range 16 .. 16;
      EPMISMSK        at 0 range 17 .. 17;
      IEPINTMSK       at 0 range 18 .. 18;
      OEPINTMSK       at 0 range 19 .. 19;
      INCOMPISOINMSK  at 0 range 20 .. 20;
      INCOMPIPMSK     at 0 range 21 .. 21;
      FETSUSPMSK      at 0 range 22 .. 22;
      RESETDETMSK     at 0 range 23 .. 23;
      PRTLNTMSK       at 0 range 24 .. 24;
      HCHINTMSK       at 0 range 25 .. 25;
      PTXFEMPMSK      at 0 range 26 .. 26;
      Reserved_27_27  at 0 range 27 .. 27;
      CONIDSTSCHNGMSK at 0 range 28 .. 28;
      DISCONNINTMSK   at 0 range 29 .. 29;
      SESSREQINTMSK   at 0 range 30 .. 30;
      WKUPINTMSK      at 0 range 31 .. 31;
   end record;

   type GRXSTSR_Register is record
      --  Read-only.
      G_CHNUM        : SVD.UInt4;
      --  Read-only.
      G_BCNT         : SVD.UInt11;
      --  Read-only.
      G_DPID         : SVD.UInt2;
      --  Read-only.
      G_PKTSTS       : SVD.UInt4;
      --  Read-only.
      G_FN           : SVD.UInt4;
      --  unspecified
      Reserved_25_31 : SVD.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRXSTSR_Register use record
      G_CHNUM        at 0 range 0 .. 3;
      G_BCNT         at 0 range 4 .. 14;
      G_DPID         at 0 range 15 .. 16;
      G_PKTSTS       at 0 range 17 .. 20;
      G_FN           at 0 range 21 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   type GRXSTSP_Register is record
      --  Read-only.
      CHNUM          : SVD.UInt4;
      --  Read-only.
      BCNT           : SVD.UInt11;
      --  Read-only.
      DPID           : SVD.UInt2;
      --  Read-only.
      PKTSTS         : SVD.UInt4;
      --  Read-only.
      FN             : SVD.UInt4;
      --  unspecified
      Reserved_25_31 : SVD.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRXSTSP_Register use record
      CHNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      FN             at 0 range 21 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   type GRXFSIZ_Register is record
      RXFDEP         : SVD.UInt16 := 16#100#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRXFSIZ_Register use record
      RXFDEP         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   type GNPTXFSIZ_Register is record
      NPTXFSTADDR : SVD.UInt16 := 16#100#;
      NPTXFDEP    : SVD.UInt16 := 16#100#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GNPTXFSIZ_Register use record
      NPTXFSTADDR at 0 range 0 .. 15;
      NPTXFDEP    at 0 range 16 .. 31;
   end record;

   type GNPTXSTS_Register is record
      --  Read-only.
      NPTXFSPCAVAIL  : SVD.UInt16;
      --  Read-only.
      NPTXQSPCAVAIL  : SVD.UInt4;
      --  unspecified
      Reserved_20_23 : SVD.UInt4;
      --  Read-only.
      NPTXQTOP       : SVD.UInt7;
      --  unspecified
      Reserved_31_31 : SVD.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GNPTXSTS_Register use record
      NPTXFSPCAVAIL  at 0 range 0 .. 15;
      NPTXQSPCAVAIL  at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      NPTXQTOP       at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type GHWCFG2_Register is record
      --  Read-only.
      OTGMODE           : SVD.UInt3;
      --  Read-only.
      OTGARCH           : SVD.UInt2;
      --  Read-only.
      SINGPNT           : SVD.Bit;
      --  Read-only.
      HSPHYTYPE         : SVD.UInt2;
      --  Read-only.
      FSPHYTYPE         : SVD.UInt2;
      --  Read-only.
      NUMDEVEPS         : SVD.UInt4;
      --  Read-only.
      NUMHSTCHNL        : SVD.UInt4;
      --  Read-only.
      PERIOSUPPORT      : SVD.Bit;
      --  Read-only.
      DYNFIFOSIZING     : SVD.Bit;
      --  Read-only.
      MULTIPROCINTRPT   : SVD.Bit;
      --  unspecified
      Reserved_21_21    : SVD.Bit;
      --  Read-only.
      NPTXQDEPTH        : SVD.UInt2;
      --  Read-only.
      PTXQDEPTH         : SVD.UInt2;
      --  Read-only.
      TKNQDEPTH         : SVD.UInt5;
      --  Read-only.
      OTG_ENABLE_IC_USB : SVD.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GHWCFG2_Register use record
      OTGMODE           at 0 range 0 .. 2;
      OTGARCH           at 0 range 3 .. 4;
      SINGPNT           at 0 range 5 .. 5;
      HSPHYTYPE         at 0 range 6 .. 7;
      FSPHYTYPE         at 0 range 8 .. 9;
      NUMDEVEPS         at 0 range 10 .. 13;
      NUMHSTCHNL        at 0 range 14 .. 17;
      PERIOSUPPORT      at 0 range 18 .. 18;
      DYNFIFOSIZING     at 0 range 19 .. 19;
      MULTIPROCINTRPT   at 0 range 20 .. 20;
      Reserved_21_21    at 0 range 21 .. 21;
      NPTXQDEPTH        at 0 range 22 .. 23;
      PTXQDEPTH         at 0 range 24 .. 25;
      TKNQDEPTH         at 0 range 26 .. 30;
      OTG_ENABLE_IC_USB at 0 range 31 .. 31;
   end record;

   type GHWCFG3_Register is record
      --  Read-only.
      XFERSIZEWIDTH : SVD.UInt4;
      --  Read-only.
      PKTSIZEWIDTH  : SVD.UInt3;
      --  Read-only.
      OTGEN         : SVD.Bit;
      --  Read-only.
      I2CINTSEL     : SVD.Bit;
      --  Read-only.
      VNDCTLSUPT    : SVD.Bit;
      --  Read-only.
      OPTFEATURE    : SVD.Bit;
      --  Read-only.
      RSTTYPE       : SVD.Bit;
      --  Read-only.
      ADPSUPPORT    : SVD.Bit;
      --  Read-only.
      HSICMODE      : SVD.Bit;
      --  Read-only.
      BCSUPPORT     : SVD.Bit;
      --  Read-only.
      LPMMODE       : SVD.Bit;
      --  Read-only.
      DFIFODEPTH    : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GHWCFG3_Register use record
      XFERSIZEWIDTH at 0 range 0 .. 3;
      PKTSIZEWIDTH  at 0 range 4 .. 6;
      OTGEN         at 0 range 7 .. 7;
      I2CINTSEL     at 0 range 8 .. 8;
      VNDCTLSUPT    at 0 range 9 .. 9;
      OPTFEATURE    at 0 range 10 .. 10;
      RSTTYPE       at 0 range 11 .. 11;
      ADPSUPPORT    at 0 range 12 .. 12;
      HSICMODE      at 0 range 13 .. 13;
      BCSUPPORT     at 0 range 14 .. 14;
      LPMMODE       at 0 range 15 .. 15;
      DFIFODEPTH    at 0 range 16 .. 31;
   end record;

   type GHWCFG4_Register is record
      --  Read-only.
      G_NUMDEVPERIOEPS      : SVD.UInt4;
      --  Read-only.
      G_PARTIALPWRDN        : SVD.Bit;
      --  Read-only.
      G_AHBFREQ             : SVD.Bit;
      --  Read-only.
      G_HIBERNATION         : SVD.Bit;
      --  Read-only.
      G_EXTENDEDHIBERNATION : SVD.Bit;
      --  unspecified
      Reserved_8_11         : SVD.UInt4;
      --  Read-only.
      G_ACGSUPT             : SVD.Bit;
      --  Read-only.
      G_ENHANCEDLPMSUPT     : SVD.Bit;
      --  Read-only.
      G_PHYDATAWIDTH        : SVD.UInt2;
      --  Read-only.
      G_NUMCTLEPS           : SVD.UInt4;
      --  Read-only.
      G_IDDQFLTR            : SVD.Bit;
      --  Read-only.
      G_VBUSVALIDFLTR       : SVD.Bit;
      --  Read-only.
      G_AVALIDFLTR          : SVD.Bit;
      --  Read-only.
      G_BVALIDFLTR          : SVD.Bit;
      --  Read-only.
      G_SESSENDFLTR         : SVD.Bit;
      --  Read-only.
      G_DEDFIFOMODE         : SVD.Bit;
      --  Read-only.
      G_INEPS               : SVD.UInt4;
      --  Read-only.
      G_DESCDMAENABLED      : SVD.Bit;
      --  Read-only.
      G_DESCDMA             : SVD.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GHWCFG4_Register use record
      G_NUMDEVPERIOEPS      at 0 range 0 .. 3;
      G_PARTIALPWRDN        at 0 range 4 .. 4;
      G_AHBFREQ             at 0 range 5 .. 5;
      G_HIBERNATION         at 0 range 6 .. 6;
      G_EXTENDEDHIBERNATION at 0 range 7 .. 7;
      Reserved_8_11         at 0 range 8 .. 11;
      G_ACGSUPT             at 0 range 12 .. 12;
      G_ENHANCEDLPMSUPT     at 0 range 13 .. 13;
      G_PHYDATAWIDTH        at 0 range 14 .. 15;
      G_NUMCTLEPS           at 0 range 16 .. 19;
      G_IDDQFLTR            at 0 range 20 .. 20;
      G_VBUSVALIDFLTR       at 0 range 21 .. 21;
      G_AVALIDFLTR          at 0 range 22 .. 22;
      G_BVALIDFLTR          at 0 range 23 .. 23;
      G_SESSENDFLTR         at 0 range 24 .. 24;
      G_DEDFIFOMODE         at 0 range 25 .. 25;
      G_INEPS               at 0 range 26 .. 29;
      G_DESCDMAENABLED      at 0 range 30 .. 30;
      G_DESCDMA             at 0 range 31 .. 31;
   end record;

   type GDFIFOCFG_Register is record
      GDFIFOCFG      : SVD.UInt16 := 16#0#;
      EPINFOBASEADDR : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GDFIFOCFG_Register use record
      GDFIFOCFG      at 0 range 0 .. 15;
      EPINFOBASEADDR at 0 range 16 .. 31;
   end record;

   type HPTXFSIZ_Register is record
      PTXFSTADDR : SVD.UInt16 := 16#200#;
      PTXFSIZE   : SVD.UInt16 := 16#1000#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPTXFSIZ_Register use record
      PTXFSTADDR at 0 range 0 .. 15;
      PTXFSIZE   at 0 range 16 .. 31;
   end record;

   type DIEPTXF1_Register is record
      INEP1TXFSTADDR : SVD.UInt16 := 16#200#;
      INEP1TXFDEP    : SVD.UInt16 := 16#1000#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTXF1_Register use record
      INEP1TXFSTADDR at 0 range 0 .. 15;
      INEP1TXFDEP    at 0 range 16 .. 31;
   end record;

   type DIEPTXF2_Register is record
      INEP2TXFSTADDR : SVD.UInt16 := 16#200#;
      INEP2TXFDEP    : SVD.UInt16 := 16#1000#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTXF2_Register use record
      INEP2TXFSTADDR at 0 range 0 .. 15;
      INEP2TXFDEP    at 0 range 16 .. 31;
   end record;

   type DIEPTXF3_Register is record
      INEP3TXFSTADDR : SVD.UInt16 := 16#200#;
      INEP3TXFDEP    : SVD.UInt16 := 16#1000#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTXF3_Register use record
      INEP3TXFSTADDR at 0 range 0 .. 15;
      INEP3TXFDEP    at 0 range 16 .. 31;
   end record;

   type DIEPTXF4_Register is record
      INEP4TXFSTADDR : SVD.UInt16 := 16#200#;
      INEP4TXFDEP    : SVD.UInt16 := 16#1000#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTXF4_Register use record
      INEP4TXFSTADDR at 0 range 0 .. 15;
      INEP4TXFDEP    at 0 range 16 .. 31;
   end record;

   type HCFG_Register is record
      H_FSLSPCLKSEL  : SVD.UInt2 := 16#0#;
      H_FSLSSUPP     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_3_6   : SVD.UInt4 := 16#0#;
      H_ENA32KHZS    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_8_22  : SVD.UInt15 := 16#0#;
      H_DESCDMA      : SVD.Bit := 16#0#;
      H_FRLISTEN     : SVD.UInt2 := 16#0#;
      H_PERSCHEDENA  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_27_30 : SVD.UInt4 := 16#0#;
      H_MODECHTIMEN  : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCFG_Register use record
      H_FSLSPCLKSEL  at 0 range 0 .. 1;
      H_FSLSSUPP     at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      H_ENA32KHZS    at 0 range 7 .. 7;
      Reserved_8_22  at 0 range 8 .. 22;
      H_DESCDMA      at 0 range 23 .. 23;
      H_FRLISTEN     at 0 range 24 .. 25;
      H_PERSCHEDENA  at 0 range 26 .. 26;
      Reserved_27_30 at 0 range 27 .. 30;
      H_MODECHTIMEN  at 0 range 31 .. 31;
   end record;

   type HFIR_Register is record
      FRINT          : SVD.UInt16 := 16#17D7#;
      HFIRRLDCTRL    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_17_31 : SVD.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFIR_Register use record
      FRINT          at 0 range 0 .. 15;
      HFIRRLDCTRL    at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type HFNUM_Register is record
      --  Read-only.
      FRNUM          : SVD.UInt14;
      --  unspecified
      Reserved_14_15 : SVD.UInt2;
      --  Read-only.
      FRREM          : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFNUM_Register use record
      FRNUM          at 0 range 0 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FRREM          at 0 range 16 .. 31;
   end record;

   type HPTXSTS_Register is record
      --  Read-only.
      PTXFSPCAVAIL   : SVD.UInt16;
      --  Read-only.
      PTXQSPCAVAIL   : SVD.UInt5;
      --  unspecified
      Reserved_21_23 : SVD.UInt3;
      --  Read-only.
      PTXQTOP        : SVD.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPTXSTS_Register use record
      PTXFSPCAVAIL   at 0 range 0 .. 15;
      PTXQSPCAVAIL   at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      PTXQTOP        at 0 range 24 .. 31;
   end record;

   type HAINT_Register is record
      --  Read-only.
      HAINT         : SVD.Byte;
      --  unspecified
      Reserved_8_31 : SVD.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HAINT_Register use record
      HAINT         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   type HAINTMSK_Register is record
      HAINTMSK      : SVD.Byte := 16#0#;
      --  unspecified
      Reserved_8_31 : SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HAINTMSK_Register use record
      HAINTMSK      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   type HPRT_Register is record
      --  Read-only.
      PRTCONNSTS     : SVD.Bit := 16#0#;
      PRTCONNDET     : SVD.Bit := 16#0#;
      PRTENA         : SVD.Bit := 16#0#;
      PRTENCHNG      : SVD.Bit := 16#0#;
      --  Read-only.
      PRTOVRCURRACT  : SVD.Bit := 16#0#;
      PRTOVRCURRCHNG : SVD.Bit := 16#0#;
      PRTRES         : SVD.Bit := 16#0#;
      PRTSUSP        : SVD.Bit := 16#0#;
      PRTRST         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_9_9   : SVD.Bit := 16#0#;
      --  Read-only.
      PRTLNSTS       : SVD.UInt2 := 16#0#;
      PRTPWR         : SVD.Bit := 16#0#;
      PRTTSTCTL      : SVD.UInt4 := 16#0#;
      --  Read-only.
      PRTSPD         : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_19_31 : SVD.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPRT_Register use record
      PRTCONNSTS     at 0 range 0 .. 0;
      PRTCONNDET     at 0 range 1 .. 1;
      PRTENA         at 0 range 2 .. 2;
      PRTENCHNG      at 0 range 3 .. 3;
      PRTOVRCURRACT  at 0 range 4 .. 4;
      PRTOVRCURRCHNG at 0 range 5 .. 5;
      PRTRES         at 0 range 6 .. 6;
      PRTSUSP        at 0 range 7 .. 7;
      PRTRST         at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PRTLNSTS       at 0 range 10 .. 11;
      PRTPWR         at 0 range 12 .. 12;
      PRTTSTCTL      at 0 range 13 .. 16;
      PRTSPD         at 0 range 17 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   type HCCHAR0_Register is record
      H_MPS0         : SVD.UInt11 := 16#0#;
      H_EPNUM0       : SVD.UInt4 := 16#0#;
      H_EPDIR0       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      H_LSPDDEV0     : SVD.Bit := 16#0#;
      H_EPTYPE0      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      H_EC0          : SVD.Bit := 16#0#;
      H_DEVADDR0     : SVD.UInt7 := 16#0#;
      H_ODDFRM0      : SVD.Bit := 16#0#;
      H_CHDIS0       : SVD.Bit := 16#0#;
      H_CHENA0       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCCHAR0_Register use record
      H_MPS0         at 0 range 0 .. 10;
      H_EPNUM0       at 0 range 11 .. 14;
      H_EPDIR0       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      H_LSPDDEV0     at 0 range 17 .. 17;
      H_EPTYPE0      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      H_EC0          at 0 range 21 .. 21;
      H_DEVADDR0     at 0 range 22 .. 28;
      H_ODDFRM0      at 0 range 29 .. 29;
      H_CHDIS0       at 0 range 30 .. 30;
      H_CHENA0       at 0 range 31 .. 31;
   end record;

   type HCINT0_Register is record
      H_XFERCOMPL0         : SVD.Bit := 16#0#;
      H_CHHLTD0            : SVD.Bit := 16#0#;
      H_AHBERR0            : SVD.Bit := 16#0#;
      H_STALL0             : SVD.Bit := 16#0#;
      H_NACK0              : SVD.Bit := 16#0#;
      H_ACK0               : SVD.Bit := 16#0#;
      H_NYET0              : SVD.Bit := 16#0#;
      H_XACTERR0           : SVD.Bit := 16#0#;
      H_BBLERR0            : SVD.Bit := 16#0#;
      H_FRMOVRUN0          : SVD.Bit := 16#0#;
      H_DATATGLERR0        : SVD.Bit := 16#0#;
      H_BNAINTR0           : SVD.Bit := 16#0#;
      H_XCS_XACT_ERR0      : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTR0 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31       : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINT0_Register use record
      H_XFERCOMPL0         at 0 range 0 .. 0;
      H_CHHLTD0            at 0 range 1 .. 1;
      H_AHBERR0            at 0 range 2 .. 2;
      H_STALL0             at 0 range 3 .. 3;
      H_NACK0              at 0 range 4 .. 4;
      H_ACK0               at 0 range 5 .. 5;
      H_NYET0              at 0 range 6 .. 6;
      H_XACTERR0           at 0 range 7 .. 7;
      H_BBLERR0            at 0 range 8 .. 8;
      H_FRMOVRUN0          at 0 range 9 .. 9;
      H_DATATGLERR0        at 0 range 10 .. 10;
      H_BNAINTR0           at 0 range 11 .. 11;
      H_XCS_XACT_ERR0      at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTR0 at 0 range 13 .. 13;
      Reserved_14_31       at 0 range 14 .. 31;
   end record;

   type HCINTMSK0_Register is record
      H_XFERCOMPLMSK0         : SVD.Bit := 16#0#;
      H_CHHLTDMSK0            : SVD.Bit := 16#0#;
      H_AHBERRMSK0            : SVD.Bit := 16#0#;
      H_STALLMSK0             : SVD.Bit := 16#0#;
      H_NAKMSK0               : SVD.Bit := 16#0#;
      H_ACKMSK0               : SVD.Bit := 16#0#;
      H_NYETMSK0              : SVD.Bit := 16#0#;
      H_XACTERRMSK0           : SVD.Bit := 16#0#;
      H_BBLERRMSK0            : SVD.Bit := 16#0#;
      H_FRMOVRUNMSK0          : SVD.Bit := 16#0#;
      H_DATATGLERRMSK0        : SVD.Bit := 16#0#;
      H_BNAINTRMSK0           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_12_12          : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTRMSK0 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31          : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINTMSK0_Register use record
      H_XFERCOMPLMSK0         at 0 range 0 .. 0;
      H_CHHLTDMSK0            at 0 range 1 .. 1;
      H_AHBERRMSK0            at 0 range 2 .. 2;
      H_STALLMSK0             at 0 range 3 .. 3;
      H_NAKMSK0               at 0 range 4 .. 4;
      H_ACKMSK0               at 0 range 5 .. 5;
      H_NYETMSK0              at 0 range 6 .. 6;
      H_XACTERRMSK0           at 0 range 7 .. 7;
      H_BBLERRMSK0            at 0 range 8 .. 8;
      H_FRMOVRUNMSK0          at 0 range 9 .. 9;
      H_DATATGLERRMSK0        at 0 range 10 .. 10;
      H_BNAINTRMSK0           at 0 range 11 .. 11;
      Reserved_12_12          at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTRMSK0 at 0 range 13 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   type HCTSIZ0_Register is record
      H_XFERSIZE0 : SVD.UInt19 := 16#0#;
      H_PKTCNT0   : SVD.UInt10 := 16#0#;
      H_PID0      : SVD.UInt2 := 16#0#;
      H_DOPNG0    : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCTSIZ0_Register use record
      H_XFERSIZE0 at 0 range 0 .. 18;
      H_PKTCNT0   at 0 range 19 .. 28;
      H_PID0      at 0 range 29 .. 30;
      H_DOPNG0    at 0 range 31 .. 31;
   end record;

   type HCCHAR1_Register is record
      H_MPS1         : SVD.UInt11 := 16#0#;
      H_EPNUM1       : SVD.UInt4 := 16#0#;
      H_EPDIR1       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      H_LSPDDEV1     : SVD.Bit := 16#0#;
      H_EPTYPE1      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      H_EC1          : SVD.Bit := 16#0#;
      H_DEVADDR1     : SVD.UInt7 := 16#0#;
      H_ODDFRM1      : SVD.Bit := 16#0#;
      H_CHDIS1       : SVD.Bit := 16#0#;
      H_CHENA1       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCCHAR1_Register use record
      H_MPS1         at 0 range 0 .. 10;
      H_EPNUM1       at 0 range 11 .. 14;
      H_EPDIR1       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      H_LSPDDEV1     at 0 range 17 .. 17;
      H_EPTYPE1      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      H_EC1          at 0 range 21 .. 21;
      H_DEVADDR1     at 0 range 22 .. 28;
      H_ODDFRM1      at 0 range 29 .. 29;
      H_CHDIS1       at 0 range 30 .. 30;
      H_CHENA1       at 0 range 31 .. 31;
   end record;

   type HCINT1_Register is record
      H_XFERCOMPL1         : SVD.Bit := 16#0#;
      H_CHHLTD1            : SVD.Bit := 16#0#;
      H_AHBERR1            : SVD.Bit := 16#0#;
      H_STALL1             : SVD.Bit := 16#0#;
      H_NACK1              : SVD.Bit := 16#0#;
      H_ACK1               : SVD.Bit := 16#0#;
      H_NYET1              : SVD.Bit := 16#0#;
      H_XACTERR1           : SVD.Bit := 16#0#;
      H_BBLERR1            : SVD.Bit := 16#0#;
      H_FRMOVRUN1          : SVD.Bit := 16#0#;
      H_DATATGLERR1        : SVD.Bit := 16#0#;
      H_BNAINTR1           : SVD.Bit := 16#0#;
      H_XCS_XACT_ERR1      : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTR1 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31       : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINT1_Register use record
      H_XFERCOMPL1         at 0 range 0 .. 0;
      H_CHHLTD1            at 0 range 1 .. 1;
      H_AHBERR1            at 0 range 2 .. 2;
      H_STALL1             at 0 range 3 .. 3;
      H_NACK1              at 0 range 4 .. 4;
      H_ACK1               at 0 range 5 .. 5;
      H_NYET1              at 0 range 6 .. 6;
      H_XACTERR1           at 0 range 7 .. 7;
      H_BBLERR1            at 0 range 8 .. 8;
      H_FRMOVRUN1          at 0 range 9 .. 9;
      H_DATATGLERR1        at 0 range 10 .. 10;
      H_BNAINTR1           at 0 range 11 .. 11;
      H_XCS_XACT_ERR1      at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTR1 at 0 range 13 .. 13;
      Reserved_14_31       at 0 range 14 .. 31;
   end record;

   type HCINTMSK1_Register is record
      H_XFERCOMPLMSK1         : SVD.Bit := 16#0#;
      H_CHHLTDMSK1            : SVD.Bit := 16#0#;
      H_AHBERRMSK1            : SVD.Bit := 16#0#;
      H_STALLMSK1             : SVD.Bit := 16#0#;
      H_NAKMSK1               : SVD.Bit := 16#0#;
      H_ACKMSK1               : SVD.Bit := 16#0#;
      H_NYETMSK1              : SVD.Bit := 16#0#;
      H_XACTERRMSK1           : SVD.Bit := 16#0#;
      H_BBLERRMSK1            : SVD.Bit := 16#0#;
      H_FRMOVRUNMSK1          : SVD.Bit := 16#0#;
      H_DATATGLERRMSK1        : SVD.Bit := 16#0#;
      H_BNAINTRMSK1           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_12_12          : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTRMSK1 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31          : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINTMSK1_Register use record
      H_XFERCOMPLMSK1         at 0 range 0 .. 0;
      H_CHHLTDMSK1            at 0 range 1 .. 1;
      H_AHBERRMSK1            at 0 range 2 .. 2;
      H_STALLMSK1             at 0 range 3 .. 3;
      H_NAKMSK1               at 0 range 4 .. 4;
      H_ACKMSK1               at 0 range 5 .. 5;
      H_NYETMSK1              at 0 range 6 .. 6;
      H_XACTERRMSK1           at 0 range 7 .. 7;
      H_BBLERRMSK1            at 0 range 8 .. 8;
      H_FRMOVRUNMSK1          at 0 range 9 .. 9;
      H_DATATGLERRMSK1        at 0 range 10 .. 10;
      H_BNAINTRMSK1           at 0 range 11 .. 11;
      Reserved_12_12          at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTRMSK1 at 0 range 13 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   type HCTSIZ1_Register is record
      H_XFERSIZE1 : SVD.UInt19 := 16#0#;
      H_PKTCNT1   : SVD.UInt10 := 16#0#;
      H_PID1      : SVD.UInt2 := 16#0#;
      H_DOPNG1    : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCTSIZ1_Register use record
      H_XFERSIZE1 at 0 range 0 .. 18;
      H_PKTCNT1   at 0 range 19 .. 28;
      H_PID1      at 0 range 29 .. 30;
      H_DOPNG1    at 0 range 31 .. 31;
   end record;

   type HCCHAR2_Register is record
      H_MPS2         : SVD.UInt11 := 16#0#;
      H_EPNUM2       : SVD.UInt4 := 16#0#;
      H_EPDIR2       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      H_LSPDDEV2     : SVD.Bit := 16#0#;
      H_EPTYPE2      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      H_EC2          : SVD.Bit := 16#0#;
      H_DEVADDR2     : SVD.UInt7 := 16#0#;
      H_ODDFRM2      : SVD.Bit := 16#0#;
      H_CHDIS2       : SVD.Bit := 16#0#;
      H_CHENA2       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCCHAR2_Register use record
      H_MPS2         at 0 range 0 .. 10;
      H_EPNUM2       at 0 range 11 .. 14;
      H_EPDIR2       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      H_LSPDDEV2     at 0 range 17 .. 17;
      H_EPTYPE2      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      H_EC2          at 0 range 21 .. 21;
      H_DEVADDR2     at 0 range 22 .. 28;
      H_ODDFRM2      at 0 range 29 .. 29;
      H_CHDIS2       at 0 range 30 .. 30;
      H_CHENA2       at 0 range 31 .. 31;
   end record;

   type HCINT2_Register is record
      H_XFERCOMPL2         : SVD.Bit := 16#0#;
      H_CHHLTD2            : SVD.Bit := 16#0#;
      H_AHBERR2            : SVD.Bit := 16#0#;
      H_STALL2             : SVD.Bit := 16#0#;
      H_NACK2              : SVD.Bit := 16#0#;
      H_ACK2               : SVD.Bit := 16#0#;
      H_NYET2              : SVD.Bit := 16#0#;
      H_XACTERR2           : SVD.Bit := 16#0#;
      H_BBLERR2            : SVD.Bit := 16#0#;
      H_FRMOVRUN2          : SVD.Bit := 16#0#;
      H_DATATGLERR2        : SVD.Bit := 16#0#;
      H_BNAINTR2           : SVD.Bit := 16#0#;
      H_XCS_XACT_ERR2      : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTR2 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31       : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINT2_Register use record
      H_XFERCOMPL2         at 0 range 0 .. 0;
      H_CHHLTD2            at 0 range 1 .. 1;
      H_AHBERR2            at 0 range 2 .. 2;
      H_STALL2             at 0 range 3 .. 3;
      H_NACK2              at 0 range 4 .. 4;
      H_ACK2               at 0 range 5 .. 5;
      H_NYET2              at 0 range 6 .. 6;
      H_XACTERR2           at 0 range 7 .. 7;
      H_BBLERR2            at 0 range 8 .. 8;
      H_FRMOVRUN2          at 0 range 9 .. 9;
      H_DATATGLERR2        at 0 range 10 .. 10;
      H_BNAINTR2           at 0 range 11 .. 11;
      H_XCS_XACT_ERR2      at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTR2 at 0 range 13 .. 13;
      Reserved_14_31       at 0 range 14 .. 31;
   end record;

   type HCINTMSK2_Register is record
      H_XFERCOMPLMSK2         : SVD.Bit := 16#0#;
      H_CHHLTDMSK2            : SVD.Bit := 16#0#;
      H_AHBERRMSK2            : SVD.Bit := 16#0#;
      H_STALLMSK2             : SVD.Bit := 16#0#;
      H_NAKMSK2               : SVD.Bit := 16#0#;
      H_ACKMSK2               : SVD.Bit := 16#0#;
      H_NYETMSK2              : SVD.Bit := 16#0#;
      H_XACTERRMSK2           : SVD.Bit := 16#0#;
      H_BBLERRMSK2            : SVD.Bit := 16#0#;
      H_FRMOVRUNMSK2          : SVD.Bit := 16#0#;
      H_DATATGLERRMSK2        : SVD.Bit := 16#0#;
      H_BNAINTRMSK2           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_12_12          : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTRMSK2 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31          : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINTMSK2_Register use record
      H_XFERCOMPLMSK2         at 0 range 0 .. 0;
      H_CHHLTDMSK2            at 0 range 1 .. 1;
      H_AHBERRMSK2            at 0 range 2 .. 2;
      H_STALLMSK2             at 0 range 3 .. 3;
      H_NAKMSK2               at 0 range 4 .. 4;
      H_ACKMSK2               at 0 range 5 .. 5;
      H_NYETMSK2              at 0 range 6 .. 6;
      H_XACTERRMSK2           at 0 range 7 .. 7;
      H_BBLERRMSK2            at 0 range 8 .. 8;
      H_FRMOVRUNMSK2          at 0 range 9 .. 9;
      H_DATATGLERRMSK2        at 0 range 10 .. 10;
      H_BNAINTRMSK2           at 0 range 11 .. 11;
      Reserved_12_12          at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTRMSK2 at 0 range 13 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   type HCTSIZ2_Register is record
      H_XFERSIZE2 : SVD.UInt19 := 16#0#;
      H_PKTCNT2   : SVD.UInt10 := 16#0#;
      H_PID2      : SVD.UInt2 := 16#0#;
      H_DOPNG2    : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCTSIZ2_Register use record
      H_XFERSIZE2 at 0 range 0 .. 18;
      H_PKTCNT2   at 0 range 19 .. 28;
      H_PID2      at 0 range 29 .. 30;
      H_DOPNG2    at 0 range 31 .. 31;
   end record;

   type HCCHAR3_Register is record
      H_MPS3         : SVD.UInt11 := 16#0#;
      H_EPNUM3       : SVD.UInt4 := 16#0#;
      H_EPDIR3       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      H_LSPDDEV3     : SVD.Bit := 16#0#;
      H_EPTYPE3      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      H_EC3          : SVD.Bit := 16#0#;
      H_DEVADDR3     : SVD.UInt7 := 16#0#;
      H_ODDFRM3      : SVD.Bit := 16#0#;
      H_CHDIS3       : SVD.Bit := 16#0#;
      H_CHENA3       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCCHAR3_Register use record
      H_MPS3         at 0 range 0 .. 10;
      H_EPNUM3       at 0 range 11 .. 14;
      H_EPDIR3       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      H_LSPDDEV3     at 0 range 17 .. 17;
      H_EPTYPE3      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      H_EC3          at 0 range 21 .. 21;
      H_DEVADDR3     at 0 range 22 .. 28;
      H_ODDFRM3      at 0 range 29 .. 29;
      H_CHDIS3       at 0 range 30 .. 30;
      H_CHENA3       at 0 range 31 .. 31;
   end record;

   type HCINT3_Register is record
      H_XFERCOMPL3         : SVD.Bit := 16#0#;
      H_CHHLTD3            : SVD.Bit := 16#0#;
      H_AHBERR3            : SVD.Bit := 16#0#;
      H_STALL3             : SVD.Bit := 16#0#;
      H_NACK3              : SVD.Bit := 16#0#;
      H_ACK3               : SVD.Bit := 16#0#;
      H_NYET3              : SVD.Bit := 16#0#;
      H_XACTERR3           : SVD.Bit := 16#0#;
      H_BBLERR3            : SVD.Bit := 16#0#;
      H_FRMOVRUN3          : SVD.Bit := 16#0#;
      H_DATATGLERR3        : SVD.Bit := 16#0#;
      H_BNAINTR3           : SVD.Bit := 16#0#;
      H_XCS_XACT_ERR3      : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTR3 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31       : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINT3_Register use record
      H_XFERCOMPL3         at 0 range 0 .. 0;
      H_CHHLTD3            at 0 range 1 .. 1;
      H_AHBERR3            at 0 range 2 .. 2;
      H_STALL3             at 0 range 3 .. 3;
      H_NACK3              at 0 range 4 .. 4;
      H_ACK3               at 0 range 5 .. 5;
      H_NYET3              at 0 range 6 .. 6;
      H_XACTERR3           at 0 range 7 .. 7;
      H_BBLERR3            at 0 range 8 .. 8;
      H_FRMOVRUN3          at 0 range 9 .. 9;
      H_DATATGLERR3        at 0 range 10 .. 10;
      H_BNAINTR3           at 0 range 11 .. 11;
      H_XCS_XACT_ERR3      at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTR3 at 0 range 13 .. 13;
      Reserved_14_31       at 0 range 14 .. 31;
   end record;

   type HCINTMSK3_Register is record
      H_XFERCOMPLMSK3         : SVD.Bit := 16#0#;
      H_CHHLTDMSK3            : SVD.Bit := 16#0#;
      H_AHBERRMSK3            : SVD.Bit := 16#0#;
      H_STALLMSK3             : SVD.Bit := 16#0#;
      H_NAKMSK3               : SVD.Bit := 16#0#;
      H_ACKMSK3               : SVD.Bit := 16#0#;
      H_NYETMSK3              : SVD.Bit := 16#0#;
      H_XACTERRMSK3           : SVD.Bit := 16#0#;
      H_BBLERRMSK3            : SVD.Bit := 16#0#;
      H_FRMOVRUNMSK3          : SVD.Bit := 16#0#;
      H_DATATGLERRMSK3        : SVD.Bit := 16#0#;
      H_BNAINTRMSK3           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_12_12          : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTRMSK3 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31          : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINTMSK3_Register use record
      H_XFERCOMPLMSK3         at 0 range 0 .. 0;
      H_CHHLTDMSK3            at 0 range 1 .. 1;
      H_AHBERRMSK3            at 0 range 2 .. 2;
      H_STALLMSK3             at 0 range 3 .. 3;
      H_NAKMSK3               at 0 range 4 .. 4;
      H_ACKMSK3               at 0 range 5 .. 5;
      H_NYETMSK3              at 0 range 6 .. 6;
      H_XACTERRMSK3           at 0 range 7 .. 7;
      H_BBLERRMSK3            at 0 range 8 .. 8;
      H_FRMOVRUNMSK3          at 0 range 9 .. 9;
      H_DATATGLERRMSK3        at 0 range 10 .. 10;
      H_BNAINTRMSK3           at 0 range 11 .. 11;
      Reserved_12_12          at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTRMSK3 at 0 range 13 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   type HCTSIZ3_Register is record
      H_XFERSIZE3 : SVD.UInt19 := 16#0#;
      H_PKTCNT3   : SVD.UInt10 := 16#0#;
      H_PID3      : SVD.UInt2 := 16#0#;
      H_DOPNG3    : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCTSIZ3_Register use record
      H_XFERSIZE3 at 0 range 0 .. 18;
      H_PKTCNT3   at 0 range 19 .. 28;
      H_PID3      at 0 range 29 .. 30;
      H_DOPNG3    at 0 range 31 .. 31;
   end record;

   type HCCHAR4_Register is record
      H_MPS4         : SVD.UInt11 := 16#0#;
      H_EPNUM4       : SVD.UInt4 := 16#0#;
      H_EPDIR4       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      H_LSPDDEV4     : SVD.Bit := 16#0#;
      H_EPTYPE4      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      H_EC4          : SVD.Bit := 16#0#;
      H_DEVADDR4     : SVD.UInt7 := 16#0#;
      H_ODDFRM4      : SVD.Bit := 16#0#;
      H_CHDIS4       : SVD.Bit := 16#0#;
      H_CHENA4       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCCHAR4_Register use record
      H_MPS4         at 0 range 0 .. 10;
      H_EPNUM4       at 0 range 11 .. 14;
      H_EPDIR4       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      H_LSPDDEV4     at 0 range 17 .. 17;
      H_EPTYPE4      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      H_EC4          at 0 range 21 .. 21;
      H_DEVADDR4     at 0 range 22 .. 28;
      H_ODDFRM4      at 0 range 29 .. 29;
      H_CHDIS4       at 0 range 30 .. 30;
      H_CHENA4       at 0 range 31 .. 31;
   end record;

   type HCINT4_Register is record
      H_XFERCOMPL4         : SVD.Bit := 16#0#;
      H_CHHLTD4            : SVD.Bit := 16#0#;
      H_AHBERR4            : SVD.Bit := 16#0#;
      H_STALL4             : SVD.Bit := 16#0#;
      H_NACK4              : SVD.Bit := 16#0#;
      H_ACK4               : SVD.Bit := 16#0#;
      H_NYET4              : SVD.Bit := 16#0#;
      H_XACTERR4           : SVD.Bit := 16#0#;
      H_BBLERR4            : SVD.Bit := 16#0#;
      H_FRMOVRUN4          : SVD.Bit := 16#0#;
      H_DATATGLERR4        : SVD.Bit := 16#0#;
      H_BNAINTR4           : SVD.Bit := 16#0#;
      H_XCS_XACT_ERR4      : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTR4 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31       : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINT4_Register use record
      H_XFERCOMPL4         at 0 range 0 .. 0;
      H_CHHLTD4            at 0 range 1 .. 1;
      H_AHBERR4            at 0 range 2 .. 2;
      H_STALL4             at 0 range 3 .. 3;
      H_NACK4              at 0 range 4 .. 4;
      H_ACK4               at 0 range 5 .. 5;
      H_NYET4              at 0 range 6 .. 6;
      H_XACTERR4           at 0 range 7 .. 7;
      H_BBLERR4            at 0 range 8 .. 8;
      H_FRMOVRUN4          at 0 range 9 .. 9;
      H_DATATGLERR4        at 0 range 10 .. 10;
      H_BNAINTR4           at 0 range 11 .. 11;
      H_XCS_XACT_ERR4      at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTR4 at 0 range 13 .. 13;
      Reserved_14_31       at 0 range 14 .. 31;
   end record;

   type HCINTMSK4_Register is record
      H_XFERCOMPLMSK4         : SVD.Bit := 16#0#;
      H_CHHLTDMSK4            : SVD.Bit := 16#0#;
      H_AHBERRMSK4            : SVD.Bit := 16#0#;
      H_STALLMSK4             : SVD.Bit := 16#0#;
      H_NAKMSK4               : SVD.Bit := 16#0#;
      H_ACKMSK4               : SVD.Bit := 16#0#;
      H_NYETMSK4              : SVD.Bit := 16#0#;
      H_XACTERRMSK4           : SVD.Bit := 16#0#;
      H_BBLERRMSK4            : SVD.Bit := 16#0#;
      H_FRMOVRUNMSK4          : SVD.Bit := 16#0#;
      H_DATATGLERRMSK4        : SVD.Bit := 16#0#;
      H_BNAINTRMSK4           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_12_12          : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTRMSK4 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31          : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINTMSK4_Register use record
      H_XFERCOMPLMSK4         at 0 range 0 .. 0;
      H_CHHLTDMSK4            at 0 range 1 .. 1;
      H_AHBERRMSK4            at 0 range 2 .. 2;
      H_STALLMSK4             at 0 range 3 .. 3;
      H_NAKMSK4               at 0 range 4 .. 4;
      H_ACKMSK4               at 0 range 5 .. 5;
      H_NYETMSK4              at 0 range 6 .. 6;
      H_XACTERRMSK4           at 0 range 7 .. 7;
      H_BBLERRMSK4            at 0 range 8 .. 8;
      H_FRMOVRUNMSK4          at 0 range 9 .. 9;
      H_DATATGLERRMSK4        at 0 range 10 .. 10;
      H_BNAINTRMSK4           at 0 range 11 .. 11;
      Reserved_12_12          at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTRMSK4 at 0 range 13 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   type HCTSIZ4_Register is record
      H_XFERSIZE4 : SVD.UInt19 := 16#0#;
      H_PKTCNT4   : SVD.UInt10 := 16#0#;
      H_PID4      : SVD.UInt2 := 16#0#;
      H_DOPNG4    : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCTSIZ4_Register use record
      H_XFERSIZE4 at 0 range 0 .. 18;
      H_PKTCNT4   at 0 range 19 .. 28;
      H_PID4      at 0 range 29 .. 30;
      H_DOPNG4    at 0 range 31 .. 31;
   end record;

   type HCCHAR5_Register is record
      H_MPS5         : SVD.UInt11 := 16#0#;
      H_EPNUM5       : SVD.UInt4 := 16#0#;
      H_EPDIR5       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      H_LSPDDEV5     : SVD.Bit := 16#0#;
      H_EPTYPE5      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      H_EC5          : SVD.Bit := 16#0#;
      H_DEVADDR5     : SVD.UInt7 := 16#0#;
      H_ODDFRM5      : SVD.Bit := 16#0#;
      H_CHDIS5       : SVD.Bit := 16#0#;
      H_CHENA5       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCCHAR5_Register use record
      H_MPS5         at 0 range 0 .. 10;
      H_EPNUM5       at 0 range 11 .. 14;
      H_EPDIR5       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      H_LSPDDEV5     at 0 range 17 .. 17;
      H_EPTYPE5      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      H_EC5          at 0 range 21 .. 21;
      H_DEVADDR5     at 0 range 22 .. 28;
      H_ODDFRM5      at 0 range 29 .. 29;
      H_CHDIS5       at 0 range 30 .. 30;
      H_CHENA5       at 0 range 31 .. 31;
   end record;

   type HCINT5_Register is record
      H_XFERCOMPL5         : SVD.Bit := 16#0#;
      H_CHHLTD5            : SVD.Bit := 16#0#;
      H_AHBERR5            : SVD.Bit := 16#0#;
      H_STALL5             : SVD.Bit := 16#0#;
      H_NACK5              : SVD.Bit := 16#0#;
      H_ACK5               : SVD.Bit := 16#0#;
      H_NYET5              : SVD.Bit := 16#0#;
      H_XACTERR5           : SVD.Bit := 16#0#;
      H_BBLERR5            : SVD.Bit := 16#0#;
      H_FRMOVRUN5          : SVD.Bit := 16#0#;
      H_DATATGLERR5        : SVD.Bit := 16#0#;
      H_BNAINTR5           : SVD.Bit := 16#0#;
      H_XCS_XACT_ERR5      : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTR5 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31       : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINT5_Register use record
      H_XFERCOMPL5         at 0 range 0 .. 0;
      H_CHHLTD5            at 0 range 1 .. 1;
      H_AHBERR5            at 0 range 2 .. 2;
      H_STALL5             at 0 range 3 .. 3;
      H_NACK5              at 0 range 4 .. 4;
      H_ACK5               at 0 range 5 .. 5;
      H_NYET5              at 0 range 6 .. 6;
      H_XACTERR5           at 0 range 7 .. 7;
      H_BBLERR5            at 0 range 8 .. 8;
      H_FRMOVRUN5          at 0 range 9 .. 9;
      H_DATATGLERR5        at 0 range 10 .. 10;
      H_BNAINTR5           at 0 range 11 .. 11;
      H_XCS_XACT_ERR5      at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTR5 at 0 range 13 .. 13;
      Reserved_14_31       at 0 range 14 .. 31;
   end record;

   type HCINTMSK5_Register is record
      H_XFERCOMPLMSK5         : SVD.Bit := 16#0#;
      H_CHHLTDMSK5            : SVD.Bit := 16#0#;
      H_AHBERRMSK5            : SVD.Bit := 16#0#;
      H_STALLMSK5             : SVD.Bit := 16#0#;
      H_NAKMSK5               : SVD.Bit := 16#0#;
      H_ACKMSK5               : SVD.Bit := 16#0#;
      H_NYETMSK5              : SVD.Bit := 16#0#;
      H_XACTERRMSK5           : SVD.Bit := 16#0#;
      H_BBLERRMSK5            : SVD.Bit := 16#0#;
      H_FRMOVRUNMSK5          : SVD.Bit := 16#0#;
      H_DATATGLERRMSK5        : SVD.Bit := 16#0#;
      H_BNAINTRMSK5           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_12_12          : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTRMSK5 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31          : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINTMSK5_Register use record
      H_XFERCOMPLMSK5         at 0 range 0 .. 0;
      H_CHHLTDMSK5            at 0 range 1 .. 1;
      H_AHBERRMSK5            at 0 range 2 .. 2;
      H_STALLMSK5             at 0 range 3 .. 3;
      H_NAKMSK5               at 0 range 4 .. 4;
      H_ACKMSK5               at 0 range 5 .. 5;
      H_NYETMSK5              at 0 range 6 .. 6;
      H_XACTERRMSK5           at 0 range 7 .. 7;
      H_BBLERRMSK5            at 0 range 8 .. 8;
      H_FRMOVRUNMSK5          at 0 range 9 .. 9;
      H_DATATGLERRMSK5        at 0 range 10 .. 10;
      H_BNAINTRMSK5           at 0 range 11 .. 11;
      Reserved_12_12          at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTRMSK5 at 0 range 13 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   type HCTSIZ5_Register is record
      H_XFERSIZE5 : SVD.UInt19 := 16#0#;
      H_PKTCNT5   : SVD.UInt10 := 16#0#;
      H_PID5      : SVD.UInt2 := 16#0#;
      H_DOPNG5    : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCTSIZ5_Register use record
      H_XFERSIZE5 at 0 range 0 .. 18;
      H_PKTCNT5   at 0 range 19 .. 28;
      H_PID5      at 0 range 29 .. 30;
      H_DOPNG5    at 0 range 31 .. 31;
   end record;

   type HCCHAR6_Register is record
      H_MPS6         : SVD.UInt11 := 16#0#;
      H_EPNUM6       : SVD.UInt4 := 16#0#;
      H_EPDIR6       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      H_LSPDDEV6     : SVD.Bit := 16#0#;
      H_EPTYPE6      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      H_EC6          : SVD.Bit := 16#0#;
      H_DEVADDR6     : SVD.UInt7 := 16#0#;
      H_ODDFRM6      : SVD.Bit := 16#0#;
      H_CHDIS6       : SVD.Bit := 16#0#;
      H_CHENA6       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCCHAR6_Register use record
      H_MPS6         at 0 range 0 .. 10;
      H_EPNUM6       at 0 range 11 .. 14;
      H_EPDIR6       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      H_LSPDDEV6     at 0 range 17 .. 17;
      H_EPTYPE6      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      H_EC6          at 0 range 21 .. 21;
      H_DEVADDR6     at 0 range 22 .. 28;
      H_ODDFRM6      at 0 range 29 .. 29;
      H_CHDIS6       at 0 range 30 .. 30;
      H_CHENA6       at 0 range 31 .. 31;
   end record;

   type HCINT6_Register is record
      H_XFERCOMPL6         : SVD.Bit := 16#0#;
      H_CHHLTD6            : SVD.Bit := 16#0#;
      H_AHBERR6            : SVD.Bit := 16#0#;
      H_STALL6             : SVD.Bit := 16#0#;
      H_NACK6              : SVD.Bit := 16#0#;
      H_ACK6               : SVD.Bit := 16#0#;
      H_NYET6              : SVD.Bit := 16#0#;
      H_XACTERR6           : SVD.Bit := 16#0#;
      H_BBLERR6            : SVD.Bit := 16#0#;
      H_FRMOVRUN6          : SVD.Bit := 16#0#;
      H_DATATGLERR6        : SVD.Bit := 16#0#;
      H_BNAINTR6           : SVD.Bit := 16#0#;
      H_XCS_XACT_ERR6      : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTR6 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31       : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINT6_Register use record
      H_XFERCOMPL6         at 0 range 0 .. 0;
      H_CHHLTD6            at 0 range 1 .. 1;
      H_AHBERR6            at 0 range 2 .. 2;
      H_STALL6             at 0 range 3 .. 3;
      H_NACK6              at 0 range 4 .. 4;
      H_ACK6               at 0 range 5 .. 5;
      H_NYET6              at 0 range 6 .. 6;
      H_XACTERR6           at 0 range 7 .. 7;
      H_BBLERR6            at 0 range 8 .. 8;
      H_FRMOVRUN6          at 0 range 9 .. 9;
      H_DATATGLERR6        at 0 range 10 .. 10;
      H_BNAINTR6           at 0 range 11 .. 11;
      H_XCS_XACT_ERR6      at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTR6 at 0 range 13 .. 13;
      Reserved_14_31       at 0 range 14 .. 31;
   end record;

   type HCINTMSK6_Register is record
      H_XFERCOMPLMSK6         : SVD.Bit := 16#0#;
      H_CHHLTDMSK6            : SVD.Bit := 16#0#;
      H_AHBERRMSK6            : SVD.Bit := 16#0#;
      H_STALLMSK6             : SVD.Bit := 16#0#;
      H_NAKMSK6               : SVD.Bit := 16#0#;
      H_ACKMSK6               : SVD.Bit := 16#0#;
      H_NYETMSK6              : SVD.Bit := 16#0#;
      H_XACTERRMSK6           : SVD.Bit := 16#0#;
      H_BBLERRMSK6            : SVD.Bit := 16#0#;
      H_FRMOVRUNMSK6          : SVD.Bit := 16#0#;
      H_DATATGLERRMSK6        : SVD.Bit := 16#0#;
      H_BNAINTRMSK6           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_12_12          : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTRMSK6 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31          : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINTMSK6_Register use record
      H_XFERCOMPLMSK6         at 0 range 0 .. 0;
      H_CHHLTDMSK6            at 0 range 1 .. 1;
      H_AHBERRMSK6            at 0 range 2 .. 2;
      H_STALLMSK6             at 0 range 3 .. 3;
      H_NAKMSK6               at 0 range 4 .. 4;
      H_ACKMSK6               at 0 range 5 .. 5;
      H_NYETMSK6              at 0 range 6 .. 6;
      H_XACTERRMSK6           at 0 range 7 .. 7;
      H_BBLERRMSK6            at 0 range 8 .. 8;
      H_FRMOVRUNMSK6          at 0 range 9 .. 9;
      H_DATATGLERRMSK6        at 0 range 10 .. 10;
      H_BNAINTRMSK6           at 0 range 11 .. 11;
      Reserved_12_12          at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTRMSK6 at 0 range 13 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   type HCTSIZ6_Register is record
      H_XFERSIZE6 : SVD.UInt19 := 16#0#;
      H_PKTCNT6   : SVD.UInt10 := 16#0#;
      H_PID6      : SVD.UInt2 := 16#0#;
      H_DOPNG6    : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCTSIZ6_Register use record
      H_XFERSIZE6 at 0 range 0 .. 18;
      H_PKTCNT6   at 0 range 19 .. 28;
      H_PID6      at 0 range 29 .. 30;
      H_DOPNG6    at 0 range 31 .. 31;
   end record;

   type HCCHAR7_Register is record
      H_MPS7         : SVD.UInt11 := 16#0#;
      H_EPNUM7       : SVD.UInt4 := 16#0#;
      H_EPDIR7       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      H_LSPDDEV7     : SVD.Bit := 16#0#;
      H_EPTYPE7      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      H_EC7          : SVD.Bit := 16#0#;
      H_DEVADDR7     : SVD.UInt7 := 16#0#;
      H_ODDFRM7      : SVD.Bit := 16#0#;
      H_CHDIS7       : SVD.Bit := 16#0#;
      H_CHENA7       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCCHAR7_Register use record
      H_MPS7         at 0 range 0 .. 10;
      H_EPNUM7       at 0 range 11 .. 14;
      H_EPDIR7       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      H_LSPDDEV7     at 0 range 17 .. 17;
      H_EPTYPE7      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      H_EC7          at 0 range 21 .. 21;
      H_DEVADDR7     at 0 range 22 .. 28;
      H_ODDFRM7      at 0 range 29 .. 29;
      H_CHDIS7       at 0 range 30 .. 30;
      H_CHENA7       at 0 range 31 .. 31;
   end record;

   type HCINT7_Register is record
      H_XFERCOMPL7         : SVD.Bit := 16#0#;
      H_CHHLTD7            : SVD.Bit := 16#0#;
      H_AHBERR7            : SVD.Bit := 16#0#;
      H_STALL7             : SVD.Bit := 16#0#;
      H_NACK7              : SVD.Bit := 16#0#;
      H_ACK7               : SVD.Bit := 16#0#;
      H_NYET7              : SVD.Bit := 16#0#;
      H_XACTERR7           : SVD.Bit := 16#0#;
      H_BBLERR7            : SVD.Bit := 16#0#;
      H_FRMOVRUN7          : SVD.Bit := 16#0#;
      H_DATATGLERR7        : SVD.Bit := 16#0#;
      H_BNAINTR7           : SVD.Bit := 16#0#;
      H_XCS_XACT_ERR7      : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTR7 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31       : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINT7_Register use record
      H_XFERCOMPL7         at 0 range 0 .. 0;
      H_CHHLTD7            at 0 range 1 .. 1;
      H_AHBERR7            at 0 range 2 .. 2;
      H_STALL7             at 0 range 3 .. 3;
      H_NACK7              at 0 range 4 .. 4;
      H_ACK7               at 0 range 5 .. 5;
      H_NYET7              at 0 range 6 .. 6;
      H_XACTERR7           at 0 range 7 .. 7;
      H_BBLERR7            at 0 range 8 .. 8;
      H_FRMOVRUN7          at 0 range 9 .. 9;
      H_DATATGLERR7        at 0 range 10 .. 10;
      H_BNAINTR7           at 0 range 11 .. 11;
      H_XCS_XACT_ERR7      at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTR7 at 0 range 13 .. 13;
      Reserved_14_31       at 0 range 14 .. 31;
   end record;

   type HCINTMSK7_Register is record
      H_XFERCOMPLMSK7         : SVD.Bit := 16#0#;
      H_CHHLTDMSK7            : SVD.Bit := 16#0#;
      H_AHBERRMSK7            : SVD.Bit := 16#0#;
      H_STALLMSK7             : SVD.Bit := 16#0#;
      H_NAKMSK7               : SVD.Bit := 16#0#;
      H_ACKMSK7               : SVD.Bit := 16#0#;
      H_NYETMSK7              : SVD.Bit := 16#0#;
      H_XACTERRMSK7           : SVD.Bit := 16#0#;
      H_BBLERRMSK7            : SVD.Bit := 16#0#;
      H_FRMOVRUNMSK7          : SVD.Bit := 16#0#;
      H_DATATGLERRMSK7        : SVD.Bit := 16#0#;
      H_BNAINTRMSK7           : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_12_12          : SVD.Bit := 16#0#;
      H_DESC_LST_ROLLINTRMSK7 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31          : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCINTMSK7_Register use record
      H_XFERCOMPLMSK7         at 0 range 0 .. 0;
      H_CHHLTDMSK7            at 0 range 1 .. 1;
      H_AHBERRMSK7            at 0 range 2 .. 2;
      H_STALLMSK7             at 0 range 3 .. 3;
      H_NAKMSK7               at 0 range 4 .. 4;
      H_ACKMSK7               at 0 range 5 .. 5;
      H_NYETMSK7              at 0 range 6 .. 6;
      H_XACTERRMSK7           at 0 range 7 .. 7;
      H_BBLERRMSK7            at 0 range 8 .. 8;
      H_FRMOVRUNMSK7          at 0 range 9 .. 9;
      H_DATATGLERRMSK7        at 0 range 10 .. 10;
      H_BNAINTRMSK7           at 0 range 11 .. 11;
      Reserved_12_12          at 0 range 12 .. 12;
      H_DESC_LST_ROLLINTRMSK7 at 0 range 13 .. 13;
      Reserved_14_31          at 0 range 14 .. 31;
   end record;

   type HCTSIZ7_Register is record
      H_XFERSIZE7 : SVD.UInt19 := 16#0#;
      H_PKTCNT7   : SVD.UInt10 := 16#0#;
      H_PID7      : SVD.UInt2 := 16#0#;
      H_DOPNG7    : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCTSIZ7_Register use record
      H_XFERSIZE7 at 0 range 0 .. 18;
      H_PKTCNT7   at 0 range 19 .. 28;
      H_PID7      at 0 range 29 .. 30;
      H_DOPNG7    at 0 range 31 .. 31;
   end record;

   type DCFG_Register is record
      --  unspecified
      Reserved_0_1   : SVD.UInt2 := 16#0#;
      NZSTSOUTHSHK   : SVD.Bit := 16#0#;
      ENA32KHZSUSP   : SVD.Bit := 16#0#;
      DEVADDR        : SVD.UInt7 := 16#0#;
      PERFRLINT      : SVD.UInt2 := 16#0#;
      ENDEVOUTNAK    : SVD.Bit := 16#0#;
      XCVRDLY        : SVD.Bit := 16#0#;
      ERRATICINTMSK  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_17 : SVD.UInt2 := 16#0#;
      EPMISCNT       : SVD.UInt5 := 16#4#;
      DESCDMA        : SVD.Bit := 16#0#;
      PERSCHINTVL    : SVD.UInt2 := 16#0#;
      RESVALID       : SVD.UInt6 := 16#2#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCFG_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      NZSTSOUTHSHK   at 0 range 2 .. 2;
      ENA32KHZSUSP   at 0 range 3 .. 3;
      DEVADDR        at 0 range 4 .. 10;
      PERFRLINT      at 0 range 11 .. 12;
      ENDEVOUTNAK    at 0 range 13 .. 13;
      XCVRDLY        at 0 range 14 .. 14;
      ERRATICINTMSK  at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      EPMISCNT       at 0 range 18 .. 22;
      DESCDMA        at 0 range 23 .. 23;
      PERSCHINTVL    at 0 range 24 .. 25;
      RESVALID       at 0 range 26 .. 31;
   end record;

   type DCTL_Register is record
      RMTWKUPSIG          : SVD.Bit := 16#0#;
      SFTDISCON           : SVD.Bit := 16#0#;
      --  Read-only.
      GNPINNAKSTS         : SVD.Bit := 16#0#;
      --  Read-only.
      GOUTNAKSTS          : SVD.Bit := 16#0#;
      TSTCTL              : SVD.UInt3 := 16#0#;
      --  Write-only.
      SGNPINNAK           : SVD.Bit := 16#0#;
      --  Write-only.
      CGNPINNAK           : SVD.Bit := 16#0#;
      --  Write-only.
      SGOUTNAK            : SVD.Bit := 16#0#;
      --  Write-only.
      CGOUTNAK            : SVD.Bit := 16#0#;
      PWRONPRGDONE        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_12_12      : SVD.Bit := 16#0#;
      GMC                 : SVD.UInt2 := 16#1#;
      IGNRFRMNUM          : SVD.Bit := 16#0#;
      NAKONBBLE           : SVD.Bit := 16#0#;
      ENCOUNTONBNA        : SVD.Bit := 16#0#;
      DEEPSLEEPBESLREJECT : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_19_31      : SVD.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCTL_Register use record
      RMTWKUPSIG          at 0 range 0 .. 0;
      SFTDISCON           at 0 range 1 .. 1;
      GNPINNAKSTS         at 0 range 2 .. 2;
      GOUTNAKSTS          at 0 range 3 .. 3;
      TSTCTL              at 0 range 4 .. 6;
      SGNPINNAK           at 0 range 7 .. 7;
      CGNPINNAK           at 0 range 8 .. 8;
      SGOUTNAK            at 0 range 9 .. 9;
      CGOUTNAK            at 0 range 10 .. 10;
      PWRONPRGDONE        at 0 range 11 .. 11;
      Reserved_12_12      at 0 range 12 .. 12;
      GMC                 at 0 range 13 .. 14;
      IGNRFRMNUM          at 0 range 15 .. 15;
      NAKONBBLE           at 0 range 16 .. 16;
      ENCOUNTONBNA        at 0 range 17 .. 17;
      DEEPSLEEPBESLREJECT at 0 range 18 .. 18;
      Reserved_19_31      at 0 range 19 .. 31;
   end record;

   type DSTS_Register is record
      --  Read-only.
      SUSPSTS        : SVD.Bit;
      --  Read-only.
      ENUMSPD        : SVD.UInt2;
      --  Read-only.
      ERRTICERR      : SVD.Bit;
      --  unspecified
      Reserved_4_7   : SVD.UInt4;
      --  Read-only.
      SOFFN          : SVD.UInt14;
      --  Read-only.
      DEVLNSTS       : SVD.UInt2;
      --  unspecified
      Reserved_24_31 : SVD.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSTS_Register use record
      SUSPSTS        at 0 range 0 .. 0;
      ENUMSPD        at 0 range 1 .. 2;
      ERRTICERR      at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      SOFFN          at 0 range 8 .. 21;
      DEVLNSTS       at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   type DIEPMSK_Register is record
      DI_XFERCOMPLMSK : SVD.Bit := 16#0#;
      DI_EPDISBLDMSK  : SVD.Bit := 16#0#;
      DI_AHBERMSK     : SVD.Bit := 16#0#;
      TIMEOUTMSK      : SVD.Bit := 16#0#;
      INTKNTXFEMPMSK  : SVD.Bit := 16#0#;
      INTKNEPMISMSK   : SVD.Bit := 16#0#;
      INEPNAKEFFMSK   : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_7_7    : SVD.Bit := 16#0#;
      TXFIFOUNDRNMSK  : SVD.Bit := 16#0#;
      BNAININTRMSK    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_12  : SVD.UInt3 := 16#0#;
      DI_NAKMSK       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_14_31  : SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPMSK_Register use record
      DI_XFERCOMPLMSK at 0 range 0 .. 0;
      DI_EPDISBLDMSK  at 0 range 1 .. 1;
      DI_AHBERMSK     at 0 range 2 .. 2;
      TIMEOUTMSK      at 0 range 3 .. 3;
      INTKNTXFEMPMSK  at 0 range 4 .. 4;
      INTKNEPMISMSK   at 0 range 5 .. 5;
      INEPNAKEFFMSK   at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      TXFIFOUNDRNMSK  at 0 range 8 .. 8;
      BNAININTRMSK    at 0 range 9 .. 9;
      Reserved_10_12  at 0 range 10 .. 12;
      DI_NAKMSK       at 0 range 13 .. 13;
      Reserved_14_31  at 0 range 14 .. 31;
   end record;

   type DOEPMSK_Register is record
      XFERCOMPLMSK   : SVD.Bit := 16#0#;
      EPDISBLDMSK    : SVD.Bit := 16#0#;
      AHBERMSK       : SVD.Bit := 16#0#;
      SETUPMSK       : SVD.Bit := 16#0#;
      OUTTKNEPDISMSK : SVD.Bit := 16#0#;
      STSPHSERCVDMSK : SVD.Bit := 16#0#;
      BACK2BACKSETUP : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_7_7   : SVD.Bit := 16#0#;
      OUTPKTERRMSK   : SVD.Bit := 16#0#;
      BNAOUTINTRMSK  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_11 : SVD.UInt2 := 16#0#;
      BBLEERRMSK     : SVD.Bit := 16#0#;
      NAKMSK         : SVD.Bit := 16#0#;
      NYETMSK        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_15_31 : SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      EPDISBLDMSK    at 0 range 1 .. 1;
      AHBERMSK       at 0 range 2 .. 2;
      SETUPMSK       at 0 range 3 .. 3;
      OUTTKNEPDISMSK at 0 range 4 .. 4;
      STSPHSERCVDMSK at 0 range 5 .. 5;
      BACK2BACKSETUP at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OUTPKTERRMSK   at 0 range 8 .. 8;
      BNAOUTINTRMSK  at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      BBLEERRMSK     at 0 range 12 .. 12;
      NAKMSK         at 0 range 13 .. 13;
      NYETMSK        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  DAINT_INEPINT array
   type DAINT_INEPINT_Field_Array is array (0 .. 6) of SVD.Bit
     with Component_Size => 1, Size => 7;

   --  Type definition for DAINT_INEPINT
   type DAINT_INEPINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INEPINT as a value
            Val : SVD.UInt7;
         when True =>
            --  INEPINT as an array
            Arr : DAINT_INEPINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for DAINT_INEPINT_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  DAINT_OUTEPINT array
   type DAINT_OUTEPINT_Field_Array is array (0 .. 6) of SVD.Bit
     with Component_Size => 1, Size => 7;

   --  Type definition for DAINT_OUTEPINT
   type DAINT_OUTEPINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OUTEPINT as a value
            Val : SVD.UInt7;
         when True =>
            --  OUTEPINT as an array
            Arr : DAINT_OUTEPINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for DAINT_OUTEPINT_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   type DAINT_Register is record
      --  Read-only.
      INEPINT        : DAINT_INEPINT_Field;
      --  unspecified
      Reserved_7_15  : SVD.UInt9;
      --  Read-only.
      OUTEPINT       : DAINT_OUTEPINT_Field;
      --  unspecified
      Reserved_23_31 : SVD.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAINT_Register use record
      INEPINT        at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OUTEPINT       at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  DAINTMSK_INEPMSK array
   type DAINTMSK_INEPMSK_Field_Array is array (0 .. 6) of SVD.Bit
     with Component_Size => 1, Size => 7;

   --  Type definition for DAINTMSK_INEPMSK
   type DAINTMSK_INEPMSK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INEPMSK as a value
            Val : SVD.UInt7;
         when True =>
            --  INEPMSK as an array
            Arr : DAINTMSK_INEPMSK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for DAINTMSK_INEPMSK_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  DAINTMSK_OUTEPMSK array
   type DAINTMSK_OUTEPMSK_Field_Array is array (0 .. 6) of SVD.Bit
     with Component_Size => 1, Size => 7;

   --  Type definition for DAINTMSK_OUTEPMSK
   type DAINTMSK_OUTEPMSK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OUTEPMSK as a value
            Val : SVD.UInt7;
         when True =>
            --  OUTEPMSK as an array
            Arr : DAINTMSK_OUTEPMSK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for DAINTMSK_OUTEPMSK_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   type DAINTMSK_Register is record
      INEPMSK        : DAINTMSK_INEPMSK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_15  : SVD.UInt9 := 16#0#;
      OUTEPMSK       : DAINTMSK_OUTEPMSK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : SVD.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAINTMSK_Register use record
      INEPMSK        at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OUTEPMSK       at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   type DVBUSDIS_Register is record
      DVBUSDIS       : SVD.UInt16 := 16#17D7#;
      --  unspecified
      Reserved_16_31 : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DVBUSDIS_Register use record
      DVBUSDIS       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   type DVBUSPULSE_Register is record
      DVBUSPULSE     : SVD.UInt12 := 16#5B8#;
      --  unspecified
      Reserved_12_31 : SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DVBUSPULSE_Register use record
      DVBUSPULSE     at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   type DTHRCTL_Register is record
      NONISOTHREN    : SVD.Bit := 16#0#;
      ISOTHREN       : SVD.Bit := 16#0#;
      TXTHRLEN       : SVD.UInt9 := 16#8#;
      AHBTHRRATIO    : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_13_15 : SVD.UInt3 := 16#0#;
      RXTHREN        : SVD.Bit := 16#0#;
      RXTHRLEN       : SVD.UInt9 := 16#1#;
      --  unspecified
      Reserved_26_26 : SVD.Bit := 16#0#;
      ARBPRKEN       : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_28_31 : SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTHRCTL_Register use record
      NONISOTHREN    at 0 range 0 .. 0;
      ISOTHREN       at 0 range 1 .. 1;
      TXTHRLEN       at 0 range 2 .. 10;
      AHBTHRRATIO    at 0 range 11 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      RXTHREN        at 0 range 16 .. 16;
      RXTHRLEN       at 0 range 17 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      ARBPRKEN       at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   type DIEPEMPMSK_Register is record
      D_INEPTXFEMPMSK : SVD.UInt16 := 16#0#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPEMPMSK_Register use record
      D_INEPTXFEMPMSK at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   type DIEPCTL0_Register is record
      D_MPS0         : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_14  : SVD.UInt13 := 16#0#;
      --  Read-only.
      D_USBACTEP0    : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      D_NAKSTS0      : SVD.Bit := 16#0#;
      --  Read-only.
      D_EPTYPE0      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      D_STALL0       : SVD.Bit := 16#0#;
      D_TXFNUM0      : SVD.UInt4 := 16#0#;
      --  Write-only.
      D_CNAK0        : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SNAK0       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_28_29 : SVD.UInt2 := 16#0#;
      D_EPDIS0       : SVD.Bit := 16#0#;
      D_EPENA0       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPCTL0_Register use record
      D_MPS0         at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      D_USBACTEP0    at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      D_NAKSTS0      at 0 range 17 .. 17;
      D_EPTYPE0      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      D_STALL0       at 0 range 21 .. 21;
      D_TXFNUM0      at 0 range 22 .. 25;
      D_CNAK0        at 0 range 26 .. 26;
      DI_SNAK0       at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      D_EPDIS0       at 0 range 30 .. 30;
      D_EPENA0       at 0 range 31 .. 31;
   end record;

   type DIEPINT0_Register is record
      D_XFERCOMPL0   : SVD.Bit := 16#0#;
      D_EPDISBLD0    : SVD.Bit := 16#0#;
      D_AHBERR0      : SVD.Bit := 16#0#;
      D_TIMEOUT0     : SVD.Bit := 16#0#;
      D_INTKNTXFEMP0 : SVD.Bit := 16#0#;
      D_INTKNEPMIS0  : SVD.Bit := 16#0#;
      D_INEPNAKEFF0  : SVD.Bit := 16#0#;
      --  Read-only.
      D_TXFEMP0      : SVD.Bit := 16#0#;
      D_TXFIFOUNDRN0 : SVD.Bit := 16#0#;
      D_BNAINTR0     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10 : SVD.Bit := 16#0#;
      D_PKTDRPSTS0   : SVD.Bit := 16#0#;
      D_BBLEERR0     : SVD.Bit := 16#0#;
      D_NAKINTRPT0   : SVD.Bit := 16#0#;
      D_NYETINTRPT0  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_15_31 : SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPINT0_Register use record
      D_XFERCOMPL0   at 0 range 0 .. 0;
      D_EPDISBLD0    at 0 range 1 .. 1;
      D_AHBERR0      at 0 range 2 .. 2;
      D_TIMEOUT0     at 0 range 3 .. 3;
      D_INTKNTXFEMP0 at 0 range 4 .. 4;
      D_INTKNEPMIS0  at 0 range 5 .. 5;
      D_INEPNAKEFF0  at 0 range 6 .. 6;
      D_TXFEMP0      at 0 range 7 .. 7;
      D_TXFIFOUNDRN0 at 0 range 8 .. 8;
      D_BNAINTR0     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      D_PKTDRPSTS0   at 0 range 11 .. 11;
      D_BBLEERR0     at 0 range 12 .. 12;
      D_NAKINTRPT0   at 0 range 13 .. 13;
      D_NYETINTRPT0  at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   type DIEPTSIZ0_Register is record
      D_XFERSIZE0    : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      D_PKTCNT0      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_21_31 : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTSIZ0_Register use record
      D_XFERSIZE0    at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      D_PKTCNT0      at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   type DTXFSTS0_Register is record
      --  Read-only.
      D_INEPTXFSPCAVAIL0 : SVD.UInt16;
      --  unspecified
      Reserved_16_31     : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTXFSTS0_Register use record
      D_INEPTXFSPCAVAIL0 at 0 range 0 .. 15;
      Reserved_16_31     at 0 range 16 .. 31;
   end record;

   type DIEPCTL1_Register is record
      D_MPS1         : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_14  : SVD.UInt13 := 16#0#;
      --  Read-only.
      D_USBACTEP1    : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      D_NAKSTS1      : SVD.Bit := 16#0#;
      --  Read-only.
      D_EPTYPE1      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      D_STALL1       : SVD.Bit := 16#0#;
      D_TXFNUM1      : SVD.UInt4 := 16#0#;
      --  Write-only.
      D_CNAK1        : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SNAK1       : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD0PID1   : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD1PID1   : SVD.Bit := 16#0#;
      D_EPDIS1       : SVD.Bit := 16#0#;
      D_EPENA1       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPCTL1_Register use record
      D_MPS1         at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      D_USBACTEP1    at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      D_NAKSTS1      at 0 range 17 .. 17;
      D_EPTYPE1      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      D_STALL1       at 0 range 21 .. 21;
      D_TXFNUM1      at 0 range 22 .. 25;
      D_CNAK1        at 0 range 26 .. 26;
      DI_SNAK1       at 0 range 27 .. 27;
      DI_SETD0PID1   at 0 range 28 .. 28;
      DI_SETD1PID1   at 0 range 29 .. 29;
      D_EPDIS1       at 0 range 30 .. 30;
      D_EPENA1       at 0 range 31 .. 31;
   end record;

   type DIEPINT1_Register is record
      D_XFERCOMPL1   : SVD.Bit := 16#0#;
      D_EPDISBLD1    : SVD.Bit := 16#0#;
      D_AHBERR1      : SVD.Bit := 16#0#;
      D_TIMEOUT1     : SVD.Bit := 16#0#;
      D_INTKNTXFEMP1 : SVD.Bit := 16#0#;
      D_INTKNEPMIS1  : SVD.Bit := 16#0#;
      D_INEPNAKEFF1  : SVD.Bit := 16#0#;
      --  Read-only.
      D_TXFEMP1      : SVD.Bit := 16#0#;
      D_TXFIFOUNDRN1 : SVD.Bit := 16#0#;
      D_BNAINTR1     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10 : SVD.Bit := 16#0#;
      D_PKTDRPSTS1   : SVD.Bit := 16#0#;
      D_BBLEERR1     : SVD.Bit := 16#0#;
      D_NAKINTRPT1   : SVD.Bit := 16#0#;
      D_NYETINTRPT1  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_15_31 : SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPINT1_Register use record
      D_XFERCOMPL1   at 0 range 0 .. 0;
      D_EPDISBLD1    at 0 range 1 .. 1;
      D_AHBERR1      at 0 range 2 .. 2;
      D_TIMEOUT1     at 0 range 3 .. 3;
      D_INTKNTXFEMP1 at 0 range 4 .. 4;
      D_INTKNEPMIS1  at 0 range 5 .. 5;
      D_INEPNAKEFF1  at 0 range 6 .. 6;
      D_TXFEMP1      at 0 range 7 .. 7;
      D_TXFIFOUNDRN1 at 0 range 8 .. 8;
      D_BNAINTR1     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      D_PKTDRPSTS1   at 0 range 11 .. 11;
      D_BBLEERR1     at 0 range 12 .. 12;
      D_NAKINTRPT1   at 0 range 13 .. 13;
      D_NYETINTRPT1  at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   type DIEPTSIZ1_Register is record
      D_XFERSIZE1    : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      D_PKTCNT1      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_21_31 : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTSIZ1_Register use record
      D_XFERSIZE1    at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      D_PKTCNT1      at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   type DTXFSTS1_Register is record
      --  Read-only.
      D_INEPTXFSPCAVAIL1 : SVD.UInt16;
      --  unspecified
      Reserved_16_31     : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTXFSTS1_Register use record
      D_INEPTXFSPCAVAIL1 at 0 range 0 .. 15;
      Reserved_16_31     at 0 range 16 .. 31;
   end record;

   type DIEPCTL2_Register is record
      D_MPS2         : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_14  : SVD.UInt13 := 16#0#;
      --  Read-only.
      D_USBACTEP2    : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      D_NAKSTS2      : SVD.Bit := 16#0#;
      --  Read-only.
      D_EPTYPE2      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      D_STALL2       : SVD.Bit := 16#0#;
      D_TXFNUM2      : SVD.UInt4 := 16#0#;
      --  Write-only.
      D_CNAK2        : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SNAK2       : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD0PID2   : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD1PID2   : SVD.Bit := 16#0#;
      D_EPDIS2       : SVD.Bit := 16#0#;
      D_EPENA2       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPCTL2_Register use record
      D_MPS2         at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      D_USBACTEP2    at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      D_NAKSTS2      at 0 range 17 .. 17;
      D_EPTYPE2      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      D_STALL2       at 0 range 21 .. 21;
      D_TXFNUM2      at 0 range 22 .. 25;
      D_CNAK2        at 0 range 26 .. 26;
      DI_SNAK2       at 0 range 27 .. 27;
      DI_SETD0PID2   at 0 range 28 .. 28;
      DI_SETD1PID2   at 0 range 29 .. 29;
      D_EPDIS2       at 0 range 30 .. 30;
      D_EPENA2       at 0 range 31 .. 31;
   end record;

   type DIEPINT2_Register is record
      D_XFERCOMPL2   : SVD.Bit := 16#0#;
      D_EPDISBLD2    : SVD.Bit := 16#0#;
      D_AHBERR2      : SVD.Bit := 16#0#;
      D_TIMEOUT2     : SVD.Bit := 16#0#;
      D_INTKNTXFEMP2 : SVD.Bit := 16#0#;
      D_INTKNEPMIS2  : SVD.Bit := 16#0#;
      D_INEPNAKEFF2  : SVD.Bit := 16#0#;
      --  Read-only.
      D_TXFEMP2      : SVD.Bit := 16#0#;
      D_TXFIFOUNDRN2 : SVD.Bit := 16#0#;
      D_BNAINTR2     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10 : SVD.Bit := 16#0#;
      D_PKTDRPSTS2   : SVD.Bit := 16#0#;
      D_BBLEERR2     : SVD.Bit := 16#0#;
      D_NAKINTRPT2   : SVD.Bit := 16#0#;
      D_NYETINTRPT2  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_15_31 : SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPINT2_Register use record
      D_XFERCOMPL2   at 0 range 0 .. 0;
      D_EPDISBLD2    at 0 range 1 .. 1;
      D_AHBERR2      at 0 range 2 .. 2;
      D_TIMEOUT2     at 0 range 3 .. 3;
      D_INTKNTXFEMP2 at 0 range 4 .. 4;
      D_INTKNEPMIS2  at 0 range 5 .. 5;
      D_INEPNAKEFF2  at 0 range 6 .. 6;
      D_TXFEMP2      at 0 range 7 .. 7;
      D_TXFIFOUNDRN2 at 0 range 8 .. 8;
      D_BNAINTR2     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      D_PKTDRPSTS2   at 0 range 11 .. 11;
      D_BBLEERR2     at 0 range 12 .. 12;
      D_NAKINTRPT2   at 0 range 13 .. 13;
      D_NYETINTRPT2  at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   type DIEPTSIZ2_Register is record
      D_XFERSIZE2    : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      D_PKTCNT2      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_21_31 : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTSIZ2_Register use record
      D_XFERSIZE2    at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      D_PKTCNT2      at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   type DTXFSTS2_Register is record
      --  Read-only.
      D_INEPTXFSPCAVAIL2 : SVD.UInt16;
      --  unspecified
      Reserved_16_31     : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTXFSTS2_Register use record
      D_INEPTXFSPCAVAIL2 at 0 range 0 .. 15;
      Reserved_16_31     at 0 range 16 .. 31;
   end record;

   type DIEPCTL3_Register is record
      DI_MPS3        : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_14  : SVD.UInt13 := 16#0#;
      --  Read-only.
      DI_USBACTEP3   : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      DI_NAKSTS3     : SVD.Bit := 16#0#;
      --  Read-only.
      DI_EPTYPE3     : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      DI_STALL3      : SVD.Bit := 16#0#;
      DI_TXFNUM3     : SVD.UInt4 := 16#0#;
      --  Write-only.
      DI_CNAK3       : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SNAK3       : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD0PID3   : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD1PID3   : SVD.Bit := 16#0#;
      DI_EPDIS3      : SVD.Bit := 16#0#;
      DI_EPENA3      : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPCTL3_Register use record
      DI_MPS3        at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      DI_USBACTEP3   at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      DI_NAKSTS3     at 0 range 17 .. 17;
      DI_EPTYPE3     at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      DI_STALL3      at 0 range 21 .. 21;
      DI_TXFNUM3     at 0 range 22 .. 25;
      DI_CNAK3       at 0 range 26 .. 26;
      DI_SNAK3       at 0 range 27 .. 27;
      DI_SETD0PID3   at 0 range 28 .. 28;
      DI_SETD1PID3   at 0 range 29 .. 29;
      DI_EPDIS3      at 0 range 30 .. 30;
      DI_EPENA3      at 0 range 31 .. 31;
   end record;

   type DIEPINT3_Register is record
      D_XFERCOMPL3   : SVD.Bit := 16#0#;
      D_EPDISBLD3    : SVD.Bit := 16#0#;
      D_AHBERR3      : SVD.Bit := 16#0#;
      D_TIMEOUT3     : SVD.Bit := 16#0#;
      D_INTKNTXFEMP3 : SVD.Bit := 16#0#;
      D_INTKNEPMIS3  : SVD.Bit := 16#0#;
      D_INEPNAKEFF3  : SVD.Bit := 16#0#;
      --  Read-only.
      D_TXFEMP3      : SVD.Bit := 16#0#;
      D_TXFIFOUNDRN3 : SVD.Bit := 16#0#;
      D_BNAINTR3     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10 : SVD.Bit := 16#0#;
      D_PKTDRPSTS3   : SVD.Bit := 16#0#;
      D_BBLEERR3     : SVD.Bit := 16#0#;
      D_NAKINTRPT3   : SVD.Bit := 16#0#;
      D_NYETINTRPT3  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_15_31 : SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPINT3_Register use record
      D_XFERCOMPL3   at 0 range 0 .. 0;
      D_EPDISBLD3    at 0 range 1 .. 1;
      D_AHBERR3      at 0 range 2 .. 2;
      D_TIMEOUT3     at 0 range 3 .. 3;
      D_INTKNTXFEMP3 at 0 range 4 .. 4;
      D_INTKNEPMIS3  at 0 range 5 .. 5;
      D_INEPNAKEFF3  at 0 range 6 .. 6;
      D_TXFEMP3      at 0 range 7 .. 7;
      D_TXFIFOUNDRN3 at 0 range 8 .. 8;
      D_BNAINTR3     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      D_PKTDRPSTS3   at 0 range 11 .. 11;
      D_BBLEERR3     at 0 range 12 .. 12;
      D_NAKINTRPT3   at 0 range 13 .. 13;
      D_NYETINTRPT3  at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   type DIEPTSIZ3_Register is record
      D_XFERSIZE3    : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      D_PKTCNT3      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_21_31 : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTSIZ3_Register use record
      D_XFERSIZE3    at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      D_PKTCNT3      at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   type DTXFSTS3_Register is record
      --  Read-only.
      D_INEPTXFSPCAVAIL3 : SVD.UInt16;
      --  unspecified
      Reserved_16_31     : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTXFSTS3_Register use record
      D_INEPTXFSPCAVAIL3 at 0 range 0 .. 15;
      Reserved_16_31     at 0 range 16 .. 31;
   end record;

   type DIEPCTL4_Register is record
      D_MPS4         : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_14  : SVD.UInt13 := 16#0#;
      --  Read-only.
      D_USBACTEP4    : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      D_NAKSTS4      : SVD.Bit := 16#0#;
      --  Read-only.
      D_EPTYPE4      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      D_STALL4       : SVD.Bit := 16#0#;
      D_TXFNUM4      : SVD.UInt4 := 16#0#;
      --  Write-only.
      D_CNAK4        : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SNAK4       : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD0PID4   : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD1PID4   : SVD.Bit := 16#0#;
      D_EPDIS4       : SVD.Bit := 16#0#;
      D_EPENA4       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPCTL4_Register use record
      D_MPS4         at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      D_USBACTEP4    at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      D_NAKSTS4      at 0 range 17 .. 17;
      D_EPTYPE4      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      D_STALL4       at 0 range 21 .. 21;
      D_TXFNUM4      at 0 range 22 .. 25;
      D_CNAK4        at 0 range 26 .. 26;
      DI_SNAK4       at 0 range 27 .. 27;
      DI_SETD0PID4   at 0 range 28 .. 28;
      DI_SETD1PID4   at 0 range 29 .. 29;
      D_EPDIS4       at 0 range 30 .. 30;
      D_EPENA4       at 0 range 31 .. 31;
   end record;

   type DIEPINT4_Register is record
      D_XFERCOMPL4   : SVD.Bit := 16#0#;
      D_EPDISBLD4    : SVD.Bit := 16#0#;
      D_AHBERR4      : SVD.Bit := 16#0#;
      D_TIMEOUT4     : SVD.Bit := 16#0#;
      D_INTKNTXFEMP4 : SVD.Bit := 16#0#;
      D_INTKNEPMIS4  : SVD.Bit := 16#0#;
      D_INEPNAKEFF4  : SVD.Bit := 16#0#;
      --  Read-only.
      D_TXFEMP4      : SVD.Bit := 16#0#;
      D_TXFIFOUNDRN4 : SVD.Bit := 16#0#;
      D_BNAINTR4     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10 : SVD.Bit := 16#0#;
      D_PKTDRPSTS4   : SVD.Bit := 16#0#;
      D_BBLEERR4     : SVD.Bit := 16#0#;
      D_NAKINTRPT4   : SVD.Bit := 16#0#;
      D_NYETINTRPT4  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_15_31 : SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPINT4_Register use record
      D_XFERCOMPL4   at 0 range 0 .. 0;
      D_EPDISBLD4    at 0 range 1 .. 1;
      D_AHBERR4      at 0 range 2 .. 2;
      D_TIMEOUT4     at 0 range 3 .. 3;
      D_INTKNTXFEMP4 at 0 range 4 .. 4;
      D_INTKNEPMIS4  at 0 range 5 .. 5;
      D_INEPNAKEFF4  at 0 range 6 .. 6;
      D_TXFEMP4      at 0 range 7 .. 7;
      D_TXFIFOUNDRN4 at 0 range 8 .. 8;
      D_BNAINTR4     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      D_PKTDRPSTS4   at 0 range 11 .. 11;
      D_BBLEERR4     at 0 range 12 .. 12;
      D_NAKINTRPT4   at 0 range 13 .. 13;
      D_NYETINTRPT4  at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   type DIEPTSIZ4_Register is record
      D_XFERSIZE4    : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      D_PKTCNT4      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_21_31 : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTSIZ4_Register use record
      D_XFERSIZE4    at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      D_PKTCNT4      at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   type DTXFSTS4_Register is record
      --  Read-only.
      D_INEPTXFSPCAVAIL4 : SVD.UInt16;
      --  unspecified
      Reserved_16_31     : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTXFSTS4_Register use record
      D_INEPTXFSPCAVAIL4 at 0 range 0 .. 15;
      Reserved_16_31     at 0 range 16 .. 31;
   end record;

   type DIEPCTL5_Register is record
      DI_MPS5        : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_14  : SVD.UInt13 := 16#0#;
      --  Read-only.
      DI_USBACTEP5   : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      DI_NAKSTS5     : SVD.Bit := 16#0#;
      --  Read-only.
      DI_EPTYPE5     : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      DI_STALL5      : SVD.Bit := 16#0#;
      DI_TXFNUM5     : SVD.UInt4 := 16#0#;
      --  Write-only.
      DI_CNAK5       : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SNAK5       : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD0PID5   : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD1PID5   : SVD.Bit := 16#0#;
      DI_EPDIS5      : SVD.Bit := 16#0#;
      DI_EPENA5      : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPCTL5_Register use record
      DI_MPS5        at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      DI_USBACTEP5   at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      DI_NAKSTS5     at 0 range 17 .. 17;
      DI_EPTYPE5     at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      DI_STALL5      at 0 range 21 .. 21;
      DI_TXFNUM5     at 0 range 22 .. 25;
      DI_CNAK5       at 0 range 26 .. 26;
      DI_SNAK5       at 0 range 27 .. 27;
      DI_SETD0PID5   at 0 range 28 .. 28;
      DI_SETD1PID5   at 0 range 29 .. 29;
      DI_EPDIS5      at 0 range 30 .. 30;
      DI_EPENA5      at 0 range 31 .. 31;
   end record;

   type DIEPINT5_Register is record
      D_XFERCOMPL5   : SVD.Bit := 16#0#;
      D_EPDISBLD5    : SVD.Bit := 16#0#;
      D_AHBERR5      : SVD.Bit := 16#0#;
      D_TIMEOUT5     : SVD.Bit := 16#0#;
      D_INTKNTXFEMP5 : SVD.Bit := 16#0#;
      D_INTKNEPMIS5  : SVD.Bit := 16#0#;
      D_INEPNAKEFF5  : SVD.Bit := 16#0#;
      --  Read-only.
      D_TXFEMP5      : SVD.Bit := 16#0#;
      D_TXFIFOUNDRN5 : SVD.Bit := 16#0#;
      D_BNAINTR5     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10 : SVD.Bit := 16#0#;
      D_PKTDRPSTS5   : SVD.Bit := 16#0#;
      D_BBLEERR5     : SVD.Bit := 16#0#;
      D_NAKINTRPT5   : SVD.Bit := 16#0#;
      D_NYETINTRPT5  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_15_31 : SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPINT5_Register use record
      D_XFERCOMPL5   at 0 range 0 .. 0;
      D_EPDISBLD5    at 0 range 1 .. 1;
      D_AHBERR5      at 0 range 2 .. 2;
      D_TIMEOUT5     at 0 range 3 .. 3;
      D_INTKNTXFEMP5 at 0 range 4 .. 4;
      D_INTKNEPMIS5  at 0 range 5 .. 5;
      D_INEPNAKEFF5  at 0 range 6 .. 6;
      D_TXFEMP5      at 0 range 7 .. 7;
      D_TXFIFOUNDRN5 at 0 range 8 .. 8;
      D_BNAINTR5     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      D_PKTDRPSTS5   at 0 range 11 .. 11;
      D_BBLEERR5     at 0 range 12 .. 12;
      D_NAKINTRPT5   at 0 range 13 .. 13;
      D_NYETINTRPT5  at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   type DIEPTSIZ5_Register is record
      D_XFERSIZE5    : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      D_PKTCNT5      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_21_31 : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTSIZ5_Register use record
      D_XFERSIZE5    at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      D_PKTCNT5      at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   type DTXFSTS5_Register is record
      --  Read-only.
      D_INEPTXFSPCAVAIL5 : SVD.UInt16;
      --  unspecified
      Reserved_16_31     : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTXFSTS5_Register use record
      D_INEPTXFSPCAVAIL5 at 0 range 0 .. 15;
      Reserved_16_31     at 0 range 16 .. 31;
   end record;

   type DIEPCTL6_Register is record
      D_MPS6         : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_14  : SVD.UInt13 := 16#0#;
      --  Read-only.
      D_USBACTEP6    : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      D_NAKSTS6      : SVD.Bit := 16#0#;
      --  Read-only.
      D_EPTYPE6      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_20_20 : SVD.Bit := 16#0#;
      D_STALL6       : SVD.Bit := 16#0#;
      D_TXFNUM6      : SVD.UInt4 := 16#0#;
      --  Write-only.
      D_CNAK6        : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SNAK6       : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD0PID6   : SVD.Bit := 16#0#;
      --  Write-only.
      DI_SETD1PID6   : SVD.Bit := 16#0#;
      D_EPDIS6       : SVD.Bit := 16#0#;
      D_EPENA6       : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPCTL6_Register use record
      D_MPS6         at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      D_USBACTEP6    at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      D_NAKSTS6      at 0 range 17 .. 17;
      D_EPTYPE6      at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      D_STALL6       at 0 range 21 .. 21;
      D_TXFNUM6      at 0 range 22 .. 25;
      D_CNAK6        at 0 range 26 .. 26;
      DI_SNAK6       at 0 range 27 .. 27;
      DI_SETD0PID6   at 0 range 28 .. 28;
      DI_SETD1PID6   at 0 range 29 .. 29;
      D_EPDIS6       at 0 range 30 .. 30;
      D_EPENA6       at 0 range 31 .. 31;
   end record;

   type DIEPINT6_Register is record
      D_XFERCOMPL6   : SVD.Bit := 16#0#;
      D_EPDISBLD6    : SVD.Bit := 16#0#;
      D_AHBERR6      : SVD.Bit := 16#0#;
      D_TIMEOUT6     : SVD.Bit := 16#0#;
      D_INTKNTXFEMP6 : SVD.Bit := 16#0#;
      D_INTKNEPMIS6  : SVD.Bit := 16#0#;
      D_INEPNAKEFF6  : SVD.Bit := 16#0#;
      --  Read-only.
      D_TXFEMP6      : SVD.Bit := 16#0#;
      D_TXFIFOUNDRN6 : SVD.Bit := 16#0#;
      D_BNAINTR6     : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10 : SVD.Bit := 16#0#;
      D_PKTDRPSTS6   : SVD.Bit := 16#0#;
      D_BBLEERR6     : SVD.Bit := 16#0#;
      D_NAKINTRPT6   : SVD.Bit := 16#0#;
      D_NYETINTRPT6  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_15_31 : SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPINT6_Register use record
      D_XFERCOMPL6   at 0 range 0 .. 0;
      D_EPDISBLD6    at 0 range 1 .. 1;
      D_AHBERR6      at 0 range 2 .. 2;
      D_TIMEOUT6     at 0 range 3 .. 3;
      D_INTKNTXFEMP6 at 0 range 4 .. 4;
      D_INTKNEPMIS6  at 0 range 5 .. 5;
      D_INEPNAKEFF6  at 0 range 6 .. 6;
      D_TXFEMP6      at 0 range 7 .. 7;
      D_TXFIFOUNDRN6 at 0 range 8 .. 8;
      D_BNAINTR6     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      D_PKTDRPSTS6   at 0 range 11 .. 11;
      D_BBLEERR6     at 0 range 12 .. 12;
      D_NAKINTRPT6   at 0 range 13 .. 13;
      D_NYETINTRPT6  at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   type DIEPTSIZ6_Register is record
      D_XFERSIZE6    : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      D_PKTCNT6      : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_21_31 : SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTSIZ6_Register use record
      D_XFERSIZE6    at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      D_PKTCNT6      at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   type DTXFSTS6_Register is record
      --  Read-only.
      D_INEPTXFSPCAVAIL6 : SVD.UInt16;
      --  unspecified
      Reserved_16_31     : SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTXFSTS6_Register use record
      D_INEPTXFSPCAVAIL6 at 0 range 0 .. 15;
      Reserved_16_31     at 0 range 16 .. 31;
   end record;

   type DOEPCTL0_Register is record
      --  Read-only.
      MPS0           : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_2_14  : SVD.UInt13 := 16#0#;
      --  Read-only.
      USBACTEP0      : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      NAKSTS0        : SVD.Bit := 16#0#;
      --  Read-only.
      EPTYPE0        : SVD.UInt2 := 16#0#;
      SNP0           : SVD.Bit := 16#0#;
      STALL0         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_22_25 : SVD.UInt4 := 16#0#;
      --  Write-only.
      CNAK0          : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SNAK0       : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_28_29 : SVD.UInt2 := 16#0#;
      --  Read-only.
      EPDIS0         : SVD.Bit := 16#0#;
      EPENA0         : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPCTL0_Register use record
      MPS0           at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      USBACTEP0      at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS0        at 0 range 17 .. 17;
      EPTYPE0        at 0 range 18 .. 19;
      SNP0           at 0 range 20 .. 20;
      STALL0         at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK0          at 0 range 26 .. 26;
      DO_SNAK0       at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      EPDIS0         at 0 range 30 .. 30;
      EPENA0         at 0 range 31 .. 31;
   end record;

   type DOEPINT0_Register is record
      XFERCOMPL0      : SVD.Bit := 16#0#;
      EPDISBLD0       : SVD.Bit := 16#0#;
      AHBERR0         : SVD.Bit := 16#0#;
      SETUP0          : SVD.Bit := 16#0#;
      OUTTKNEPDIS0    : SVD.Bit := 16#0#;
      STSPHSERCVD0    : SVD.Bit := 16#0#;
      BACK2BACKSETUP0 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_7_7    : SVD.Bit := 16#0#;
      OUTPKTERR0      : SVD.Bit := 16#0#;
      BNAINTR0        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10  : SVD.Bit := 16#0#;
      PKTDRPSTS0      : SVD.Bit := 16#0#;
      BBLEERR0        : SVD.Bit := 16#0#;
      NAKINTRPT0      : SVD.Bit := 16#0#;
      NYEPINTRPT0     : SVD.Bit := 16#0#;
      STUPPKTRCVD0    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPINT0_Register use record
      XFERCOMPL0      at 0 range 0 .. 0;
      EPDISBLD0       at 0 range 1 .. 1;
      AHBERR0         at 0 range 2 .. 2;
      SETUP0          at 0 range 3 .. 3;
      OUTTKNEPDIS0    at 0 range 4 .. 4;
      STSPHSERCVD0    at 0 range 5 .. 5;
      BACK2BACKSETUP0 at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      OUTPKTERR0      at 0 range 8 .. 8;
      BNAINTR0        at 0 range 9 .. 9;
      Reserved_10_10  at 0 range 10 .. 10;
      PKTDRPSTS0      at 0 range 11 .. 11;
      BBLEERR0        at 0 range 12 .. 12;
      NAKINTRPT0      at 0 range 13 .. 13;
      NYEPINTRPT0     at 0 range 14 .. 14;
      STUPPKTRCVD0    at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   type DOEPTSIZ0_Register is record
      XFERSIZE0      : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      PKTCNT0        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_20_28 : SVD.UInt9 := 16#0#;
      SUPCNT0        : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_31_31 : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPTSIZ0_Register use record
      XFERSIZE0      at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT0        at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      SUPCNT0        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type DOEPCTL1_Register is record
      --  Read-only.
      MPS1           : SVD.UInt11 := 16#0#;
      --  unspecified
      Reserved_11_14 : SVD.UInt4 := 16#0#;
      --  Read-only.
      USBACTEP1      : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      NAKSTS1        : SVD.Bit := 16#0#;
      --  Read-only.
      EPTYPE1        : SVD.UInt2 := 16#0#;
      SNP1           : SVD.Bit := 16#0#;
      STALL1         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_22_25 : SVD.UInt4 := 16#0#;
      --  Write-only.
      CNAK1          : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SNAK1       : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD0PID1   : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD1PID1   : SVD.Bit := 16#0#;
      --  Read-only.
      EPDIS1         : SVD.Bit := 16#0#;
      EPENA1         : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPCTL1_Register use record
      MPS1           at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP1      at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS1        at 0 range 17 .. 17;
      EPTYPE1        at 0 range 18 .. 19;
      SNP1           at 0 range 20 .. 20;
      STALL1         at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK1          at 0 range 26 .. 26;
      DO_SNAK1       at 0 range 27 .. 27;
      DO_SETD0PID1   at 0 range 28 .. 28;
      DO_SETD1PID1   at 0 range 29 .. 29;
      EPDIS1         at 0 range 30 .. 30;
      EPENA1         at 0 range 31 .. 31;
   end record;

   type DOEPINT1_Register is record
      XFERCOMPL1      : SVD.Bit := 16#0#;
      EPDISBLD1       : SVD.Bit := 16#0#;
      AHBERR1         : SVD.Bit := 16#0#;
      SETUP1          : SVD.Bit := 16#0#;
      OUTTKNEPDIS1    : SVD.Bit := 16#0#;
      STSPHSERCVD1    : SVD.Bit := 16#0#;
      BACK2BACKSETUP1 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_7_7    : SVD.Bit := 16#0#;
      OUTPKTERR1      : SVD.Bit := 16#0#;
      BNAINTR1        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10  : SVD.Bit := 16#0#;
      PKTDRPSTS1      : SVD.Bit := 16#0#;
      BBLEERR1        : SVD.Bit := 16#0#;
      NAKINTRPT1      : SVD.Bit := 16#0#;
      NYEPINTRPT1     : SVD.Bit := 16#0#;
      STUPPKTRCVD1    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPINT1_Register use record
      XFERCOMPL1      at 0 range 0 .. 0;
      EPDISBLD1       at 0 range 1 .. 1;
      AHBERR1         at 0 range 2 .. 2;
      SETUP1          at 0 range 3 .. 3;
      OUTTKNEPDIS1    at 0 range 4 .. 4;
      STSPHSERCVD1    at 0 range 5 .. 5;
      BACK2BACKSETUP1 at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      OUTPKTERR1      at 0 range 8 .. 8;
      BNAINTR1        at 0 range 9 .. 9;
      Reserved_10_10  at 0 range 10 .. 10;
      PKTDRPSTS1      at 0 range 11 .. 11;
      BBLEERR1        at 0 range 12 .. 12;
      NAKINTRPT1      at 0 range 13 .. 13;
      NYEPINTRPT1     at 0 range 14 .. 14;
      STUPPKTRCVD1    at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   type DOEPTSIZ1_Register is record
      XFERSIZE1      : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      PKTCNT1        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_20_28 : SVD.UInt9 := 16#0#;
      SUPCNT1        : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_31_31 : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPTSIZ1_Register use record
      XFERSIZE1      at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT1        at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      SUPCNT1        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type DOEPCTL2_Register is record
      --  Read-only.
      MPS2           : SVD.UInt11 := 16#0#;
      --  unspecified
      Reserved_11_14 : SVD.UInt4 := 16#0#;
      --  Read-only.
      USBACTEP2      : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      NAKSTS2        : SVD.Bit := 16#0#;
      --  Read-only.
      EPTYPE2        : SVD.UInt2 := 16#0#;
      SNP2           : SVD.Bit := 16#0#;
      STALL2         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_22_25 : SVD.UInt4 := 16#0#;
      --  Write-only.
      CNAK2          : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SNAK2       : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD0PID2   : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD1PID2   : SVD.Bit := 16#0#;
      --  Read-only.
      EPDIS2         : SVD.Bit := 16#0#;
      EPENA2         : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPCTL2_Register use record
      MPS2           at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP2      at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS2        at 0 range 17 .. 17;
      EPTYPE2        at 0 range 18 .. 19;
      SNP2           at 0 range 20 .. 20;
      STALL2         at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK2          at 0 range 26 .. 26;
      DO_SNAK2       at 0 range 27 .. 27;
      DO_SETD0PID2   at 0 range 28 .. 28;
      DO_SETD1PID2   at 0 range 29 .. 29;
      EPDIS2         at 0 range 30 .. 30;
      EPENA2         at 0 range 31 .. 31;
   end record;

   type DOEPINT2_Register is record
      XFERCOMPL2      : SVD.Bit := 16#0#;
      EPDISBLD2       : SVD.Bit := 16#0#;
      AHBERR2         : SVD.Bit := 16#0#;
      SETUP2          : SVD.Bit := 16#0#;
      OUTTKNEPDIS2    : SVD.Bit := 16#0#;
      STSPHSERCVD2    : SVD.Bit := 16#0#;
      BACK2BACKSETUP2 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_7_7    : SVD.Bit := 16#0#;
      OUTPKTERR2      : SVD.Bit := 16#0#;
      BNAINTR2        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10  : SVD.Bit := 16#0#;
      PKTDRPSTS2      : SVD.Bit := 16#0#;
      BBLEERR2        : SVD.Bit := 16#0#;
      NAKINTRPT2      : SVD.Bit := 16#0#;
      NYEPINTRPT2     : SVD.Bit := 16#0#;
      STUPPKTRCVD2    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPINT2_Register use record
      XFERCOMPL2      at 0 range 0 .. 0;
      EPDISBLD2       at 0 range 1 .. 1;
      AHBERR2         at 0 range 2 .. 2;
      SETUP2          at 0 range 3 .. 3;
      OUTTKNEPDIS2    at 0 range 4 .. 4;
      STSPHSERCVD2    at 0 range 5 .. 5;
      BACK2BACKSETUP2 at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      OUTPKTERR2      at 0 range 8 .. 8;
      BNAINTR2        at 0 range 9 .. 9;
      Reserved_10_10  at 0 range 10 .. 10;
      PKTDRPSTS2      at 0 range 11 .. 11;
      BBLEERR2        at 0 range 12 .. 12;
      NAKINTRPT2      at 0 range 13 .. 13;
      NYEPINTRPT2     at 0 range 14 .. 14;
      STUPPKTRCVD2    at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   type DOEPTSIZ2_Register is record
      XFERSIZE2      : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      PKTCNT2        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_20_28 : SVD.UInt9 := 16#0#;
      SUPCNT2        : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_31_31 : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPTSIZ2_Register use record
      XFERSIZE2      at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT2        at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      SUPCNT2        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type DOEPCTL3_Register is record
      --  Read-only.
      MPS3           : SVD.UInt11 := 16#0#;
      --  unspecified
      Reserved_11_14 : SVD.UInt4 := 16#0#;
      --  Read-only.
      USBACTEP3      : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      NAKSTS3        : SVD.Bit := 16#0#;
      --  Read-only.
      EPTYPE3        : SVD.UInt2 := 16#0#;
      SNP3           : SVD.Bit := 16#0#;
      STALL3         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_22_25 : SVD.UInt4 := 16#0#;
      --  Write-only.
      CNAK3          : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SNAK3       : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD0PID3   : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD1PID3   : SVD.Bit := 16#0#;
      --  Read-only.
      EPDIS3         : SVD.Bit := 16#0#;
      EPENA3         : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPCTL3_Register use record
      MPS3           at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP3      at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS3        at 0 range 17 .. 17;
      EPTYPE3        at 0 range 18 .. 19;
      SNP3           at 0 range 20 .. 20;
      STALL3         at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK3          at 0 range 26 .. 26;
      DO_SNAK3       at 0 range 27 .. 27;
      DO_SETD0PID3   at 0 range 28 .. 28;
      DO_SETD1PID3   at 0 range 29 .. 29;
      EPDIS3         at 0 range 30 .. 30;
      EPENA3         at 0 range 31 .. 31;
   end record;

   type DOEPINT3_Register is record
      XFERCOMPL3      : SVD.Bit := 16#0#;
      EPDISBLD3       : SVD.Bit := 16#0#;
      AHBERR3         : SVD.Bit := 16#0#;
      SETUP3          : SVD.Bit := 16#0#;
      OUTTKNEPDIS3    : SVD.Bit := 16#0#;
      STSPHSERCVD3    : SVD.Bit := 16#0#;
      BACK2BACKSETUP3 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_7_7    : SVD.Bit := 16#0#;
      OUTPKTERR3      : SVD.Bit := 16#0#;
      BNAINTR3        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10  : SVD.Bit := 16#0#;
      PKTDRPSTS3      : SVD.Bit := 16#0#;
      BBLEERR3        : SVD.Bit := 16#0#;
      NAKINTRPT3      : SVD.Bit := 16#0#;
      NYEPINTRPT3     : SVD.Bit := 16#0#;
      STUPPKTRCVD3    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPINT3_Register use record
      XFERCOMPL3      at 0 range 0 .. 0;
      EPDISBLD3       at 0 range 1 .. 1;
      AHBERR3         at 0 range 2 .. 2;
      SETUP3          at 0 range 3 .. 3;
      OUTTKNEPDIS3    at 0 range 4 .. 4;
      STSPHSERCVD3    at 0 range 5 .. 5;
      BACK2BACKSETUP3 at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      OUTPKTERR3      at 0 range 8 .. 8;
      BNAINTR3        at 0 range 9 .. 9;
      Reserved_10_10  at 0 range 10 .. 10;
      PKTDRPSTS3      at 0 range 11 .. 11;
      BBLEERR3        at 0 range 12 .. 12;
      NAKINTRPT3      at 0 range 13 .. 13;
      NYEPINTRPT3     at 0 range 14 .. 14;
      STUPPKTRCVD3    at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   type DOEPTSIZ3_Register is record
      XFERSIZE3      : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      PKTCNT3        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_20_28 : SVD.UInt9 := 16#0#;
      SUPCNT3        : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_31_31 : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPTSIZ3_Register use record
      XFERSIZE3      at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT3        at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      SUPCNT3        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type DOEPCTL4_Register is record
      --  Read-only.
      MPS4           : SVD.UInt11 := 16#0#;
      --  unspecified
      Reserved_11_14 : SVD.UInt4 := 16#0#;
      --  Read-only.
      USBACTEP4      : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      NAKSTS4        : SVD.Bit := 16#0#;
      --  Read-only.
      EPTYPE4        : SVD.UInt2 := 16#0#;
      SNP4           : SVD.Bit := 16#0#;
      STALL4         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_22_25 : SVD.UInt4 := 16#0#;
      --  Write-only.
      CNAK4          : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SNAK4       : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD0PID4   : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD1PID4   : SVD.Bit := 16#0#;
      --  Read-only.
      EPDIS4         : SVD.Bit := 16#0#;
      EPENA4         : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPCTL4_Register use record
      MPS4           at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP4      at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS4        at 0 range 17 .. 17;
      EPTYPE4        at 0 range 18 .. 19;
      SNP4           at 0 range 20 .. 20;
      STALL4         at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK4          at 0 range 26 .. 26;
      DO_SNAK4       at 0 range 27 .. 27;
      DO_SETD0PID4   at 0 range 28 .. 28;
      DO_SETD1PID4   at 0 range 29 .. 29;
      EPDIS4         at 0 range 30 .. 30;
      EPENA4         at 0 range 31 .. 31;
   end record;

   type DOEPINT4_Register is record
      XFERCOMPL4      : SVD.Bit := 16#0#;
      EPDISBLD4       : SVD.Bit := 16#0#;
      AHBERR4         : SVD.Bit := 16#0#;
      SETUP4          : SVD.Bit := 16#0#;
      OUTTKNEPDIS4    : SVD.Bit := 16#0#;
      STSPHSERCVD4    : SVD.Bit := 16#0#;
      BACK2BACKSETUP4 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_7_7    : SVD.Bit := 16#0#;
      OUTPKTERR4      : SVD.Bit := 16#0#;
      BNAINTR4        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10  : SVD.Bit := 16#0#;
      PKTDRPSTS4      : SVD.Bit := 16#0#;
      BBLEERR4        : SVD.Bit := 16#0#;
      NAKINTRPT4      : SVD.Bit := 16#0#;
      NYEPINTRPT4     : SVD.Bit := 16#0#;
      STUPPKTRCVD4    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPINT4_Register use record
      XFERCOMPL4      at 0 range 0 .. 0;
      EPDISBLD4       at 0 range 1 .. 1;
      AHBERR4         at 0 range 2 .. 2;
      SETUP4          at 0 range 3 .. 3;
      OUTTKNEPDIS4    at 0 range 4 .. 4;
      STSPHSERCVD4    at 0 range 5 .. 5;
      BACK2BACKSETUP4 at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      OUTPKTERR4      at 0 range 8 .. 8;
      BNAINTR4        at 0 range 9 .. 9;
      Reserved_10_10  at 0 range 10 .. 10;
      PKTDRPSTS4      at 0 range 11 .. 11;
      BBLEERR4        at 0 range 12 .. 12;
      NAKINTRPT4      at 0 range 13 .. 13;
      NYEPINTRPT4     at 0 range 14 .. 14;
      STUPPKTRCVD4    at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   type DOEPTSIZ4_Register is record
      XFERSIZE4      : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      PKTCNT4        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_20_28 : SVD.UInt9 := 16#0#;
      SUPCNT4        : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_31_31 : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPTSIZ4_Register use record
      XFERSIZE4      at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT4        at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      SUPCNT4        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type DOEPCTL5_Register is record
      --  Read-only.
      MPS5           : SVD.UInt11 := 16#0#;
      --  unspecified
      Reserved_11_14 : SVD.UInt4 := 16#0#;
      --  Read-only.
      USBACTEP5      : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      NAKSTS5        : SVD.Bit := 16#0#;
      --  Read-only.
      EPTYPE5        : SVD.UInt2 := 16#0#;
      SNP5           : SVD.Bit := 16#0#;
      STALL5         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_22_25 : SVD.UInt4 := 16#0#;
      --  Write-only.
      CNAK5          : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SNAK5       : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD0PID5   : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD1PID5   : SVD.Bit := 16#0#;
      --  Read-only.
      EPDIS5         : SVD.Bit := 16#0#;
      EPENA5         : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPCTL5_Register use record
      MPS5           at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP5      at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS5        at 0 range 17 .. 17;
      EPTYPE5        at 0 range 18 .. 19;
      SNP5           at 0 range 20 .. 20;
      STALL5         at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK5          at 0 range 26 .. 26;
      DO_SNAK5       at 0 range 27 .. 27;
      DO_SETD0PID5   at 0 range 28 .. 28;
      DO_SETD1PID5   at 0 range 29 .. 29;
      EPDIS5         at 0 range 30 .. 30;
      EPENA5         at 0 range 31 .. 31;
   end record;

   type DOEPINT5_Register is record
      XFERCOMPL5      : SVD.Bit := 16#0#;
      EPDISBLD5       : SVD.Bit := 16#0#;
      AHBERR5         : SVD.Bit := 16#0#;
      SETUP5          : SVD.Bit := 16#0#;
      OUTTKNEPDIS5    : SVD.Bit := 16#0#;
      STSPHSERCVD5    : SVD.Bit := 16#0#;
      BACK2BACKSETUP5 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_7_7    : SVD.Bit := 16#0#;
      OUTPKTERR5      : SVD.Bit := 16#0#;
      BNAINTR5        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10  : SVD.Bit := 16#0#;
      PKTDRPSTS5      : SVD.Bit := 16#0#;
      BBLEERR5        : SVD.Bit := 16#0#;
      NAKINTRPT5      : SVD.Bit := 16#0#;
      NYEPINTRPT5     : SVD.Bit := 16#0#;
      STUPPKTRCVD5    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPINT5_Register use record
      XFERCOMPL5      at 0 range 0 .. 0;
      EPDISBLD5       at 0 range 1 .. 1;
      AHBERR5         at 0 range 2 .. 2;
      SETUP5          at 0 range 3 .. 3;
      OUTTKNEPDIS5    at 0 range 4 .. 4;
      STSPHSERCVD5    at 0 range 5 .. 5;
      BACK2BACKSETUP5 at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      OUTPKTERR5      at 0 range 8 .. 8;
      BNAINTR5        at 0 range 9 .. 9;
      Reserved_10_10  at 0 range 10 .. 10;
      PKTDRPSTS5      at 0 range 11 .. 11;
      BBLEERR5        at 0 range 12 .. 12;
      NAKINTRPT5      at 0 range 13 .. 13;
      NYEPINTRPT5     at 0 range 14 .. 14;
      STUPPKTRCVD5    at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   type DOEPTSIZ5_Register is record
      XFERSIZE5      : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      PKTCNT5        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_20_28 : SVD.UInt9 := 16#0#;
      SUPCNT5        : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_31_31 : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPTSIZ5_Register use record
      XFERSIZE5      at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT5        at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      SUPCNT5        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type DOEPCTL6_Register is record
      --  Read-only.
      MPS6           : SVD.UInt11 := 16#0#;
      --  unspecified
      Reserved_11_14 : SVD.UInt4 := 16#0#;
      --  Read-only.
      USBACTEP6      : SVD.Bit := 16#1#;
      --  unspecified
      Reserved_16_16 : SVD.Bit := 16#0#;
      --  Read-only.
      NAKSTS6        : SVD.Bit := 16#0#;
      --  Read-only.
      EPTYPE6        : SVD.UInt2 := 16#0#;
      SNP6           : SVD.Bit := 16#0#;
      STALL6         : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_22_25 : SVD.UInt4 := 16#0#;
      --  Write-only.
      CNAK6          : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SNAK6       : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD0PID6   : SVD.Bit := 16#0#;
      --  Write-only.
      DO_SETD1PID6   : SVD.Bit := 16#0#;
      --  Read-only.
      EPDIS6         : SVD.Bit := 16#0#;
      EPENA6         : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPCTL6_Register use record
      MPS6           at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP6      at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS6        at 0 range 17 .. 17;
      EPTYPE6        at 0 range 18 .. 19;
      SNP6           at 0 range 20 .. 20;
      STALL6         at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK6          at 0 range 26 .. 26;
      DO_SNAK6       at 0 range 27 .. 27;
      DO_SETD0PID6   at 0 range 28 .. 28;
      DO_SETD1PID6   at 0 range 29 .. 29;
      EPDIS6         at 0 range 30 .. 30;
      EPENA6         at 0 range 31 .. 31;
   end record;

   type DOEPINT6_Register is record
      XFERCOMPL6      : SVD.Bit := 16#0#;
      EPDISBLD6       : SVD.Bit := 16#0#;
      AHBERR6         : SVD.Bit := 16#0#;
      SETUP6          : SVD.Bit := 16#0#;
      OUTTKNEPDIS6    : SVD.Bit := 16#0#;
      STSPHSERCVD6    : SVD.Bit := 16#0#;
      BACK2BACKSETUP6 : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_7_7    : SVD.Bit := 16#0#;
      OUTPKTERR6      : SVD.Bit := 16#0#;
      BNAINTR6        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_10_10  : SVD.Bit := 16#0#;
      PKTDRPSTS6      : SVD.Bit := 16#0#;
      BBLEERR6        : SVD.Bit := 16#0#;
      NAKINTRPT6      : SVD.Bit := 16#0#;
      NYEPINTRPT6     : SVD.Bit := 16#0#;
      STUPPKTRCVD6    : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_16_31  : SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPINT6_Register use record
      XFERCOMPL6      at 0 range 0 .. 0;
      EPDISBLD6       at 0 range 1 .. 1;
      AHBERR6         at 0 range 2 .. 2;
      SETUP6          at 0 range 3 .. 3;
      OUTTKNEPDIS6    at 0 range 4 .. 4;
      STSPHSERCVD6    at 0 range 5 .. 5;
      BACK2BACKSETUP6 at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      OUTPKTERR6      at 0 range 8 .. 8;
      BNAINTR6        at 0 range 9 .. 9;
      Reserved_10_10  at 0 range 10 .. 10;
      PKTDRPSTS6      at 0 range 11 .. 11;
      BBLEERR6        at 0 range 12 .. 12;
      NAKINTRPT6      at 0 range 13 .. 13;
      NYEPINTRPT6     at 0 range 14 .. 14;
      STUPPKTRCVD6    at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   type DOEPTSIZ6_Register is record
      XFERSIZE6      : SVD.UInt7 := 16#0#;
      --  unspecified
      Reserved_7_18  : SVD.UInt12 := 16#0#;
      PKTCNT6        : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_20_28 : SVD.UInt9 := 16#0#;
      SUPCNT6        : SVD.UInt2 := 16#0#;
      --  unspecified
      Reserved_31_31 : SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPTSIZ6_Register use record
      XFERSIZE6      at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT6        at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      SUPCNT6        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type PCGCCTL_Register is record
      STOPPCLK       : SVD.Bit := 16#0#;
      GATEHCLK       : SVD.Bit := 16#0#;
      PWRCLMP        : SVD.Bit := 16#0#;
      RSTPDWNMODULE  : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_4_5   : SVD.UInt2 := 16#0#;
      --  Read-only.
      PHYSLEEP       : SVD.Bit := 16#0#;
      --  Read-only.
      L1SUSPENDED    : SVD.Bit := 16#0#;
      RESETAFTERSUSP : SVD.Bit := 16#0#;
      --  unspecified
      Reserved_9_31  : SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCGCCTL_Register use record
      STOPPCLK       at 0 range 0 .. 0;
      GATEHCLK       at 0 range 1 .. 1;
      PWRCLMP        at 0 range 2 .. 2;
      RSTPDWNMODULE  at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      PHYSLEEP       at 0 range 6 .. 6;
      L1SUSPENDED    at 0 range 7 .. 7;
      RESETAFTERSUSP at 0 range 8 .. 8;
      Reserved_9_31  at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB OTG (On-The-Go)
   type USB0_Peripheral is record
      GOTGCTL    : aliased GOTGCTL_Register;
      GOTGINT    : aliased GOTGINT_Register;
      GAHBCFG    : aliased GAHBCFG_Register;
      GUSBCFG    : aliased GUSBCFG_Register;
      GRSTCTL    : aliased GRSTCTL_Register;
      GINTSTS    : aliased GINTSTS_Register;
      GINTMSK    : aliased GINTMSK_Register;
      GRXSTSR    : aliased GRXSTSR_Register;
      GRXSTSP    : aliased GRXSTSP_Register;
      GRXFSIZ    : aliased GRXFSIZ_Register;
      GNPTXFSIZ  : aliased GNPTXFSIZ_Register;
      GNPTXSTS   : aliased GNPTXSTS_Register;
      GSNPSID    : aliased SVD.UInt32;
      GHWCFG1    : aliased SVD.UInt32;
      GHWCFG2    : aliased GHWCFG2_Register;
      GHWCFG3    : aliased GHWCFG3_Register;
      GHWCFG4    : aliased GHWCFG4_Register;
      GDFIFOCFG  : aliased GDFIFOCFG_Register;
      HPTXFSIZ   : aliased HPTXFSIZ_Register;
      DIEPTXF1   : aliased DIEPTXF1_Register;
      DIEPTXF2   : aliased DIEPTXF2_Register;
      DIEPTXF3   : aliased DIEPTXF3_Register;
      DIEPTXF4   : aliased DIEPTXF4_Register;
      HCFG       : aliased HCFG_Register;
      HFIR       : aliased HFIR_Register;
      HFNUM      : aliased HFNUM_Register;
      HPTXSTS    : aliased HPTXSTS_Register;
      HAINT      : aliased HAINT_Register;
      HAINTMSK   : aliased HAINTMSK_Register;
      HFLBADDR   : aliased SVD.UInt32;
      HPRT       : aliased HPRT_Register;
      HCCHAR0    : aliased HCCHAR0_Register;
      HCINT0     : aliased HCINT0_Register;
      HCINTMSK0  : aliased HCINTMSK0_Register;
      HCTSIZ0    : aliased HCTSIZ0_Register;
      HCDMA0     : aliased SVD.UInt32;
      HCDMAB0    : aliased SVD.UInt32;
      HCCHAR1    : aliased HCCHAR1_Register;
      HCINT1     : aliased HCINT1_Register;
      HCINTMSK1  : aliased HCINTMSK1_Register;
      HCTSIZ1    : aliased HCTSIZ1_Register;
      HCDMA1     : aliased SVD.UInt32;
      HCDMAB1    : aliased SVD.UInt32;
      HCCHAR2    : aliased HCCHAR2_Register;
      HCINT2     : aliased HCINT2_Register;
      HCINTMSK2  : aliased HCINTMSK2_Register;
      HCTSIZ2    : aliased HCTSIZ2_Register;
      HCDMA2     : aliased SVD.UInt32;
      HCDMAB2    : aliased SVD.UInt32;
      HCCHAR3    : aliased HCCHAR3_Register;
      HCINT3     : aliased HCINT3_Register;
      HCINTMSK3  : aliased HCINTMSK3_Register;
      HCTSIZ3    : aliased HCTSIZ3_Register;
      HCDMA3     : aliased SVD.UInt32;
      HCDMAB3    : aliased SVD.UInt32;
      HCCHAR4    : aliased HCCHAR4_Register;
      HCINT4     : aliased HCINT4_Register;
      HCINTMSK4  : aliased HCINTMSK4_Register;
      HCTSIZ4    : aliased HCTSIZ4_Register;
      HCDMA4     : aliased SVD.UInt32;
      HCDMAB4    : aliased SVD.UInt32;
      HCCHAR5    : aliased HCCHAR5_Register;
      HCINT5     : aliased HCINT5_Register;
      HCINTMSK5  : aliased HCINTMSK5_Register;
      HCTSIZ5    : aliased HCTSIZ5_Register;
      HCDMA5     : aliased SVD.UInt32;
      HCDMAB5    : aliased SVD.UInt32;
      HCCHAR6    : aliased HCCHAR6_Register;
      HCINT6     : aliased HCINT6_Register;
      HCINTMSK6  : aliased HCINTMSK6_Register;
      HCTSIZ6    : aliased HCTSIZ6_Register;
      HCDMA6     : aliased SVD.UInt32;
      HCDMAB6    : aliased SVD.UInt32;
      HCCHAR7    : aliased HCCHAR7_Register;
      HCINT7     : aliased HCINT7_Register;
      HCINTMSK7  : aliased HCINTMSK7_Register;
      HCTSIZ7    : aliased HCTSIZ7_Register;
      HCDMA7     : aliased SVD.UInt32;
      HCDMAB7    : aliased SVD.UInt32;
      DCFG       : aliased DCFG_Register;
      DCTL       : aliased DCTL_Register;
      DSTS       : aliased DSTS_Register;
      DIEPMSK    : aliased DIEPMSK_Register;
      DOEPMSK    : aliased DOEPMSK_Register;
      DAINT      : aliased DAINT_Register;
      DAINTMSK   : aliased DAINTMSK_Register;
      DVBUSDIS   : aliased DVBUSDIS_Register;
      DVBUSPULSE : aliased DVBUSPULSE_Register;
      DTHRCTL    : aliased DTHRCTL_Register;
      DIEPEMPMSK : aliased DIEPEMPMSK_Register;
      DIEPCTL0   : aliased DIEPCTL0_Register;
      DIEPINT0   : aliased DIEPINT0_Register;
      DIEPTSIZ0  : aliased DIEPTSIZ0_Register;
      DIEPDMA0   : aliased SVD.UInt32;
      DTXFSTS0   : aliased DTXFSTS0_Register;
      DIEPDMAB0  : aliased SVD.UInt32;
      DIEPCTL1   : aliased DIEPCTL1_Register;
      DIEPINT1   : aliased DIEPINT1_Register;
      DIEPTSIZ1  : aliased DIEPTSIZ1_Register;
      DIEPDMA1   : aliased SVD.UInt32;
      DTXFSTS1   : aliased DTXFSTS1_Register;
      DIEPDMAB1  : aliased SVD.UInt32;
      DIEPCTL2   : aliased DIEPCTL2_Register;
      DIEPINT2   : aliased DIEPINT2_Register;
      DIEPTSIZ2  : aliased DIEPTSIZ2_Register;
      DIEPDMA2   : aliased SVD.UInt32;
      DTXFSTS2   : aliased DTXFSTS2_Register;
      DIEPDMAB2  : aliased SVD.UInt32;
      DIEPCTL3   : aliased DIEPCTL3_Register;
      DIEPINT3   : aliased DIEPINT3_Register;
      DIEPTSIZ3  : aliased DIEPTSIZ3_Register;
      DIEPDMA3   : aliased SVD.UInt32;
      DTXFSTS3   : aliased DTXFSTS3_Register;
      DIEPDMAB3  : aliased SVD.UInt32;
      DIEPCTL4   : aliased DIEPCTL4_Register;
      DIEPINT4   : aliased DIEPINT4_Register;
      DIEPTSIZ4  : aliased DIEPTSIZ4_Register;
      DIEPDMA4   : aliased SVD.UInt32;
      DTXFSTS4   : aliased DTXFSTS4_Register;
      DIEPDMAB4  : aliased SVD.UInt32;
      DIEPCTL5   : aliased DIEPCTL5_Register;
      DIEPINT5   : aliased DIEPINT5_Register;
      DIEPTSIZ5  : aliased DIEPTSIZ5_Register;
      DIEPDMA5   : aliased SVD.UInt32;
      DTXFSTS5   : aliased DTXFSTS5_Register;
      DIEPDMAB5  : aliased SVD.UInt32;
      DIEPCTL6   : aliased DIEPCTL6_Register;
      DIEPINT6   : aliased DIEPINT6_Register;
      DIEPTSIZ6  : aliased DIEPTSIZ6_Register;
      DIEPDMA6   : aliased SVD.UInt32;
      DTXFSTS6   : aliased DTXFSTS6_Register;
      DIEPDMAB6  : aliased SVD.UInt32;
      DOEPCTL0   : aliased DOEPCTL0_Register;
      DOEPINT0   : aliased DOEPINT0_Register;
      DOEPTSIZ0  : aliased DOEPTSIZ0_Register;
      DOEPDMA0   : aliased SVD.UInt32;
      DOEPDMAB0  : aliased SVD.UInt32;
      DOEPCTL1   : aliased DOEPCTL1_Register;
      DOEPINT1   : aliased DOEPINT1_Register;
      DOEPTSIZ1  : aliased DOEPTSIZ1_Register;
      DOEPDMA1   : aliased SVD.UInt32;
      DOEPDMAB1  : aliased SVD.UInt32;
      DOEPCTL2   : aliased DOEPCTL2_Register;
      DOEPINT2   : aliased DOEPINT2_Register;
      DOEPTSIZ2  : aliased DOEPTSIZ2_Register;
      DOEPDMA2   : aliased SVD.UInt32;
      DOEPDMAB2  : aliased SVD.UInt32;
      DOEPCTL3   : aliased DOEPCTL3_Register;
      DOEPINT3   : aliased DOEPINT3_Register;
      DOEPTSIZ3  : aliased DOEPTSIZ3_Register;
      DOEPDMA3   : aliased SVD.UInt32;
      DOEPDMAB3  : aliased SVD.UInt32;
      DOEPCTL4   : aliased DOEPCTL4_Register;
      DOEPINT4   : aliased DOEPINT4_Register;
      DOEPTSIZ4  : aliased DOEPTSIZ4_Register;
      DOEPDMA4   : aliased SVD.UInt32;
      DOEPDMAB4  : aliased SVD.UInt32;
      DOEPCTL5   : aliased DOEPCTL5_Register;
      DOEPINT5   : aliased DOEPINT5_Register;
      DOEPTSIZ5  : aliased DOEPTSIZ5_Register;
      DOEPDMA5   : aliased SVD.UInt32;
      DOEPDMAB5  : aliased SVD.UInt32;
      DOEPCTL6   : aliased DOEPCTL6_Register;
      DOEPINT6   : aliased DOEPINT6_Register;
      DOEPTSIZ6  : aliased DOEPTSIZ6_Register;
      DOEPDMA6   : aliased SVD.UInt32;
      DOEPDMAB6  : aliased SVD.UInt32;
      PCGCCTL    : aliased PCGCCTL_Register;
   end record
     with Volatile;

   for USB0_Peripheral use record
      GOTGCTL    at 16#0# range 0 .. 31;
      GOTGINT    at 16#4# range 0 .. 31;
      GAHBCFG    at 16#8# range 0 .. 31;
      GUSBCFG    at 16#C# range 0 .. 31;
      GRSTCTL    at 16#10# range 0 .. 31;
      GINTSTS    at 16#14# range 0 .. 31;
      GINTMSK    at 16#18# range 0 .. 31;
      GRXSTSR    at 16#1C# range 0 .. 31;
      GRXSTSP    at 16#20# range 0 .. 31;
      GRXFSIZ    at 16#24# range 0 .. 31;
      GNPTXFSIZ  at 16#28# range 0 .. 31;
      GNPTXSTS   at 16#2C# range 0 .. 31;
      GSNPSID    at 16#40# range 0 .. 31;
      GHWCFG1    at 16#44# range 0 .. 31;
      GHWCFG2    at 16#48# range 0 .. 31;
      GHWCFG3    at 16#4C# range 0 .. 31;
      GHWCFG4    at 16#50# range 0 .. 31;
      GDFIFOCFG  at 16#5C# range 0 .. 31;
      HPTXFSIZ   at 16#100# range 0 .. 31;
      DIEPTXF1   at 16#104# range 0 .. 31;
      DIEPTXF2   at 16#108# range 0 .. 31;
      DIEPTXF3   at 16#10C# range 0 .. 31;
      DIEPTXF4   at 16#110# range 0 .. 31;
      HCFG       at 16#400# range 0 .. 31;
      HFIR       at 16#404# range 0 .. 31;
      HFNUM      at 16#408# range 0 .. 31;
      HPTXSTS    at 16#410# range 0 .. 31;
      HAINT      at 16#414# range 0 .. 31;
      HAINTMSK   at 16#418# range 0 .. 31;
      HFLBADDR   at 16#41C# range 0 .. 31;
      HPRT       at 16#440# range 0 .. 31;
      HCCHAR0    at 16#500# range 0 .. 31;
      HCINT0     at 16#508# range 0 .. 31;
      HCINTMSK0  at 16#50C# range 0 .. 31;
      HCTSIZ0    at 16#510# range 0 .. 31;
      HCDMA0     at 16#514# range 0 .. 31;
      HCDMAB0    at 16#51C# range 0 .. 31;
      HCCHAR1    at 16#520# range 0 .. 31;
      HCINT1     at 16#528# range 0 .. 31;
      HCINTMSK1  at 16#52C# range 0 .. 31;
      HCTSIZ1    at 16#530# range 0 .. 31;
      HCDMA1     at 16#534# range 0 .. 31;
      HCDMAB1    at 16#53C# range 0 .. 31;
      HCCHAR2    at 16#540# range 0 .. 31;
      HCINT2     at 16#548# range 0 .. 31;
      HCINTMSK2  at 16#54C# range 0 .. 31;
      HCTSIZ2    at 16#550# range 0 .. 31;
      HCDMA2     at 16#554# range 0 .. 31;
      HCDMAB2    at 16#55C# range 0 .. 31;
      HCCHAR3    at 16#560# range 0 .. 31;
      HCINT3     at 16#568# range 0 .. 31;
      HCINTMSK3  at 16#56C# range 0 .. 31;
      HCTSIZ3    at 16#570# range 0 .. 31;
      HCDMA3     at 16#574# range 0 .. 31;
      HCDMAB3    at 16#57C# range 0 .. 31;
      HCCHAR4    at 16#580# range 0 .. 31;
      HCINT4     at 16#588# range 0 .. 31;
      HCINTMSK4  at 16#58C# range 0 .. 31;
      HCTSIZ4    at 16#590# range 0 .. 31;
      HCDMA4     at 16#594# range 0 .. 31;
      HCDMAB4    at 16#59C# range 0 .. 31;
      HCCHAR5    at 16#5A0# range 0 .. 31;
      HCINT5     at 16#5A8# range 0 .. 31;
      HCINTMSK5  at 16#5AC# range 0 .. 31;
      HCTSIZ5    at 16#5B0# range 0 .. 31;
      HCDMA5     at 16#5B4# range 0 .. 31;
      HCDMAB5    at 16#5BC# range 0 .. 31;
      HCCHAR6    at 16#5C0# range 0 .. 31;
      HCINT6     at 16#5C8# range 0 .. 31;
      HCINTMSK6  at 16#5CC# range 0 .. 31;
      HCTSIZ6    at 16#5D0# range 0 .. 31;
      HCDMA6     at 16#5D4# range 0 .. 31;
      HCDMAB6    at 16#5DC# range 0 .. 31;
      HCCHAR7    at 16#5E0# range 0 .. 31;
      HCINT7     at 16#5E8# range 0 .. 31;
      HCINTMSK7  at 16#5EC# range 0 .. 31;
      HCTSIZ7    at 16#5F0# range 0 .. 31;
      HCDMA7     at 16#5F4# range 0 .. 31;
      HCDMAB7    at 16#5FC# range 0 .. 31;
      DCFG       at 16#800# range 0 .. 31;
      DCTL       at 16#804# range 0 .. 31;
      DSTS       at 16#808# range 0 .. 31;
      DIEPMSK    at 16#810# range 0 .. 31;
      DOEPMSK    at 16#814# range 0 .. 31;
      DAINT      at 16#818# range 0 .. 31;
      DAINTMSK   at 16#81C# range 0 .. 31;
      DVBUSDIS   at 16#828# range 0 .. 31;
      DVBUSPULSE at 16#82C# range 0 .. 31;
      DTHRCTL    at 16#830# range 0 .. 31;
      DIEPEMPMSK at 16#834# range 0 .. 31;
      DIEPCTL0   at 16#900# range 0 .. 31;
      DIEPINT0   at 16#908# range 0 .. 31;
      DIEPTSIZ0  at 16#910# range 0 .. 31;
      DIEPDMA0   at 16#914# range 0 .. 31;
      DTXFSTS0   at 16#918# range 0 .. 31;
      DIEPDMAB0  at 16#91C# range 0 .. 31;
      DIEPCTL1   at 16#920# range 0 .. 31;
      DIEPINT1   at 16#928# range 0 .. 31;
      DIEPTSIZ1  at 16#930# range 0 .. 31;
      DIEPDMA1   at 16#934# range 0 .. 31;
      DTXFSTS1   at 16#938# range 0 .. 31;
      DIEPDMAB1  at 16#93C# range 0 .. 31;
      DIEPCTL2   at 16#940# range 0 .. 31;
      DIEPINT2   at 16#948# range 0 .. 31;
      DIEPTSIZ2  at 16#950# range 0 .. 31;
      DIEPDMA2   at 16#954# range 0 .. 31;
      DTXFSTS2   at 16#958# range 0 .. 31;
      DIEPDMAB2  at 16#95C# range 0 .. 31;
      DIEPCTL3   at 16#960# range 0 .. 31;
      DIEPINT3   at 16#968# range 0 .. 31;
      DIEPTSIZ3  at 16#970# range 0 .. 31;
      DIEPDMA3   at 16#974# range 0 .. 31;
      DTXFSTS3   at 16#978# range 0 .. 31;
      DIEPDMAB3  at 16#97C# range 0 .. 31;
      DIEPCTL4   at 16#980# range 0 .. 31;
      DIEPINT4   at 16#988# range 0 .. 31;
      DIEPTSIZ4  at 16#990# range 0 .. 31;
      DIEPDMA4   at 16#994# range 0 .. 31;
      DTXFSTS4   at 16#998# range 0 .. 31;
      DIEPDMAB4  at 16#99C# range 0 .. 31;
      DIEPCTL5   at 16#9A0# range 0 .. 31;
      DIEPINT5   at 16#9A8# range 0 .. 31;
      DIEPTSIZ5  at 16#9B0# range 0 .. 31;
      DIEPDMA5   at 16#9B4# range 0 .. 31;
      DTXFSTS5   at 16#9B8# range 0 .. 31;
      DIEPDMAB5  at 16#9BC# range 0 .. 31;
      DIEPCTL6   at 16#9C0# range 0 .. 31;
      DIEPINT6   at 16#9C8# range 0 .. 31;
      DIEPTSIZ6  at 16#9D0# range 0 .. 31;
      DIEPDMA6   at 16#9D4# range 0 .. 31;
      DTXFSTS6   at 16#9D8# range 0 .. 31;
      DIEPDMAB6  at 16#9DC# range 0 .. 31;
      DOEPCTL0   at 16#B00# range 0 .. 31;
      DOEPINT0   at 16#B08# range 0 .. 31;
      DOEPTSIZ0  at 16#B10# range 0 .. 31;
      DOEPDMA0   at 16#B14# range 0 .. 31;
      DOEPDMAB0  at 16#B1C# range 0 .. 31;
      DOEPCTL1   at 16#B20# range 0 .. 31;
      DOEPINT1   at 16#B28# range 0 .. 31;
      DOEPTSIZ1  at 16#B30# range 0 .. 31;
      DOEPDMA1   at 16#B34# range 0 .. 31;
      DOEPDMAB1  at 16#B3C# range 0 .. 31;
      DOEPCTL2   at 16#B40# range 0 .. 31;
      DOEPINT2   at 16#B48# range 0 .. 31;
      DOEPTSIZ2  at 16#B50# range 0 .. 31;
      DOEPDMA2   at 16#B54# range 0 .. 31;
      DOEPDMAB2  at 16#B5C# range 0 .. 31;
      DOEPCTL3   at 16#B60# range 0 .. 31;
      DOEPINT3   at 16#B68# range 0 .. 31;
      DOEPTSIZ3  at 16#B70# range 0 .. 31;
      DOEPDMA3   at 16#B74# range 0 .. 31;
      DOEPDMAB3  at 16#B7C# range 0 .. 31;
      DOEPCTL4   at 16#B80# range 0 .. 31;
      DOEPINT4   at 16#B88# range 0 .. 31;
      DOEPTSIZ4  at 16#B90# range 0 .. 31;
      DOEPDMA4   at 16#B94# range 0 .. 31;
      DOEPDMAB4  at 16#B9C# range 0 .. 31;
      DOEPCTL5   at 16#BA0# range 0 .. 31;
      DOEPINT5   at 16#BA8# range 0 .. 31;
      DOEPTSIZ5  at 16#BB0# range 0 .. 31;
      DOEPDMA5   at 16#BB4# range 0 .. 31;
      DOEPDMAB5  at 16#BBC# range 0 .. 31;
      DOEPCTL6   at 16#BC0# range 0 .. 31;
      DOEPINT6   at 16#BC8# range 0 .. 31;
      DOEPTSIZ6  at 16#BD0# range 0 .. 31;
      DOEPDMA6   at 16#BD4# range 0 .. 31;
      DOEPDMAB6  at 16#BDC# range 0 .. 31;
      PCGCCTL    at 16#E00# range 0 .. 31;
   end record;

   --  USB OTG (On-The-Go)
   USB0_Periph : aliased USB0_Peripheral
     with Import, Address => USB0_Base;

end SVD.USB;
