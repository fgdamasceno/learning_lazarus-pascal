unit SimpleCalculator;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TFormCalculator }

  TFormCalculator = class(TForm)
    ButtonSubmit: TButton;
    ButtonClear: TButton;
    ButtonQuit: TButton;
    EditNum1: TEdit;
    EditNum2: TEdit;
    Label1: TLabel;
    LabelAnswer: TLabel;
    LabelSign: TLabel;
    Label3: TLabel;
    RadioButtonAdd: TRadioButton;
    RadioButtonSubtract: TRadioButton;
    RadioButtonMultiply: TRadioButton;
    RadioButtonDivide: TRadioButton;
    RadioGroupOperator: TRadioGroup;
  private

  public

  end;

var
  FormCalculator: TFormCalculator;

implementation

{$R *.lfm}

end.

