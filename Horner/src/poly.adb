with Ada.Integer_Text_IO;
package body Poly with SPARK_Mode is

   function Horner (X: Integer; A : Vector) return Integer is
      
 
      Y : Integer := 0;
      Z : Integer := 0 with Ghost;
  
   begin    
      
 

      for I in reverse A'Range loop
         
       
         Y :=  (Y*X) + A(I);
         Z := Z + A(I) * (X ** (I - A'First));
         pragma Loop_Invariant (Z = Y * X **(I - A'First));
         
  
      end loop;
        pragma Assert (Y = Z);
 
      return Y;
      
      end Horner;

end Poly;
