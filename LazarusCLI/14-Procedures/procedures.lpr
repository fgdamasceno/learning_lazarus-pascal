program procedures;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  x:integer;

procedure xSquare;
begin
  writeln('The square of ', x ,' is ', x * x);
end;

procedure quit;
begin
  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end;

begin

  write('Type a number to be squared: ');
  readln(x);
  XSquare;

  quit;
end.

