package body Prime is

    function IsPrime (N : in Positive) return Boolean
 with
 SPARK_Mode is
begin
         for I in 2 .. N - 1 loop
         
          pragma Loop_Invariant(for all J in 2 .. I - 1 => N rem J /= 0);
         
         if N rem I = 0 then
            return false; 
         end if;
                   
           end loop;
        
        return true;
end IsPrime;

end Prime;
