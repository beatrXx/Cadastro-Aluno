unit trabalhoIGORcerto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.CheckLst, Vcl.Mask, Vcl.Samples.Spin, Vcl.ExtCtrls, Vcl.ToolWin;

type
  TCadastro = class(TForm)
    LblNome: TLabel;
    date: TDateTimePicker;
    lblNasc: TLabel;
    lblCPF: TLabel;
    lblSexo: TLabel;
    lblCidade: TLabel;
    lblEstado: TLabel;
    lblDisciplinas: TLabel;
    cbSolteiro: TCheckBox;
    cbSexoM: TCheckBox;
    cbSexoF: TCheckBox;
    MaskCPF: TMaskEdit;
    txtNome: TEdit;
    lblMatricula2: TLabel;
    cbEstado: TComboBox;
    txtCidade: TEdit;
    clDisciplina: TCheckListBox;
    lblCADASTRO: TLabel;
    lblFilhos: TLabel;
    spinFilhos: TSpinEdit;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    btnCadastra: TButton;
    Splitter1: TSplitter;
    btnFechar: TButton;
    Cadastrado: TMemo;
    btnArquivo: TButton;
    procedure cbSolteiroClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbSexoMClick(Sender: TObject);
    procedure txtNomeExit(Sender: TObject);
    procedure dateExit(Sender: TObject);
    procedure txtNomeEnter(Sender: TObject);
    procedure dateMouseEnter(Sender: TObject);
    procedure MaskCPFEnter(Sender: TObject);
    procedure MaskCPFExit(Sender: TObject);
    procedure txtCidadeEnter(Sender: TObject);
    procedure txtCidadeExit(Sender: TObject);
    procedure cbEstadoEnter(Sender: TObject);
    procedure cbEstadoExit(Sender: TObject);
    procedure cbSexoMEnter(Sender: TObject);
    procedure cbSexoMExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnCadastraClick(Sender: TObject);
    procedure cbSexoFClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CadastradoChange(Sender: TObject);
    procedure btnArquivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro: TCadastro;

implementation

{$R *.dfm}

procedure TCadastro.btnArquivoClick(Sender: TObject);
var

  nome:String;
begin

  nome:= txtNome.Text;

  Cadastrado.Lines.SaveToFile(nome+'.txt');
end;


procedure TCadastro.btnCadastraClick(Sender: TObject);

var

 c:string;
 b:string;
 i:integer;
begin
  //memo.Lines.Text:= lblMatricula2.Caption;
  //memo.Lines.Text:= txtNome.Text;

  Cadastrado.Lines.Add(lblMatricula2.Caption);
  Cadastrado.Lines.Add(txtNome.Text);
  Cadastrado.Lines.Add(DateToStr(date.Time));
  Cadastrado.Lines.Add(maskCPF.Text);

  if cbSexoM.Checked then
          begin
          Cadastrado.Lines.Add('M');
          end
  else
    begin
    Cadastrado.Lines.Add('F');
     end;



    Cadastrado.Lines.Add(txtCidade.Text);
    Cadastrado.Lines.Add(cbEstado.Text);

    if cbSolteiro.Checked then
      begin
        Cadastrado.Lines.Add('Solteiro');
      end

      else
        begin
           Cadastrado.Lines.Add('Não Solteiro');
           Cadastrado.Lines.Add( spinFilhos.Text)
        end;


         for i := 0 to 4 do
          begin
            if clDisciplina.Checked[i] = true then
              begin
                Cadastrado.Lines.Add(clDisciplina.Items.Strings[i]);

            end;

          end;




        
  Cadastrado.ReadOnly;
  Cadastrado.Show;


end;

procedure TCadastro.btnFecharClick(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TCadastro.CadastradoChange(Sender: TObject);


var

  nome:String;
begin

  nome:= txtNome.Text;

  Cadastrado.Lines.SaveToFile(nome+'.txt');
end;

procedure TCadastro.cbEstadoEnter(Sender: TObject);
begin
  cbEstado.Color:= cl3DLight;
end;

procedure TCadastro.cbEstadoExit(Sender: TObject);
begin
  cbEstado.Color:= clWindow;
end;

procedure TCadastro.cbSexoFClick(Sender: TObject);
begin


   if cbSexoM.Checked then
            begin
               cbSexoM.Checked:= not cbSexoM.Checked;

            end;
end;

procedure TCadastro.cbSexoMClick(Sender: TObject);
begin

  //cbSexoF.DisposeOf;
   if cbSexoF.Checked then
            begin
               cbSexoF.Checked:= not cbSexoF.Checked;

            end;

end;

procedure TCadastro.cbSexoMEnter(Sender: TObject);
begin
  cbSexoM.Color:= cl3DLight;
end;

procedure TCadastro.cbSexoMExit(Sender: TObject);
begin
  cbSexoM.Color:= clWindow;
end;

procedure TCadastro.cbSolteiroClick(Sender: TObject);
begin



  if  cbSolteiro.Checked then
      begin
     lblFilhos.HIDE;
     spinFilhos.HIDE;
     end
  else
         begin
          lblFilhos.SHOW;
           spinFilhos.SHOW;
         end
end;

procedure TCadastro.dateExit(Sender: TObject);
begin
  date.Color:= clWindow;
end;

procedure TCadastro.dateMouseEnter(Sender: TObject);
begin
  date.Color:= cl3DLight;
end;

procedure TCadastro.Edit1Change(Sender: TObject);

var
  mat:integer;
begin
  randomize;
  mat := Round(random(99999));


end;

procedure TCadastro.FormCreate(Sender: TObject);
 var
    mat:integer;

begin

    randomize;
    mat:= Round(random(99999));
    lblMatricula2.Caption := IntToStr(mat);


end;

procedure TCadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
     Perform(WM_nextdlgctl,0,0)
  else if Key =#27 then
     Perform(WM_nextdlgctl,1,0)

end;

procedure TCadastro.MaskCPFEnter(Sender: TObject);
begin
  Maskcpf.Color:= cl3DLight;
end;

procedure TCadastro.MaskCPFExit(Sender: TObject);
begin
  MaskCPF.Color:= clWindow;
end;

procedure TCadastro.txtCidadeEnter(Sender: TObject);
begin
  txtCidade.Color:= cl3DLight;
end;

procedure TCadastro.txtCidadeExit(Sender: TObject);
begin
      txtCidade.Color:= clWindow;
end;

procedure TCadastro.txtNomeEnter(Sender: TObject);
begin
  txtNome.Color:= cl3DLight;
end;

procedure TCadastro.txtNomeExit(Sender: TObject);
begin
txtNome.Color:= clWindow;
end;

end.
