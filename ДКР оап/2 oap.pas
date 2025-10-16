uses math;
var
  x, y: real;
begin
  x := -11;

  while x <= -1 do
  begin
    if x < -9 then
      y := 55 * cos(2 * x) - exp(1) * x
    else if (x >= -9) and (x < -3) then
      y := ln(x)
    else
      y := sin(x) * 16 - 56;
    
    writeln('x = ', x:6:1, '; y = ', y:10:4);
    x := x + 0.1;
  end;
end.