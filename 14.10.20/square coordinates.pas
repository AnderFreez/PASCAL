uses crt;

procedure square(x, y, a: integer);
begin
  for var i := 1 to a do
  begin
  gotoxy(x, y);
  write('* ');
  delay(100);
  x += 2;
  end;
  for var i := 1 to a do
  begin
  gotoxy(x, y);
  write('*');
  delay(100);
  y += 1;
  end;
  for var i := 1 to a do
  begin
  gotoxy(x, y);
  write('* ');
  delay(100);
  x -= 2;
  end;
  for var i := 1 to a do
  begin
  gotoxy(x, y);
  write('*');
  delay(100);
  y -= 1;
  end;
end;

begin
  window(1, 1, 80, 25);
  textbackground(0);
  clrscr;
  square(10, 10, 20);
end.