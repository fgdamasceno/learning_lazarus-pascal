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
  writeln('Em  ', num1, ', Venom lancou o album "Black Metal".');

  num1 := 1982 - 1980; // REATRIBUICAO DE VALOR
  writeln(num1, ' anos apos o lancamento de "Ace of Spades" pelo Motorhead.');

  num2 := 10 / 3;
  writeln('A divisao de 10 por 3 e igual a ', num2:0:2, '.');

  c := 'P';
  write(c, ' de Pascal');
  c := 'L';
  write(' e ', c, ' de Lazarus.');


  writeln;
  writeln('Press <ENTER> to quit!');
  readln;

end.

