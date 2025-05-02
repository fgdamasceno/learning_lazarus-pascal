unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label1.Caption:= 'Button1 was clicked';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Label1.Caption:='Button2 was clicked';
end;

procedure TForm1.Label1MouseEnter(Sender: TObject);
begin
  Label1.Caption:='The mouse is over me';
end;

procedure TForm1.Label1MouseLeave(Sender: TObject);
begin
  Label1.Caption:='The mouse in not over me anymore';
end;



end.

