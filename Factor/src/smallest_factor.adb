procedure Smallest_Factor (N : in out Positive; Factor : out Positive) with
     SPARK_Mode,
     Pre => N > 1,
     Post => (Factor > 1) and
     (N'Old / Factor = N) and
     (N'Old rem Factor = 0) and
     (for all J in 2 .. Factor - 1 => N'Old rem J /= 0)
   is


begin

      Factor := 2;
      while (N rem Factor) /= 0 loop

         pragma Loop_Invariant
           (Factor < N);

         pragma Loop_Invariant
           (for all J in 2 .. Factor => (N rem J) /= 0);

         Factor := Factor + 1;

      end loop;

    N := N / Factor;



end Smallest_Factor;
