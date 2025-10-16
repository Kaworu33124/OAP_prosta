program three;
var
  a: array[1..4] of real;
  p: real;
  n, i, j, c1, c2, c3: integer;
  temp: real;
begin

  for i := 1 to 4 do
  begin
    write('A', i, ': ');
    readln(a[i]);
  end;
  
  write('Количество точек: ');
  readln(n);
  
  for i := 1 to 3 do
    for j := i + 1 to 4 do
      if a[i] > a[j] then
      begin
        temp := a[i];
        a[i] := a[j];
        a[j] := temp;
      end;
  
  c1 := 0; c2 := 0; c3 := 0;
  
  for i := 1 to n do
  begin
    write('Точка ', i, ': ');
    readln(p);
    if p < a[2] then c1 := c1 + 1
    else if p < a[3] then c2 := c2 + 1
    else if p <= a[4] then c3 := c3 + 1;
  end;
  
  writeln;
  writeln('[', a[1], '-', a[2], ']: ', c1);
  writeln('[', a[2], '-', a[3], ']: ', c2);
  writeln('[', a[3], '-', a[4], ']: ', c3);
end.