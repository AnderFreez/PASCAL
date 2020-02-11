uses crt;
begin
  window(1, 1, 79, 25);
  textbackground(0);
  clrscr;
  var y: integer := 10;
  var x: integer := 10;
  gotoxy(x, y);
  textcolor(8);
  for var i := 1 to 10 do
  begin
    x += 1;
    y += 1;
    gotoxy(x, y);
    delay(100);
    for var m := 1 to 10 do
    begin
      write('*');
      delay(100);
    end;
  end;
  x := 10;
  y := 10;
  for var t := 1 to 10 do
  begin
    gotoxy(x, y);
    write('*');
    delay(100);
    x += 1;
    y += 1;
  end;
  x := 19;
  y := 19;
  for var t := 1 to 10 do
  begin
    gotoxy(x, y);
    write('*');
    delay(100);
    x += 1;
    y += 1;
  end;
  readln;
end.