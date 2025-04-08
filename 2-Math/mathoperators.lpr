program mathoperators;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

begin
  writeln('2 + 7 = ', 2+7);
  writeln('2 - 7 = ', 2-7);
  writeln('2 * 7 = ', 2*7);
  writeln('(2+7) * 3 = ', (2+7)*3);
  writeln('2 + 7 * 3 = ', 2+7*3);
  writeln('10 mod 3 = ', 10 mod 3, ' 10/3=1 resta 1');
  writeln('10 div 3 = ', 10 div 3, ' 10 divisivel 3x por 3');
  writeln('10/2 = ', 10/2, ' notacao cientifica');
  writeln('10/3 = ', 10/3, ' notacao cientifica');
  writeln('10/3:0:2 = ', 10/3:0:2, ' duas casas decimais, sem espaco a direita');
  writeln('10/3:5:2 = ', 10/3:5:2, ' duas casas decimais, com espaco a direita');

  readln;

end.

