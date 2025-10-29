var
  a: string;
  i, plus, minus, all, zero: integer;
begin
  writeln('Введите строку');
  readln(a);
  plus := 0;
  minus := 0;
  zero := 0;
  
  for i := 1 to length(a) do
  begin
    if a[i] = '+' then plus := plus + 1;
    if a[i] = '-' then minus := minus + 1;
  end;
  
  all := plus + minus;
  
  for i := 1 to length(a)-1 do
  begin
    if (a[i] in ['+', '-']) and (a[i+1] = '0') then
      zero := zero + 1;
  end;
  
  writeln('Количество ''+'' и ''-'' перед нулем:', zero);
  writeln('Кол-во +', plus);
  writeln('Кол-во -', minus);
  writeln('Кол-во + и -', all);
end.