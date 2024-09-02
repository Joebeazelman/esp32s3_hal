with HAL.GPIO; use HAL.GPIO;

package esp32s3.GPIO is
   pragma Preelaborate;
   type GPIO_Pin is range 0 .. 39;
   type GPIO_Point is new HAL.GPIO.GPIO_Point with record
      Pin  : GPIO_Pin;
      Mode : GPIO_Config_Mode;
      Pull : GPIO_Pull_Resistor;
      Set  : Boolean;
      --  State of the GPIO_Point
      --  So far all the GPIO supported by this library have the ability to read
      --  the state even when they are configured as output.
   end record;

   overriding function Support
     (This : GPIO_Point; Capa : Capability) return Boolean is
     (This.Mode in Capa);
   --  Return True if the GPIO_Point supports the given capability

   overriding function Mode (This : GPIO_Point) return GPIO_Mode is
     (This.Mode);
   --  Return the current mode of the GPIO_Point

   overriding procedure Set_Mode
     (This : in out GPIO_Point; Mode : GPIO_Config_Mode);
   --  Set the mode of the GPIO_Point, iff the mode is supported

   overriding function Pull_Resistor
     (This : GPIO_Point) return GPIO_Pull_Resistor is (This.Pull);
   --  Return the current pull resistor mode

   overriding procedure Set_Pull_Resistor
     (This : in out GPIO_Point; Pull : GPIO_Pull_Resistor);
   --  Set the pull resistor of the GPIO_Point, iff the pull mode is supported

   overriding function Set (This : GPIO_Point) return Boolean is (This.Set);
   --  Read actual state of the GPIO_Point.
   --
   --  So far all the GPIO supported by this library have the ability to read
   --  the state even when they are configured as output.

   --  For the output control procedures below, depending on configuration
   --  and/or other devices conected to the IO line, these procedures may have
   --  no actual effect on the line. For example trying to set the IO when
   --  another device is pulling the line to low.

   overriding procedure Set (This : in out GPIO_Point);

   overriding procedure Clear (This : in out GPIO_Point);

   overriding procedure Toggle (This : in out GPIO_Point);

private
end esp32s3.GPIO;
