program forloop;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  x:integer; //COUNTER

begin

  for x:=1 to 10 do
  begin
    writeln(x);
  end;

  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end.

