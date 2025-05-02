program whileloop;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };
var
  counter:integer;


begin

  counter := 1;

  while counter < 11 do
  begin
    writeln(counter);
    counter := counter + 1;
  end;

  writeln;

  counter := 10;

  while counter > 0 do
  begin
    writeln(counter);
    counter := counter - 1;
  end;

  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end.

