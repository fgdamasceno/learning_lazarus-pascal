program parallelarrays;

{$mode objfpc}{$H+}

uses
  crt,
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  day:array[1..7] of string = ('Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab');
  high:array[1..7] of integer;
  low:array[1..7] of integer;

  UI:string;
  error:integer;

  x:integer;

procedure quit;
begin
  writeln;
  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end;

begin
  for x := 1 to 7 do
  begin
    repeat
      clrscr;
      writeln(day[x]);
      write('Digite a temperatura maxima: ');
      readln(UI);
      val(UI, high[x], error);
    until error = 0;

    repeat
      clrscr;
      writeln(day[x]);
      write('Digite a temperatura minima: ');
      readln(UI);
      val(UI, low[x], error);
    until error = 0;
  end;

  clrscr;

  for x := 1 to 7 do
  begin
    gotoxy(x*10, 1);
    write(day[x]);
    gotoxy(x*10,2);
    write(high[x]);
    gotoxy(x*10,3);
    write(low[x]);
  end;

  quit;
end.

