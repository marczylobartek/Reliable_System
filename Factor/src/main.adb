with Ada.Integer_Text_IO;
with smallest_factor;


procedure Main is

   Factor : Positive;
   N : Positive := 7;


begin

  Smallest_Factor(N, Factor);
  Ada.Integer_Text_IO.Put (N);
  Ada.Integer_Text_IO.Put (Factor);

end Main;
