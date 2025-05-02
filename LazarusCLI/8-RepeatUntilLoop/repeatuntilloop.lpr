program repeatuntilloop;

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

  x:=1;

  repeat
    writeln(x);
    x:=x+1
  until x = 11 ;

  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end.

