program ifstatements;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  first_name:string;
  last_name:string;
  birth_year:integer;
  this_year:integer;



begin
  this_year := 2025;

  write('Write you first name: ');
  readln(first_name);
  write('Write your last name: ');
  readln(last_name);
  write('Year of birth: ');
  readln(birth_year);
  writeln;
  writeln('Welcome ', first_name, ' ', last_name, '!');
  writeln('You are ', this_year - birth_year, ' years old.');

  if this_year - birth_year <= 19 then
  begin
    writeln('You are still a teenager!');
  end
  else if this_year - birth_year <= 59 then
  begin
    writeln('You are now an adult!');
  end
  else
  begin
    writeln('You are an elderly person.');
  end;

  writeln;
  writeln('Type <Enter> to quit.');

  readln;
end.

