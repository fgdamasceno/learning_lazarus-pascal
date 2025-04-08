program writetoconsole;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

begin
  writeln('Hello World!');
  writeln;
  writeln;
  write('Hello ');
  write('World!');
  readln;
end.

