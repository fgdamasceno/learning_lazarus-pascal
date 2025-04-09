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


  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end.

