object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 176
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object MaskEdit11: TMaskEdit1
    Left = 88
    Top = 112
    Width = 116
    Height = 23
    EditMask = '999.999.999-99;1;_'
    MaxLength = 14
    TabOrder = 0
    Text = '   .   .   -  '
    Pessoa = pFisica
  end
  object RadioGroup1: TRadioGroup
    Left = 56
    Top = 40
    Width = 185
    Height = 49
    Caption = 'CNPJ/CPF'
    Columns = 2
    Items.Strings = (
      'Juridica'
      'F'#237'sica')
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
end
