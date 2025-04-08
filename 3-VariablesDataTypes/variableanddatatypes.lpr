program variableanddatatypes;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  name:string;
  num1:integer;
  num2:real;
  c:char;

begin

  name := 'Fernando';
  writeln('Meu nome e ', name, '.');

  num1 := 1982; // ATRIBUICAO DE VALOR
  writeln('Nasci no ano de ', num1, '.');

  num1 := 2025 - 1982; // REATRIBUICAO DE VALOR
  writeln('Em 2025 eu tinha ', num1, ' anos de idade.');

  num2 := 23.0;
  writeln('Hoje tenho ', num2:0:2, ' na carteira.');

  c := 'D';
  writeln('Meu ultimo nome e ', c, 'amasceno.');


  writeln;
  writeln('Press <ENTER> to quit!');
  readln;

end.

