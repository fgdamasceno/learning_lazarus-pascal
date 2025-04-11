program arrays;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };
var
  //names:array[1..5] of string; // UMA FORMA DE DEFINIR UM ARRAY
  //days:array[1..7] of string = ('Sunday', 'Monday', 'Tuesday', 'Wednesday',
                   //'Thursday', 'Friday', 'Saturday'); // OUTRA FORMA
  nums:array[1..5] of integer;
  x:integer;
  sum:integer;
  UI:string;
  error:integer;

procedure quit;
begin
  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end;

begin
(*
  names[1] := 'Jim';
  names[2] := 'Joan';
  names[3] := 'Jan';
  names[4] := 'Jill';
  names[5] := 'Jeff';

  for x := 1 to 5 do
    writeln(names[x]);

  writeln;

  for x := 1 to 7 do
    writeln(days[y]);
*)

  for x := 1 to 5 do
  begin
    repeat
      write('Enter integer: ');
      readln(UI);
      val(UI, nums[x], error);
    until error = 0;
  end;

  sum := 0;

  for x := 1 to 5 do
    sum := sum + nums[x];

  writeln('The sum of the array is ', sum);

  quit;
end.

