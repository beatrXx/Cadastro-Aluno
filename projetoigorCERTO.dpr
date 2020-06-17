program projetoigorCERTO;

uses
  Vcl.Forms,
  trabalhoIGORcerto in 'trabalhoIGORcerto.pas' {Cadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCadastro, Cadastro);
  Application.Run;
end.
