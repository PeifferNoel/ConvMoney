unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    Btn: TButton;
    SpinEuro: TFloatSpinEdit;
    SpinDollar: TFloatSpinEdit;
    LabelE: TLabel;
    LabelD: TLabel;
    EvD: TRadioButton;
    DvE: TRadioButton;
    Options: TRadioGroup;
    procedure BtnClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }




procedure TForm1.BtnClick(Sender: TObject);
begin
  IF EvD.Checked=true then
  begin
    SpinDollar.Value := SpinEuro.value*1.14
  end
  else
  begin
    SpinEuro.Value := SpinDollar.value/1.14
  end;
end;

end.

