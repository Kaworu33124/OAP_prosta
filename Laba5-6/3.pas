program Task3;
var
  arr: array[1..20] of integer;
  i, max_index: integer;
begin
  randomize;
  for i := 1 to 20 do
    arr[i] := random(101) - 50;
  writeln('Исходный массив:');
  for i := 1 to 20 do
    write(arr[i], ' ');
  writeln;
  
  for i := 20 downto 1 do
    if arr[i] > 0 then
    begin
      arr[i] := 0;
      break;
    end;
  
  writeln('После удаления последнего положительного:');
  for i := 1 to 20 do
    if arr[i] <> 0 then write(arr[i], ' ');
  writeln;
  
  max_index := 1;
  for i := 2 to 20 do
    if arr[i] > arr[max_index] then max_index := i;
  
  arr[max_index] := 0;
  writeln('После удаления наибольшего:');
  for i := 1 to 20 do
    if arr[i] <> 0 then write(arr[i], ' ');
end.