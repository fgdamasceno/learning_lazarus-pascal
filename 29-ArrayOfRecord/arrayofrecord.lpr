program arrayofrecord;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

type
  person = record
    fname, lname : string;
    gender : char;
    wage : real;
  end;

var
  employee : array[1..3] of person;

procedure quit;
begin
  writeln;
  writeln('Press <Enter> to quit.');
  writeln;
  readln;
end;

procedure LoadData;
begin
  employee[1].fname := 'Joe';
  employee[1].lname := 'Smith';
  employee[1].gender := 'M';
  employee[1].wage := 35000.00;

  employee[2].fname := 'Bill';
  employee[2].lname := 'Jones';
  employee[2].gender := 'M';
  employee[2].wage := 38000.00;

  employee[3].fname := 'Wendy';
  employee[3].lname := 'Wilson';
  employee[3].gender := 'F';
  employee[3].wage := 37000.00;
end;

procedure PrintData;

var
  x : integer;

begin
  for x := 1 to 3 do
  begin
    writeln('Employee ', x);
    writeln('Name: ', employee[x].fname, ' ', employee[x].lname);
    writeln('Gender: ', employee[x].gender);
    writeln('Wage: $', employee[x].wage:0:2);
    writeln;
  end;
end;

begin
  LoadData;
  PrintData;

  quit;
end.
