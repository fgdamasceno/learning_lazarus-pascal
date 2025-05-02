program  ReadingTextFiles;

{$mode objfpc}{$H+}

uses
  sysutils,
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  f:textfile;
  linetxt:string;

procedure quit;
begin
  writeln;
  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end;

begin
  assignfile(f, 'TextFile.txt');
  // read one line at a time
  writeln('--READING ONE LINE AT A TIME:');
  try
    reset(f);
    readln(f, linetxt);
    writeln(linetxt);
    readln(f, linetxt);
    writeln(linetxt);
    writeln;
    writeln;
    close(f);
  except
    writeln('File error - Please check your file');
  end;

  // read all lines in a loop
  writeln('--READING ALL LINES USING A WHILE LOOP:');
  try
    reset(f);
    while not eof(f) do
    begin
      readln(f, linetxt);
      writeln(linetxt);
    end;
      close(f);
  except
    writeln('File error - Please check your file');
  end;

  quit;
end.
