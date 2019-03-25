package body SRev is

 procedure Rev (S : in out String)
 with
 SPARK_Mode 
   is 
        Result : String := S;
   begin
      
      for I in S'range loop
         pragma Loop_Invariant((for all J in S'First .. I - 1 => S(J) = Result(S'First + S'Last - J)));
         Result (S'First + S'Last - I) := S (I);
      end loop;
 
          S := Result;
 
      end Rev;

end SRev;
