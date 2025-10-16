program StudentRost;
var
  rost: array[1..15] of integer;
  familia: array[1..15] of string = 
    ('Брызгин','Пестов','Боков','Куншин','фЕДОСИМОФ','Хапйпик',
     'Свагов','Зовчик','Петров','Друнов','Ч','Фог',
     'Сладсоть','Гадость','Друнность');
  i, max_rost, samiy: integer;
  sred: real;
begin
  randomize;
  sred := 0;
  max_rost := 0;
  
  for i := 1 to 15 do
  begin
    rost[i] := random(46) + 155;
    sred := sred + rost[i];
    
    if rost[i] > max_rost then
    begin
      max_rost := rost[i];
      samiy := i;
    end;
  end;
  
  sred := sred / 15;
  writeln(samiy);
  writeln('Средний рост ', sred:0:2, ' Самый высокий ', max_rost, ' ', familia[samiy]);
end.