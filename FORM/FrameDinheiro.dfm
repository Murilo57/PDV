object FraDinheiro: TFraDinheiro
  Left = 0
  Top = 0
  Width = 450
  Height = 318
  TabOrder = 0
  TabStop = True
  object pnCentro: TPanel
    Left = 0
    Top = 0
    Width = 450
    Height = 318
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label2: TLabel
      Left = 250
      Top = 178
      Width = 46
      Height = 19
      Caption = 'Troco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbValorPago: TLabel
      Left = 250
      Top = 90
      Width = 89
      Height = 19
      Caption = 'Valor Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 51
      Top = 154
      Width = 167
      Height = 48
      Caption = 'R$00,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edTroco: TEdit
      Left = 250
      Top = 203
      Width = 185
      Height = 41
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edValoraPagar: TEdit
      Left = 250
      Top = 115
      Width = 185
      Height = 41
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
end
