with SRev;
with Ada.Text_IO;
procedure Main is

   ZMienna : String := "Politechnika";
begin
   --  Insert code here.
   srev.Rev(ZMienna);
   Ada.Text_IO.Put(ZMienna);
end Main;
