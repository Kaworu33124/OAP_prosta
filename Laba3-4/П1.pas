program one;
var
  a, b, h, i: integer;
  y: real;
begin
  write('Введите a: ');
  readln(a);
  write('Введите b: ');
  readln(b);
  write('Введите h: ');
  readln(h);
  
  for i := a to b - 1 do
  begin
    if (i - a) mod h = 0 then  
    begin
      writeln(i);     
      y := 3 * i * 2 + 5 * i / 13;
      writeln(y);
    end;
  end;
end.