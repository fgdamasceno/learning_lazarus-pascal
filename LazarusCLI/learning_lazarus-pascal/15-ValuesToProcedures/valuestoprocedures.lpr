program valuestoprocedures;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  name:string;

procedure example(name:string);
begin
  writeln('Hello ', name, '. Welcome!');
end;

procedure quit;
begin
  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end;

begin

  write('What is your name? ');
  readln(name);
  example(name);


  quit;
end.

