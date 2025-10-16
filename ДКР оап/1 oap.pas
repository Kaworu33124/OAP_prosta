uses math;
var
  x, y: real;
begin
  write('Введите x: ');
  readln(x);
  
  if x < -9 then
    y := 55 * cos(2 * x) - exp(1) * x
  else if (x >= -9) and (x < -3) then
    y := ln(x)
  else
    y := sin(x) * 16 - 56;
  
  writeln('x = ', x:0:4, ', y = ', y:0:4);
end.
