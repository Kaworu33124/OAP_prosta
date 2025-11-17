var
  arr1, arr2: array[1..8] of integer;
  i, idx1, idx2, max_idx, min_idx: integer;
begin
  Randomize;
  
  Write('Массив 1: ');
  for i := 1 to 8 do begin
    arr1[i] := Random(100) + 1;
    Write(arr1[i], ' ');
  end;
  Writeln;
  
  Write('Массив 2: ');
  for i := 1 to 8 do begin
    arr2[i] := Random(100) + 1;
    Write(arr2[i], ' ');
  end;
  Writeln;
  
  idx1 := -1; idx2 := -1;
  for i := 1 to 8 do begin
    if (idx1 = -1) and (arr1[i] mod 5 = 0) then idx1 := i;
    if (idx2 = -1) and (arr2[i] mod 5 = 0) then idx2 := i;
  end;
  
  if ((idx1 <> -1) and (idx2 = -1)) or ((idx1 <> -1) and (idx2 <> -1) and (idx1 < idx2)) then
  begin
    max_idx := 1;
    for i := 2 to 8 do if arr1[i] > arr1[max_idx] then max_idx := i;
    arr1[max_idx] := 0;
    
    min_idx := 1;
    for i := 2 to 8 do if arr2[i] < arr2[min_idx] then min_idx := i;
    for i := min_idx + 1 to 8 do arr2[i] := arr2[i] * 2;
  end
  else
  begin
    max_idx := 1;
    for i := 2 to 8 do if arr2[i] > arr2[max_idx] then max_idx := i;
    arr2[max_idx] := 0;
    
    min_idx := 1;
    for i := 2 to 8 do if arr1[i] < arr1[min_idx] then min_idx := i;
    for i := min_idx + 1 to 8 do arr1[i] := arr1[i] * 2;
  end;
  
  Write('Массив 1: '); for i := 1 to 8 do Write(arr1[i], ' '); Writeln;
  Write('Массив 2: '); for i := 1 to 8 do Write(arr2[i], ' '); Writeln;
end.