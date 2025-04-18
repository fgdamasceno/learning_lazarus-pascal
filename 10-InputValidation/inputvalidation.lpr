program inputvalidation;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  selection:char;
  num:real;
  num2:integer;
  error:integer;
  userInput:string;

begin

  repeat
    write('Make a selection (A or B): ');
    readln(selection);
  until (selection = 'A') or (selection = 'a') or (selection = 'B') or (selection = 'b');

  case selection of
  'A', 'a': begin
    writeln('A was selected.');
    end;
  'B', 'b': begin
    writeln('B was selected.');
    end;
  end;

  repeat
    writeln('Enter a number (1 - 10): ');
    readln(num);
  until (num >= 1) and (num <= 10) ;

  writeln('The number squared: ', num * num:0:2);

  // CHECANDO INCOMPATIBILIDADE DE DADOS NA ENTRADA
  repeat
    write('Enter an integer: ');
    readln(userInput);
    val(userInput, num2, error);
  until error = 0;

  writeln('Your number: ', num2);


  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end.

