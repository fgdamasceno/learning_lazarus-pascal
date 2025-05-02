program userinput;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  fname:string;
  lname:string;
  num1:integer;
  num2:integer;

begin
  write('Enter first name: ');
  readln(fname);
  write('Enter last name: ');
  readln(lname);
  writeln;
  writeln('Nice to meet you ', fname, ' ', lname, '.');
  write('Enter first integer: ');
  readln(num1);
  write('Enter second integer: ');
  readln(num2);
  writeln;
  writeln('The sum of the integers: ', num1 + num2);
  writeln;

  writeln('Press <Enter> to quit!');
  readln;
end.

