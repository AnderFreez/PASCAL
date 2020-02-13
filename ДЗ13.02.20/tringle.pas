uses crt;
begin
  window(1, 1, 79, 25);
  textbackground(0);
  clrscr;
  var y: integer := 20;
  var x: integer := 20;
  for var i := 1 to 10 do
  begin
    gotoxy(x , y);
    write('*');
    delay(100);
    x += 1;
    y -= 1;
  end;
  for var i := 1 to 11 do
  begin
    gotoxy(x , y);
    write('*');
    delay(100);
    x += 1;
    y += 1;
  end;
  for var i := 1 to 23 do
  begin
    gotoxy(x , y);
    write('*');
    delay(100);
    x -= 1;
  end;
  readln;
end.