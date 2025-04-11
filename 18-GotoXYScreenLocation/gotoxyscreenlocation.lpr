program gotoxyscreenlocation;

{$mode objfpc}{$H+}

uses
  crt,
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  x, y: integer;
  inicio, fim: integer;


procedure quit;
begin
  writeln;
  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end;

begin

  clrscr;

  for y := 1 to 5 do
  begin
    inicio := 6 - y; // CALCULA A POSIÇÃO INICIAL DE x
    fim := 4 + y;    // CALCULA A POSIÇÃO FINAL DE x

    for x := inicio to fim do
    begin
      gotoxy(x,y);   // POSICIONA O CURSOR
      write('*');    // ESCREVE O ASTERISCO
      delay(300);
    end;
  end;


  quit;
end.

