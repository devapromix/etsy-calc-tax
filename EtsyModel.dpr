program EtsyModel;

uses
  Vcl.Forms,
  EtsyModel.MainForm in 'EtsyModel.MainForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
