with Ada.Integer_Text_IO;
with Poly;
procedure Main is

begin

   Ada.Integer_Text_IO.Put (Poly.Horner(2, (-1, 4, -3, 2, 6, 1)));
end Main;

