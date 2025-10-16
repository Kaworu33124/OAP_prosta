program two;
var
  d, c, t: integer;
begin
  d := 1;
  c := 1000;
  t := 0;
  
  while t <= 30000 do
  begin
    t := t + c;
    
    if t > 30000 then
    begin
      writeln(d);
      exit; 
    end;
    
    d := d + 1;
    c := c * 2;
  end;
end.