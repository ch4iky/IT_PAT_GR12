object main: Tmain
  Left = 0
  Top = 0
  Caption = 'main'
  ClientHeight = 715
  ClientWidth = 1147
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object pgctrl: TPageControl
    Left = 0
    Top = 0
    Width = 1097
    Height = 657
    ActivePage = ADMIN
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -19
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = pgctrlChange
    object TabSheet1: TTabSheet
      Caption = 'ADOPT'
      object imgadopt: TImage
        Left = 0
        Top = 0
        Width = 1086
        Height = 617
      end
      object lbladopt: TLabel
        Left = 409
        Top = 0
        Width = 262
        Height = 106
        Caption = 'ADOPT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -80
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblenteradoptname: TLabel
        Left = 25
        Top = 468
        Width = 265
        Height = 31
        Caption = 'Enter animal ID from grid'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -23
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAdopt: TButton
        Left = 25
        Top = 544
        Width = 168
        Height = 62
        Caption = 'ADOPT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -27
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        StyleName = 'sky'
        OnClick = btnAdoptClick
      end
      object dbgUsersadopt: TDBGrid
        Left = 473
        Top = 104
        Width = 546
        Height = 153
        DataSource = dsusers
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -17
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clTeal
        TitleFont.Height = -19
        TitleFont.Name = 'Yu Gothic UI'
        TitleFont.Style = [fsBold]
      end
      object DBGanimalsadopt: TDBGrid
        Left = 473
        Top = 304
        Width = 546
        Height = 138
        DataSource = dsanimal
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -17
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clTeal
        TitleFont.Height = -19
        TitleFont.Name = 'Yu Gothic UI'
        TitleFont.Style = [fsBold]
      end
      object pnladopt2: TPanel
        Left = 25
        Top = 128
        Width = 416
        Height = 113
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -20
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object lbladoptname: TLabel
          Left = 48
          Top = 17
          Width = 307
          Height = 31
          Caption = 'Please select animal to adopt '
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -23
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object edtadoptname: TEdit
        Left = 25
        Top = 505
        Width = 121
        Height = 33
        TabOrder = 4
      end
      object pnladoptanino: TPanel
        Left = 473
        Top = 448
        Width = 419
        Height = 145
        TabOrder = 5
        object lbladoptanimalno: TLabel
          Left = 184
          Top = 50
          Width = 35
          Height = 31
          Caption = ' '#9733' '
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -23
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object rgpadopt: TRadioGroup
        Left = 25
        Top = 288
        Width = 416
        Height = 153
        Columns = 3
        Items.Strings = (
          'dolphin'#55357#56364
          'shark'#55358#56712
          'turtle'#55357#56354
          'penguin'#55357#56359
          'whale'#55357#56371
          'fish'#55357#56352)
        TabOrder = 7
        OnClick = rgpadoptClick
      end
      object pnlani1: TPanel
        Left = 49
        Top = 327
        Width = 109
        Height = 33
        Caption = 'dolphin'#55357#56364
        ParentBackground = False
        TabOrder = 6
      end
      object pnlani2: TPanel
        Left = 184
        Top = 327
        Width = 109
        Height = 33
        Caption = 'turtle'#55357#56354
        Color = clTeal
        ParentBackground = False
        TabOrder = 8
      end
      object pnlani3: TPanel
        Left = 323
        Top = 327
        Width = 109
        Height = 33
        Caption = 'whale'#55357#56331
        Color = clTeal
        ParentBackground = False
        TabOrder = 9
      end
      object pnlani4: TPanel
        Left = 49
        Top = 391
        Width = 109
        Height = 33
        Caption = 'shark'#55358#56712
        Color = clTeal
        ParentBackground = False
        TabOrder = 10
      end
      object pnlani5: TPanel
        Left = 184
        Top = 391
        Width = 109
        Height = 33
        Caption = 'penguin'#55357#56359
        Color = clTeal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 11
      end
      object pnlani6: TPanel
        Left = 323
        Top = 391
        Width = 109
        Height = 33
        Caption = 'fish'#55357#56352
        Color = clTeal
        ParentBackground = False
        TabOrder = 12
      end
      object btnanimalavg: TButton
        Left = 224
        Top = 544
        Width = 171
        Height = 65
        Caption = 'Average'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -27
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = btnanimalavgClick
      end
    end
    object DONATE: TTabSheet
      Caption = 'DONATE'
      ImageIndex = 1
      object imgdonate: TImage
        Left = 5
        Top = -2
        Width = 1084
        Height = 619
      end
      object lbldonate: TLabel
        Left = 366
        Top = 56
        Width = 305
        Height = 31
        Caption = 'Please select BUY or DONATE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -23
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnldonate: TPanel
        Left = 416
        Top = 1
        Width = 225
        Height = 49
        Caption = 'Donate OR Buy'
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -28
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object dbgAnimals: TDBGrid
        Left = 578
        Top = 173
        Width = 466
        Height = 133
        DataSource = dsanimal
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -17
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clTeal
        TitleFont.Height = -19
        TitleFont.Name = 'Yu Gothic UI'
        TitleFont.Style = [fsBold]
      end
      object dbgusers: TDBGrid
        Left = 578
        Top = 372
        Width = 466
        Height = 138
        DataSource = dsusers
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -17
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clTeal
        TitleFont.Height = -19
        TitleFont.Name = 'Yu Gothic UI'
        TitleFont.Style = [fsBold]
      end
      object pnlUsers: TPanel
        Left = 578
        Top = 331
        Width = 185
        Height = 35
        Caption = 'Users '#9733
        Color = clTeal
        ParentBackground = False
        TabOrder = 3
      end
      object pnlmessage: TPanel
        Left = 578
        Top = 112
        Width = 466
        Height = 39
        Caption = 'Please select species before donating '#9733
        Color = clTeal
        ParentBackground = False
        TabOrder = 4
      end
      object pnlmessage2: TPanel
        Left = 27
        Top = 112
        Width = 390
        Height = 39
        Caption = 'Please select species before donating '#9733
        Color = clTeal
        ParentBackground = False
        TabOrder = 5
      end
      object btndonate: TButton
        Left = 746
        Top = 529
        Width = 153
        Height = 45
        Caption = 'Donate'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -32
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = btndonateClick
      end
      object btnbuy2: TButton
        Left = 110
        Top = 529
        Width = 153
        Height = 45
        Caption = 'Buy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -32
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = btnbuy2Click
      end
      object Panel3: TPanel
        Left = 3
        Top = 184
        Width = 414
        Height = 326
        TabOrder = 8
        object rgpdonate: TRadioGroup
          Left = 2
          Top = 0
          Width = 416
          Height = 329
          Columns = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -20
          Font.Name = 'Yu Gothic UI'
          Font.Style = []
          Items.Strings = (
            'dolphin'
            'shark'
            'turtle'
            'penguin'
            'whale'
            'fish')
          ParentFont = False
          TabOrder = 0
          OnClick = rgpdonateClick
        end
        object pnldolphimg: TPanel
          Left = 24
          Top = 93
          Width = 100
          Height = 25
          Caption = 'dolphin'#55357#56364
          Color = clTeal
          ParentBackground = False
          TabOrder = 1
        end
        object pnlsharkimg: TPanel
          Left = 34
          Top = 239
          Width = 100
          Height = 25
          Caption = 'shark'#55358#56712
          Color = clTeal
          ParentBackground = False
          TabOrder = 2
        end
        object pnlpenguinimg: TPanel
          Left = 160
          Top = 239
          Width = 100
          Height = 25
          Caption = 'penguin'#55357#56359
          Color = clTeal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
        end
        object pnlturtleimg: TPanel
          Left = 160
          Top = 93
          Width = 100
          Height = 25
          Caption = 'turtle'#55357#56354
          Color = clTeal
          ParentBackground = False
          TabOrder = 4
        end
        object pnlwhaleimg: TPanel
          Left = 299
          Top = 93
          Width = 100
          Height = 25
          Caption = 'whale'#55357#56331
          Color = clTeal
          ParentBackground = False
          TabOrder = 5
        end
        object pnlfishimg: TPanel
          Left = 299
          Top = 239
          Width = 100
          Height = 25
          Caption = 'fish'#55357#56352
          Color = clTeal
          ParentBackground = False
          TabOrder = 6
        end
        object pnlanimalselect1: TPanel
          Left = 24
          Top = 0
          Width = 385
          Height = 95
          Color = clTeal
          ParentBackground = False
          TabOrder = 7
          object imgdonate1: TImage
            Left = 10
            Top = 5
            Width = 90
            Height = 90
          end
          object imgdonate3: TImage
            Left = 146
            Top = 5
            Width = 90
            Height = 90
          end
          object imgdonate5: TImage
            Left = 285
            Top = 5
            Width = 90
            Height = 90
          end
        end
        object pnlanimalselect2: TPanel
          Left = 24
          Top = 144
          Width = 385
          Height = 89
          Color = clTeal
          ParentBackground = False
          TabOrder = 8
          object imgdonate4: TImage
            Left = 146
            Top = -1
            Width = 90
            Height = 90
          end
          object imgdonate6: TImage
            Left = 285
            Top = -1
            Width = 90
            Height = 90
          end
          object imgdonate2: TImage
            Left = 10
            Top = -1
            Width = 90
            Height = 90
          end
        end
      end
    end
    object ADMIN: TTabSheet
      Caption = 'ADMIN'
      ImageIndex = 2
      object imgadmin: TImage
        Left = 0
        Top = 0
        Width = 1089
        Height = 617
      end
      object DBGusersadmin: TDBGrid
        Left = 465
        Top = 16
        Width = 605
        Height = 147
        DataSource = dsusers
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -17
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clTeal
        TitleFont.Height = -19
        TitleFont.Name = 'Yu Gothic UI'
        TitleFont.Style = [fsBold]
      end
      object DBGanimalsadmin: TDBGrid
        Left = 465
        Top = 193
        Width = 608
        Height = 161
        DataSource = dsanimal
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -17
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clTeal
        TitleFont.Height = -19
        TitleFont.Name = 'Yu Gothic UI'
        TitleFont.Style = [fsBold]
      end
      object cbxadmin: TComboBox
        Left = 18
        Top = 85
        Width = 363
        Height = 62
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -40
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'Select what to do'
        OnChange = cbxadminChange
        Items.Strings = (
          'update user'
          'update price'
          'add animal'
          'remove animal')
      end
      object pnlupdateuser: TPanel
        Left = 21
        Top = 186
        Width = 438
        Height = 428
        TabOrder = 3
        object shpupdateuserinfo: TShape
          Left = -3
          Top = 0
          Width = 226
          Height = 417
          Pen.Style = psClear
          Shape = stRoundRect
        end
        object shpupdateuser: TShape
          Left = 229
          Top = 5
          Width = 208
          Height = 300
          Pen.Style = psClear
          Shape = stRoundRect
        end
        object lblupdateusername: TLabel
          Left = 245
          Top = 11
          Width = 183
          Height = 30
          Caption = 'Update Username '
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -22
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUpdateuserinfo: TLabel
          Left = 0
          Top = 5
          Width = 214
          Height = 37
          Caption = 'Update User Info '
          Color = clActiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lblusernameadmin: TLabel
          Left = 0
          Top = 57
          Width = 161
          Height = 31
          Caption = 'Enter username'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -23
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblupdateusernew: TLabel
          Left = 245
          Top = 57
          Width = 174
          Height = 25
          Caption = 'Enter new username'
        end
        object lblupdateuserold: TLabel
          Left = 245
          Top = 152
          Width = 166
          Height = 25
          Caption = 'Enter old username'
        end
        object edtnewusername: TEdit
          Left = 245
          Top = 88
          Width = 188
          Height = 33
          TabOrder = 0
        end
        object btnupdateusername: TButton
          Left = 245
          Top = 248
          Width = 185
          Height = 41
          Caption = 'Update Username '#9733' '
          TabOrder = 1
          OnClick = btnupdateusernameClick
        end
        object edtoldusername: TEdit
          Left = 245
          Top = 183
          Width = 185
          Height = 33
          TabOrder = 2
        end
        object edtusernameupdate: TEdit
          Left = 3
          Top = 94
          Width = 174
          Height = 33
          TabOrder = 3
          OnClick = edtusernameupdateClick
          OnMouseEnter = edtusernameupdateMouseEnter
        end
        object pnlupdateusershow: TPanel
          Left = 3
          Top = 152
          Width = 211
          Height = 265
          TabOrder = 4
          object lblnameadmin: TLabel
            Left = 12
            Top = 5
            Width = 144
            Height = 28
            Caption = 'Enter Full Name'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -20
            Font.Name = 'Yu Gothic UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblfeeadmin: TLabel
            Left = 12
            Top = 70
            Width = 84
            Height = 28
            Caption = 'Enter Fee'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -20
            Font.Name = 'Yu Gothic UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblageadmin: TLabel
            Left = 12
            Top = 135
            Width = 90
            Height = 25
            Caption = 'Select Age'
          end
          object edtadminname: TEdit
            Left = 12
            Top = 31
            Width = 145
            Height = 33
            TabOrder = 0
            OnMouseEnter = edtadminnameMouseEnter
          end
          object edtadminfee: TEdit
            Left = 12
            Top = 96
            Width = 145
            Height = 33
            TabOrder = 1
            OnMouseEnter = edtadminfeeMouseEnter
          end
          object sedage: TSpinEdit
            Left = 12
            Top = 166
            Width = 145
            Height = 36
            MaxValue = 100
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object btnupdateuserall: TButton
            Left = 12
            Top = 215
            Width = 193
            Height = 33
            Caption = 'Update User Info  '#9733' '
            TabOrder = 3
            OnClick = btnupdateuserallClick
          end
        end
        object pnlupdateuserinstruction: TPanel
          Left = -3
          Top = 133
          Width = 204
          Height = 138
          Caption = ' '
          TabOrder = 5
          object lblupdateuserinstruction: TLabel
            Left = 77
            Top = 23
            Width = 29
            Height = 25
            Caption = ' '#9733' '
          end
        end
      end
      object pnladdani: TPanel
        Left = 457
        Top = 360
        Width = 232
        Height = 148
        TabOrder = 4
        object shpupdateprice: TShape
          Left = 8
          Top = 8
          Width = 209
          Height = 129
          Pen.Style = psClear
          Shape = stRoundRect
        end
        object btnupdateprice: TButton
          Left = 16
          Top = 72
          Width = 185
          Height = 41
          Caption = 'Update Price'
          TabOrder = 0
          OnClick = btnupdatepriceClick
        end
        object cbxplushprice: TComboBox
          Left = 16
          Top = 15
          Width = 185
          Height = 33
          TabOrder = 1
          Text = 'Select plush type'
          Items.Strings = (
            'dolphin'#55357#56364
            'shark'#55358#56712
            'turtle'#55357#56354
            'penguin'#55357#56359
            'whale'#55357#56331
            'fish'#55357#56352)
        end
      end
      object pnlupdateprice: TPanel
        Left = 695
        Top = 360
        Width = 391
        Height = 225
        TabOrder = 5
        object shpaddanimal: TShape
          Left = 8
          Top = 8
          Width = 377
          Height = 201
          Pen.Style = psClear
          Shape = stRoundRect
        end
        object lbladdani: TLabel
          Left = 17
          Top = 54
          Width = 176
          Height = 28
          Caption = 'Enter animal name '
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -20
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtanimalname: TEdit
          Left = 17
          Top = 88
          Width = 184
          Height = 36
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -20
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = 'Enter Animal Name'
          OnClick = edtanimalnameClick
        end
        object btnaddanimal: TButton
          Left = 232
          Top = 154
          Width = 145
          Height = 41
          Caption = 'Add Animal'
          TabOrder = 1
          OnClick = btnaddanimalClick
        end
        object btnremoveanimal: TButton
          Left = 15
          Top = 154
          Width = 146
          Height = 41
          Caption = 'Remove Animal'
          TabOrder = 2
          OnClick = btnremoveanimalClick
        end
        object cbxnewanimal: TComboBox
          Left = 16
          Top = 15
          Width = 185
          Height = 33
          TabOrder = 3
          Text = 'Select species'
          Items.Strings = (
            'dolphin'#55357#56364
            'shark'#55358#56712
            'turtle'#55357#56354
            'penguin'#55357#56359
            'whale'#55357#56371
            'fish'#55357#56352)
        end
        object seddanger: TSpinEdit
          Left = 312
          Top = 112
          Width = 57
          Height = 36
          MaxValue = 4
          MinValue = 1
          TabOrder = 4
          Value = 1
        end
        object pnlanimalendangered: TPanel
          Left = 207
          Top = 17
          Width = 170
          Height = 89
          TabOrder = 5
          object lblendangeredanimal: TLabel
            Left = -80
            Top = 7
            Width = 10
            Height = 25
            Caption = 'x'
          end
        end
      end
      object pnladminlabel: TPanel
        Left = 3
        Top = 3
        Width = 338
        Height = 65
        Caption = 'Update , remove or add information'
        TabOrder = 6
      end
      object redoutput: TRichEdit
        Left = 695
        Top = 360
        Width = 385
        Height = 225
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -20
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  object tblanimals: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=PAT.accdb;Persist ' +
      'Security Info=False'
    CursorType = ctStatic
    TableName = 'tblAnimals'
    Left = 40
    Top = 656
  end
  object tblusers: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Pat.accdb;Persist ' +
      'Security Info=False'
    CursorType = ctStatic
    TableName = 'tblUsers'
    Left = 88
    Top = 656
  end
  object qryanimal: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=PAT.accdb;Persist ' +
      'Security Info=False'
    CursorType = ctStatic
    DataSource = dsusers
    Parameters = <>
    SQL.Strings = (
      'SELECT*FROM tblanimals')
    Left = 136
    Top = 656
  end
  object qryusers: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=PAT.accdb;Persist ' +
      'Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT*FROM tblusers')
    Left = 192
    Top = 656
  end
  object dsanimal: TDataSource
    DataSet = qryanimal
    Left = 256
    Top = 656
  end
  object dsusers: TDataSource
    DataSet = qryusers
    Left = 312
    Top = 656
  end
end
