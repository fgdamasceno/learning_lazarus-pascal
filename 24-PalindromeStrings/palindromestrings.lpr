program palindromestrings;

{$mode objfpc}{$H+}

uses
  crt,
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

procedure quit;
begin
  writeln;
  writeln('Press <Enter> to quit');
  readln;
end;

var
  s:string;
  backward:string;
  x:integer;

begin

  write('Enter string: ');
  readln(s);

  s := Lowercase(s);

  for x := length(s) downto 1 do
    backward := backward + s[x];

  clrscr;

  writeln;
  writeln('The string forwards: ', s);
  writeln('The string backwards: ', backward);
  writeln;

  if s = backward then
    writeln('The string is a palindrome')
  else
    writeln('The string is not a palindrome');

  quit;
end.

