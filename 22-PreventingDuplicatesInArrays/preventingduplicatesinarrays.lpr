program preventingduplicatesinarrays;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  names:array[1..5] of string;
  name:string;
  x:integer;
  y:integer;
  found:boolean;

procedure quit;
begin
  writeln;
  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end;

begin

  for x := 1 to 5 do
  begin
    repeat
      found := false;
      write('Enter name: ');
      readln(name);

      for y := 1 to 5 do
      begin
        if UpCase(name) = UpCase(names[y]) then
        begin
          found := true;
          writeln('Name not accepted - Duplicate data.');
        end;
      end;
    until found = false;

    names[x] := name;
  end;

  writeln;
  writeln;
  writeln('The names in the array: ');
  writeln;
  for x := 1 to 5 do
  writeln(names[x]);


  quit;
end.

