uses crt;
begin
  window(1, 1, 79, 25);
  textbackground(0);
  clrscr;
  var y: integer := 1;
  var x: integer := 1;
  for var i := 1 to 20 do
  begin
    gotoxy(x, y);
    textcolor(15);
    write('*');
    delay(500);
    gotoxy(x, y);
    textcolor(0);
    write('*');
    x += 1;
    y += 1;
  end;
  readln;
end.