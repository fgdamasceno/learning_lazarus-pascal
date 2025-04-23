program runnigexternalprograms;

{$mode objfpc}{$H+}

uses
  process,
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes
  { you can add units after this };

var
  RunProgram:TProcess;


begin
  RunProgram := TProcess.Create(nil);
  RunProgram.CommandLine := 'calc.exe';
  RunProgram.Execute;
  RunProgram.CommandLine := 'notepad.exe';
  RunProgram.Execute;
  RunProgram.CommandLine := 'C:\Users\fgdam\Git\lazarus_FreePascal\27-RunnigExternalPrograms\test.bat';
  RunProgram.Execute;
  RunProgram.Free;
end.

