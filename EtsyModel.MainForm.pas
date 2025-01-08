unit EtsyModel.MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  LWork, LPost, LPrice: Integer;
begin
  LWork := StrToInt(Edit1.Text);
  LPost := StrToInt(Edit2.Text);
  LPrice := StrToInt(Edit5.Text);
  Edit3.Text := IntToStr(LPrice div 5);
  Edit4.Text := IntToStr((LPrice div 5) + LWork + LPost);
  Edit6.Text := IntToStr(StrToInt(Edit5.Text) - StrToInt(Edit4.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text := '0';
  Edit2.Text := '0';
  Edit3.Text := '0';
  Edit4.Text := '0';
  Edit5.Text := '0';
  Edit6.Text := '0';
end;

end.
