program randomnumbers;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  num:integer;
  x:integer;

begin
  randomize;

  for x := 1 to 10 do
  begin
    num:=random(11);
    write(num, #13#10);
  end;

  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end.

