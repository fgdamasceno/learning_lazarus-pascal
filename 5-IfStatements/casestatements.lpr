program casestatements;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  hora:integer;

begin

  write('Que horas sao (Ex.: 10)? ');
  readln(hora);

  case hora of
  0..11:begin
    writeln('Bom dia!');
    end;
  12..17:begin
    writeln('Boa tarde!');
    end;
  18..23:begin
    writeln('Boa noite!');
    end;
  else begin
    writeln('Nao foi digitado um valor valido');
    end
  end;

  writeln;
  writeln('Press <Enter> to quit.');
  readln;
end.

