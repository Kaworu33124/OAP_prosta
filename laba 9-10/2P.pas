var
  matrix: array[1..8, 1..8] of integer;
  result: array[1..8] of integer;
  i, j: integer;
  found_pair: boolean;
begin
  Randomize;

  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      matrix[i, j] := Random(11);
      Write(matrix[i, j]:3, ' ');
    end;
    Writeln;
  end;

  for i := 1 to 8 do
  begin
    found_pair := false;
    for j := 1 to 7 do
    begin
      if matrix[i, j] + matrix[i, j+1] = 7 then
      begin
        found_pair := true;
        break;
      end;
    end;
    
    if found_pair then
      result[i] := 1
    else
      result[i] := -1;
  end;

  Write('Результат: ');
  for i := 1 to 8 do
    Write(result[i], ' ');
  Writeln;
end.