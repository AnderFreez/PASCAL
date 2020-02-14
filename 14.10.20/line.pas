uses crt;

procedure line(x1, y1, x2, y2: integer);
begin
  var tx, ty, space: integer;
  space := 0;
  if x1 < x2 then tx := 1;
  if x1 > x2 then tx := -1;
  if x1 = x2 then tx := 0;
  if y1 < y2 then ty := 1;
  if y1 > y2 then ty := -1;
  if y1 = y2 then 
  begin
    ty := 0;
    space := 1;
  end;
  var l: integer := max(abs(x1 - x2), abs(y1 - y2)) + 1;
  for var i := 1 to l do
  begin
    gotoxy(x1, y1);
    write('*');
    delay(100);
    x1 += tx + space;
    y1 += ty;
  end;
end;

begin
  window(1, 1, 80, 25);
  textbackground(0);
  clrscr;
  line(1, 1, 3, 1);
end.