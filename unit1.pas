unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    FloatSpinEdit1: TFloatSpinEdit;
    FloatSpinEdit2: TFloatSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);

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
  IF RadioButton1.Checked=true then
  begin
    FloatSpinEdit2.Value := FloatSpinEdit1.value*1.14
  end
  else
  begin
    FloatSpinEdit1.Value := FloatSpinEdit2.value/1.14
  end;
end;

end.

