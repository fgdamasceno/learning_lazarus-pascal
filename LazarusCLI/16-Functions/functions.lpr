program functions;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  num1:real;
  num2:real;
  answer:real;
  UI:string;
  error:integer;

function MultNum(x, y:real):real;
begin
  MultNum := x * y;
end;

procedure quit;
begin
  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end;

begin

  repeat
    write('Enter number: ');
    readln(UI);
    val(UI,num1,error);
  until error = 0;

  repeat
    write('Enter a number to multiply by: ');
    readln(UI);
    val(UI,num2,error);
  until error = 0;

  answer := MultNum(num1, num2);

  writeln('The answer is: ', answer:0:2);
  writeln('The answer is: ', MultNum(num1, num2):0:2);

  quit;
end.

