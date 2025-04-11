program highestlowestarrayelements;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  numbers:array[1..10] of integer = (100,8,5,9,9,1,4,56,101,94);
  high:integer;
  low:integer;
  x:integer;

procedure quit;
begin
  writeln;
  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end;

begin

  high := numbers[1];
  low := numbers[1];

  for x := 2 to 10 do
  begin
    if numbers[x] > high then
      high := numbers[x];

    if numbers[x] < low then
      low := numbers[x];
  end;

  writeln('The highest number is: ', high);
  writeln('The lowest number is: ', low);

  quit;
end.

