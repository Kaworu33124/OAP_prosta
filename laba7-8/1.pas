var
  a: string;
  b: integer;
begin
  writeln('Введите строку');
  readln(a);
  b := length(a);
  if b > 6 then
    writeln(copy(a, 1, 3), ' ', copy(a, b-2, 3))
  else
    writeln(StringOfChar(a[1], b));
end.