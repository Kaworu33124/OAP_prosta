program Task1;
var
  arr: array[1..20] of integer;
  i, count, a, b, sum_range: integer;
  product: longint;
  has_odd: boolean;
begin
  randomize;
  for i := 1 to 20 do
    arr[i] := random(116) - 22;
  writeln('Массив:');
  for i := 1 to 20 do
    write(arr[i], ' ');
  writeln;
  
  count := 0;
  for i := 1 to 20 do
    if (i mod 2 = 1) and (arr[i] mod 2 = 0) then
      inc(count);
  writeln('Четные на нечетных местах: ', count);
  
  product := 1;
  has_odd := false;
  for i := 1 to 20 do
    if arr[i] mod 2 <> 0 then
    begin
      product := product * arr[i];
      has_odd := true;
    end;
  
  if has_odd then writeln('Произведение нечетных: ', product)
  else writeln('Нечетных элементов нет');
  
  write('Начальный индекс: '); readln(a);
  write('Конечный индекс: '); readln(b);
  
  sum_range := 0;
  for i := a to b do
    if (i >= 1) and (i <= 20) then
      sum_range := sum_range + arr[i];
  writeln('Сумма элементов: ', sum_range);
end.