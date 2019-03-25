with Ada.Integer_Text_IO;
package body Emulator is

   function Mult (A : Natural; B : Natural) return Natural
 with
 SPARK_Mode
is
      AB : Natural := 0;
      AA : Natural := A;
      B1 : Natural := B;
   begin
  pragma Assert ((AB + (B1 * AA) = (B * A))); 
      while B1 > 0 loop
  pragma Loop_Invariant ((AB + (B1 * AA) = (B * A))); 
       if B1 mod 2 = 1 then     
         AB := AB + AA;
         end if;
         AA := 2 * AA;         
         B1 := B1 / 2;
  pragma Assert ((AB + (B1 * AA) = (B * A)));  
   
                         end loop;
 pragma Assert ((AB + (B1 * AA) = (B * A))); 
 return AB;
end Mult;

end Emulator;
