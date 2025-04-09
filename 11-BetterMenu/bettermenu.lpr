program bettermenu;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  selection:char;

begin

  writeln('1) Sunday');
  writeln('2) Monday');
  writeln('3) Tuesday');
  writeln('4) Wednesday');
  writeln('5) Thursday');
  writeln('6) Friday');
  writeln('7) Saturday');
  write('Enter a selection: (1 to 7): ');
  readln(selection);

  writeln;

  case selection of
    '1':writeln('Sunday is a free day');
    '2':writeln('Monday Homework');
    '3':writeln('Tuesday Homework');
    '4':writeln('Wednesday Homework');
    '5':writeln('Thursday Homework');
    '6':writeln('Friday Homework');
    '7':writeln('Saturday i a free day');
    else
      writeln('Something else was selected');
  end;


  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end.

