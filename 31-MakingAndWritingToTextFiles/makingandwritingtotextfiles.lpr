program makingandwritingtotextfiles;

{$mode objfpc}{$H+}

uses
  sysutils,
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

procedure quit;
begin
  writeln;
  writeln;
  writeln('Press <Enter> to quit.');
  writeln;
  readln;
end;

var
  f:textfile;

begin
  assignfile(f, 'TextFile.txt');
  try
  rewrite(f);
  writeln(f, 'Hello World!');
  writeln(f, 'This is another line from Larazurs');
  close(f);
  except
    writeln('File error - Please check your file');
  end;

  quit;
end.

