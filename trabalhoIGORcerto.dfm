object Cadastro: TCadastro
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadastro'
  ClientHeight = 556
  ClientWidth = 550
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object LblNome: TLabel
    Left = 57
    Top = 107
    Width = 34
    Height = 13
    Caption = 'Nome: '
    Color = clBackground
    ParentColor = False
  end
  object lblNasc: TLabel
    Left = 32
    Top = 131
    Width = 59
    Height = 13
    Caption = 'Nascimento:'
    Color = clBackground
    ParentColor = False
  end
  object lblCPF: TLabel
    Left = 68
    Top = 161
    Width = 23
    Height = 13
    Caption = 'CPF:'
    Color = clBackground
    ParentColor = False
  end
  object lblSexo: TLabel
    Left = 63
    Top = 190
    Width = 28
    Height = 13
    Caption = 'Sexo:'
    Color = clBackground
    ParentColor = False
  end
  object lblCidade: TLabel
    Left = 54
    Top = 235
    Width = 37
    Height = 13
    Caption = 'Cidade:'
    Color = clBackground
    ParentColor = False
  end
  object lblEstado: TLabel
    Left = 54
    Top = 259
    Width = 37
    Height = 13
    Caption = 'Estado:'
    Color = clBackground
    ParentColor = False
  end
  object lblDisciplinas: TLabel
    Left = 320
    Top = 107
    Width = 52
    Height = 13
    Caption = 'Disciplinas:'
    Color = clBackground
    ParentColor = False
  end
  object lblMatricula2: TLabel
    Left = 97
    Top = 85
    Width = 3
    Height = 13
    Color = clBackground
    ParentColor = False
  end
  object lblCADASTRO: TLabel
    Left = 155
    Top = 40
    Width = 259
    Height = 29
    Caption = 'Cadastro de Alunos'
    Color = clBackground
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblFilhos: TLabel
    Left = 95
    Top = 319
    Width = 86
    Height = 13
    Caption = 'N'#250'mero de Filhos:'
    Color = clBackground
    ParentColor = False
    Visible = False
  end
  object Label1: TLabel
    Left = 44
    Top = 85
    Width = 47
    Height = 13
    Caption = 'Matr'#237'cula:'
    Color = clBackground
    ParentColor = False
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Height = 537
    ExplicitLeft = 186
    ExplicitTop = 29
    ExplicitHeight = 559
  end
  object date: TDateTimePicker
    Left = 97
    Top = 131
    Width = 121
    Height = 21
    Date = 43888.000000000000000000
    Time = 0.675372569443425200
    TabOrder = 1
    OnExit = dateExit
    OnMouseEnter = dateMouseEnter
  end
  object cbSolteiro: TCheckBox
    Left = 124
    Top = 293
    Width = 65
    Height = 17
    Caption = 'Solteiro'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = cbSolteiroClick
  end
  object cbSexoM: TCheckBox
    Left = 97
    Top = 189
    Width = 40
    Height = 17
    Caption = 'M'
    TabOrder = 3
    OnClick = cbSexoMClick
    OnEnter = cbSexoMEnter
    OnExit = cbSexoMExit
  end
  object cbSexoF: TCheckBox
    Left = 97
    Top = 209
    Width = 40
    Height = 17
    Caption = 'F'
    TabOrder = 4
    OnClick = cbSexoFClick
  end
  object MaskCPF: TMaskEdit
    Left = 97
    Top = 158
    Width = 120
    Height = 21
    EditMask = '###.###.###-##;'
    MaxLength = 14
    TabOrder = 2
    Text = '   .   .   -  '
    OnEnter = MaskCPFEnter
    OnExit = MaskCPFExit
  end
  object txtNome: TEdit
    Left = 97
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
    OnEnter = txtNomeEnter
    OnExit = txtNomeExit
  end
  object cbEstado: TComboBox
    Left = 97
    Top = 259
    Width = 121
    Height = 21
    TabOrder = 6
    OnEnter = cbEstadoEnter
    OnExit = cbEstadoExit
    Items.Strings = (
      'Acre'
      'Alagoas'
      'Amap'#225
      'Amazonas'
      'Bahia'
      'Cear'#225
      'Distrito Federal'
      'Esp'#237'rito Santo'
      'Goi'#225's'
      'Maranh'#227'o'
      'Mato Grosso'
      'Mato Grosso do Sul'
      'Minas Gerais'
      'Par'#225
      'Para'#237'ba'
      'Paran'#225
      'Pernambuco'
      'Piau'#237
      'Rio de Janeiro'
      'Rio Grande do Norte'
      'Rio Grande do Sul'
      'Rond'#244'nia'
      'Roraima'
      'Santa Catarina'
      'S'#227'o Paulo'
      'Sergipe'
      'Tocantins')
  end
  object txtCidade: TEdit
    Left = 97
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 5
    OnEnter = txtCidadeEnter
    OnExit = txtCidadeExit
  end
  object clDisciplina: TCheckListBox
    Left = 378
    Top = 107
    Width = 81
    Height = 77
    ItemHeight = 13
    Items.Strings = (
      'Matem'#225'tica'
      'Portugu'#234's'
      'Prog 1'
      'Prog 2'
      'An'#225'lise')
    TabOrder = 9
  end
  object spinFilhos: TSpinEdit
    Left = 187
    Top = 316
    Width = 31
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 0
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 537
    Width = 550
    Height = 19
    Panels = <>
  end
  object btnCadastra: TButton
    Left = 171
    Top = 352
    Width = 78
    Height = 33
    Caption = 'Cadastrar'
    TabOrder = 10
    OnClick = btnCadastraClick
  end
  object btnFechar: TButton
    Left = 526
    Top = 0
    Width = 24
    Height = 17
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = btnFecharClick
  end
  object Cadastrado: TMemo
    Left = 155
    Top = 391
    Width = 201
    Height = 124
    Lines.Strings = (
      'Cadastrado')
    TabOrder = 14
    Visible = False
    OnChange = CadastradoChange
  end
  object btnArquivo: TButton
    Left = 255
    Top = 352
    Width = 85
    Height = 33
    Caption = 'Criar Arquivo'
    TabOrder = 11
    OnClick = btnArquivoClick
  end
end
