package body esp32s3.GPIO is
   overriding procedure Set_Mode (This : in out GPIO_Point; Mode : GPIO_Config_Mode) is
   begin
      This.Mode := Mode;
   end Set_Mode;

   overriding procedure Set_Pull_Resistor
     (This : in out GPIO_Point; Pull : GPIO_Pull_Resistor)
   is
   begin
      This.Pull := Pull;
   end Set_Pull_Resistor;

   overriding procedure Set (This : in out GPIO_Point) is
   begin
      This.Set := True;
   end Set;

   overriding procedure Clear (This : in out GPIO_Point) is
   begin
      This.Set := False;
   end Clear;

   overriding procedure Toggle (This : in out GPIO_Point) is
   begin
      This.Set := not This.Set;
   end Toggle;
end esp32s3.GPIO;
