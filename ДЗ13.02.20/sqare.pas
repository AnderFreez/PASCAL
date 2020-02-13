uses crt;
begin
  window(1, 1, 79, 25);
  textbackground(0);
  clrscr;
  var y: integer := 10;
  var x: integer := 10;
  for var i := 1 to 10 do
  begin
    gotoxy(x , y);
    write('*');
    delay(100);
    x += 1;
    write('*');
    delay(100);
  end;
  x := 10;
  y := 19;
  for var i := 1 to 10 do
  begin
    gotoxy(x , y);
    write('*');
    delay(100);
    x+= 1;
    write('*');
    delay(100);
  end;
  x := 10;
  y := 10;
  for var i := 1 to 10 do
  begin
    gotoxy(x , y);
    write('*');
    delay(100);
    y+= 1;
    write('*');
    delay(100);
  end;
  x := 20;
  y := 10;
  for var i := 1 to 10 do
  begin
    gotoxy(x , y);
    write('*');
    delay(100);
    y+= 1;
    write('*');
    delay(100);
  end;
  readln;
end.