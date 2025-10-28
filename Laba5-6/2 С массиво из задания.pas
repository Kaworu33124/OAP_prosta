program Task2;
var
  arr: array[1..10] of integer = (6, 3, 4, 1, 2, 3, 5, 0, 2, 1);
  i, max_len, current_len: integer;
begin
  writeln('Массив:');
  for i := 1 to 10 do
    write(arr[i], ' ');
  writeln;
  
  max_len := 1;
  current_len := 1;
  for i := 2 to 10 do
    if arr[i] <= arr[i-1] then inc(current_len)
    else begin
      if current_len > max_len then max_len := current_len;
      current_len := 1;
    end;
  
  if current_len > max_len then max_len := current_len;
  writeln('Максимальная длина: ', max_len);
end.