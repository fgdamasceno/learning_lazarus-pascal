program stringmanipulation;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

procedure quit;
begin
  writeln;
  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end;

var
  s:string;
  x:integer;

begin
  s := 'Hello';

  for x := 1 to length(s) do
    write(s[x]);
    writeln;
  for x := 2 to length(s) do
    writeln(s[x]);
  for x := length(s) downto 2 do
    write(s[x]);


  quit
end.

