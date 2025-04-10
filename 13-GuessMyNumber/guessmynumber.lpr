program guessmynumber;

{$mode objfpc}{$H+}

uses
  crt,
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };
var
  answer:integer;
  guess:integer;
  count:integer;
  error:integer;
  game:char;
  UI:string;

begin

  repeat
    count := 0;

    repeat
      clrscr; // LIMPA A TELA E PRINTA O CODIGO ABAIXO
      textcolor(4);
      writeln('Please Select A game:');
      writeln;
      textcolor(2);
      writeln('A) 10');
      writeln('B) 100');
      writeln('C) 1000');
      writeln;
      write('Enter Selection: ');
      textcolor(3);
      readln(game);
    until (game = 'A') or (game = 'a')
      or (game = 'B') or (game = 'b')
      or (game = 'C') or (game = 'c');

    clrscr;

    randomize;

    case game of
    'A', 'a': begin
                answer := random(10)+1;
                writeln('Game 1 - 10');
              end;
    'B', 'b': begin
                answer := random(100)+1;
                writeln('Game 1 - 100');
              end;
    'C', 'c': begin
                answer := random(1000)+1;
                writeln('Game 1 - 1000');
              end;
    end;

    repeat
      repeat
        writeln;
        write('Enter a guess: ');
        readln(UI);
        val(UI,guess,error);

        if error <> 0 then
          writeln('Incorrect input - Please try again');

      until error = 0;

      count := count + 1;

    if guess < answer then
      writeln('Too low')
    else if guess > answer then
      writeln('Too high')
    else
      writeln('You guessed my number in ', count, ' gueses!');

    until guess = answer;

    writeln;

    repeat
      writeln('Play again y/n: ');
      readln(game);

    until (game = 'Y') or (game = 'y') or (game =  'N') or (game = 'n');

  until (game = 'N') or (game = 'n');


  writeln;
  writeln('Press <Enter> to exit.');
  readln;
end.

