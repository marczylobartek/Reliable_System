with Ada.Integer_Text_IO;
package body Max2  with SPARK_Mode is

   function FindMax2 (V : Vector) return Integer is
      
      First : Natural := V(V'First);
      Second : Natural := 0;
      
   begin
      
 
 
      for I in V'First + 1 .. V'Last loop
         
         
         
         if (V(I) > First) then 
            Second := First; 
            First := V(I); 
         elsif (V(I) > Second and V(I) /= First) then 
            Second := V(I); 
         end if;
          pragma Loop_Invariant((for some J in V'First .. I => First = V(J)));
         pragma Loop_Invariant(Second = 0 or  (for some J in V'First .. I => Second = V(J)));
         pragma Loop_Invariant((for all J in V'First .. I => V(J) <= First));
         pragma Loop_Invariant ((for all J in V'First .. I =>  (if (V(J) > Second) then V(J) = First )));
         end loop;
         
         
         return Second;
         
         
         
    

      end FindMax2;

end Max2;
