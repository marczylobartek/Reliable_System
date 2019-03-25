package Emulator is

function Mult (A : Natural; B : Natural) return Natural
 with
 SPARK_Mode,
 Pre => A < 32768 and B < 32768,
 Post => Mult'Result = A * B;
 

end Emulator;
