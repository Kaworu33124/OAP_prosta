
var
  a, result: string;
  i: integer;
  prevSpace: boolean;
begin
  writeln('Введите строку');
  readln(a);

  result := Trim(a);
  
  prevSpace := false;
  i := 1;
  while i <= length(result) do
  begin
    if result[i] = ' ' then
    begin
      if not prevSpace then
      begin
        prevSpace := true;
        i := i + 1;
      end
      else
      begin
        delete(result, i, 1);
      end;
    end
    else
    begin
      prevSpace := false;
      i := i + 1;
    end;
  end;
  
  writeln(result);
end.
