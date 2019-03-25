with prime;
with Ada.Text_IO;

procedure Main is

begin
     if Prime.IsPrime(5) then
        Ada.Text_IO.Put("Jest liczba pierwsza");
   else
        Ada.Text_IO.Put("Nie jest liczba pierwsza");

   end if;
end Main;
