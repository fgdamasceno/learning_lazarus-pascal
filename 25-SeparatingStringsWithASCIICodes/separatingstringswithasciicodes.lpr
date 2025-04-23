program separatingstringswithasciicodes;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  s:string;
  letters:string;
  numbers:string;
  others:string;
  x:integer;

procedure quit;
begin
  writeln;
  writeln('Press <Enter> to quit.');
  writeln;
  readln;
end;

begin
  write('Enter string: ');
  readln(s);

  for x := 1 to length(s) do
  begin
    if ((ord(s[x]) > 64) and (ord(s[x]) < 91)) or ((ord(s[x]) > 96) and (ord(s[x]) < 123)) then
    letters := letters + s[x]
    else if ((ord(s[x]) > 47) and (ord(s[x]) < 58)) then
    numbers := numbers + s[x]
    else
      others := others + s[x];
  end;

  writeln;
  writeln('Letters: ', letters);
  writeln('Numbers: ', numbers);
  writeln('Others: ', others);


  quit;
end.

