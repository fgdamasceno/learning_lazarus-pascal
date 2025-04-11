program twodimensionalarrays;

{$mode objfpc}{$H+}

uses
  crt,
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

{ EXEMPLO: CARTAS DE BARALHO }
var
  suit:array[1..4] of string = ('D','S','H','C');
  rank:array[1..13] of string = ('2','3','4','5','6','7','8','9','10',
                    'J','Q','K','A');
  cards:array[1..4,1..13] of string;

  x:integer;
  y:integer;


procedure quit;
begin
  writeln;
  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end;

begin

  // ADICIONA OS ELEMENTOS NO ARRAY cards
  for x := 1 to 4 do
    for y := 1 to 13 do
      cards[x,y] := suit[x] + rank[y];

  // EXIBE OS ELEMENTOS DO ARRAY cards NO CONSOLE
  for x := 1 to 4 do
    for y := 1 to 13 do
      write(cards[x,y], ' ');

  quit;
end.

