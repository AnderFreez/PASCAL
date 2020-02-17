unit graphic2d;

interface

uses crt;

type point = record
  x, y: integer;
  
  constructor(a, b: integer);
  begin
    x := a;
    y := b;
  end;
  
  procedure print();
  begin
    gotoxy(x, y);
    Writeln('*');
  end;
end;

procedure initializeScreen(p1, p2: point; color: integer);

procedure line(p1, p2: point);

implementation

procedure initializeScreen(p1, p2: point; color: integer);
begin
  window(p1.x, p1.y, p2.x, p2.y);
  textbackground(color);
  clrscr;
end;

procedure line(p1, p2: point);
begin
  var tx, ty, space: integer;
  space := 0;
  if p1.x < p2.x then tx := 1;
  if p1.x > p2.x then tx := -1;
  if p1.x = p2.x then tx := 0;
  if p1.y < p2.y then ty := 1;
  if p1.y > p2.y then ty := -1;
  if p1.y = p2.y then ty := 0;
  begin
    ty := 0;
    space := 1;
  end;
  var l: integer := max(abs(p1.x - p2.x), abs(p1.y - p2.y)) + 1;
  for var i := 1 to l do
  begin
    gotoxy(p1.x, p1.y);
    write('*');
    delay(100);
    p1.x += tx + space;
    p1.y += ty;
  end;
end;

begin
  initializeScreen(new point(1, 1), new point(80, 25), 0);
  //Writeln('подключён модуль работы с графикой!!! yeah :)');
end.