object FormMedias: TFormMedias
  Left = 0
  Top = 0
  Caption = 'C'#225'lculo de M'#233'dias'
  ClientHeight = 242
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 168
  TextHeight = 30
  object Label1: TLabel
    Left = 14
    Top = 14
    Width = 63
    Height = 30
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 14
    Top = 98
    Width = 63
    Height = 30
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Valor 2'
  end
  object Label3: TLabel
    Left = 236
    Top = 14
    Width = 60
    Height = 30
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Peso 1'
  end
  object Label4: TLabel
    Left = 236
    Top = 98
    Width = 60
    Height = 30
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Peso 2'
  end
  object EditValor1: TEdit
    Left = 14
    Top = 47
    Width = 212
    Height = 38
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 0
  end
  object EditValor2: TEdit
    Left = 14
    Top = 131
    Width = 212
    Height = 38
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 1
  end
  object EditPeso1: TEdit
    Left = 236
    Top = 47
    Width = 212
    Height = 38
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 2
  end
  object EditPeso2: TEdit
    Left = 236
    Top = 131
    Width = 212
    Height = 38
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 3
  end
  object ButtonCalcular: TButton
    Left = 14
    Top = 184
    Width = 212
    Height = 44
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Calcular M'#233'dia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = ButtonCalcularClick
  end
  object ButtonLimpar: TButton
    Left = 236
    Top = 184
    Width = 212
    Height = 44
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Limpar Valores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = ButtonLimparClick
  end
end
