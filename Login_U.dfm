object login: Tlogin
  Left = 0
  Top = 0
  Caption = 'login'
  ClientHeight = 610
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object pgctrllogin: TPageControl
    Left = 0
    Top = -4
    Width = 1001
    Height = 601
    ActivePage = tssignup
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Yu Gothic UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object tslogin: TTabSheet
      Caption = 'LOGIN'
      object Panel1: TPanel
        Left = 3
        Top = -43
        Width = 1017
        Height = 577
        TabOrder = 0
        object pnllogin1: TPanel
          Left = 8
          Top = 24
          Width = 1009
          Height = 565
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          object shplogin1: TShape
            Left = 8
            Top = 40
            Width = 953
            Height = 505
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object imglogin: TImage
            Left = 40
            Top = 64
            Width = 881
            Height = 457
          end
          object shplogin3: TShape
            Left = 328
            Top = 208
            Width = 305
            Height = 193
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object pnllogin3: TPanel
            Left = 368
            Top = 80
            Width = 250
            Height = 58
            Caption = 'Log In '#55357#56351
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -27
            Font.Name = 'Yu Gothic UI'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object pnlLogin: TPanel
            Left = 344
            Top = 198
            Width = 289
            Height = 185
            Color = clSkyBlue
            ParentBackground = False
            TabOrder = 1
            object lbluserName: TLabel
              Left = 8
              Top = 0
              Width = 114
              Height = 32
              Caption = 'UserName'
            end
            object lblBirthdate: TLabel
              Left = 16
              Top = 84
              Width = 102
              Height = 32
              Caption = 'Birthdate'
            end
            object edtName: TEdit
              Left = 16
              Top = 38
              Width = 257
              Height = 40
              TabOrder = 0
            end
            object dtpLogin: TDateTimePicker
              Left = 16
              Top = 122
              Width = 257
              Height = 47
              Date = 45053.000000000000000000
              Time = 0.691670381944277300
              TabOrder = 1
            end
          end
          object btnlogin1: TButton
            Left = 368
            Top = 437
            Width = 226
            Height = 50
            Caption = 'LOG IN '
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -27
            Font.Name = 'Yu Gothic UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = btnlogin1Click
          end
          object pnllogininstuct: TPanel
            Left = 328
            Top = 152
            Width = 305
            Height = 26
            Caption = 'Please enter username and birthdate  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -16
            Font.Name = 'Yu Gothic UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
        end
        object PageControl2: TPageControl
          Left = 8
          Top = 32
          Width = 17
          Height = 1
          TabOrder = 1
        end
      end
    end
    object tssignup: TTabSheet
      Caption = 'SIGN_UP'
      ImageIndex = 1
      object pnllogin2: TPanel
        Left = 0
        Top = 3
        Width = 990
        Height = 551
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object shpsign: TShape
          Left = 16
          Top = 24
          Width = 945
          Height = 505
          Pen.Style = psClear
          Shape = stRoundRect
        end
        object imgsignup: TImage
          Left = 48
          Top = 40
          Width = 865
          Height = 465
        end
        object shpsign1: TShape
          Left = 120
          Top = 216
          Width = 305
          Height = 201
          Pen.Style = psClear
          Shape = stRoundRect
        end
        object pnlsignuplabel: TPanel
          Left = 168
          Top = 72
          Width = 250
          Height = 49
          Caption = 'Sign Up '#55357#56351
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -27
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object pnlsignup: TPanel
          Left = 160
          Top = 192
          Width = 281
          Height = 201
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 1
          object lblName2: TLabel
            Left = 19
            Top = 0
            Width = 109
            Height = 32
            Caption = 'Full Name'
          end
          object lblBirthdate2: TLabel
            Left = 20
            Top = 84
            Width = 102
            Height = 32
            Caption = 'Birthdate'
          end
          object edtName2: TEdit
            Left = 16
            Top = 38
            Width = 241
            Height = 40
            Color = clCream
            TabOrder = 0
          end
          object dtpsignup: TDateTimePicker
            Left = 16
            Top = 122
            Width = 249
            Height = 40
            Date = 45053.000000000000000000
            Time = 0.691910821762576200
            TabOrder = 1
          end
        end
        object btnsignup1: TButton
          Left = 180
          Top = 434
          Width = 177
          Height = 44
          Caption = 'SIGN UP '
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -27
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnsignup1Click
        end
        object pnlinstruct: TPanel
          Left = 113
          Top = 144
          Width = 432
          Height = 26
          Caption = 'Please enter name as and surname separated with a space'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -16
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object gridnewuser: TDBGrid
          Left = 472
          Top = 192
          Width = 401
          Height = 201
          DataSource = dsusers
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -17
          Font.Name = 'Yu Gothic UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -24
          TitleFont.Name = 'Yu Gothic UI Semibold'
          TitleFont.Style = [fsBold]
        end
        object btngotologin: TButton
          Left = 512
          Top = 433
          Width = 133
          Height = 49
          Caption = 'LOGIN'
          TabOrder = 5
          OnClick = btngotologinClick
        end
        object pnlusername: TPanel
          Left = 576
          Top = 96
          Width = 225
          Height = 78
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 6
          object lblusernamesign: TLabel
            Left = 8
            Top = 8
            Width = 164
            Height = 32
            Caption = 'see user name '
          end
        end
      end
    end
    object tswelcome: TTabSheet
      Caption = 'WELCOME'
      ImageIndex = 2
      object imgwelcome: TImage
        Left = 3
        Top = 0
        Width = 990
        Height = 553
      end
      object shp1: TShape
        Left = 957
        Top = 136
        Width = 68
        Height = 97
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp19: TShape
        Left = -32
        Top = -7
        Width = 65
        Height = 105
        Pen.Color = clSkyBlue
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp2: TShape
        Left = 519
        Top = 538
        Width = 41
        Height = 41
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp16: TShape
        Left = 216
        Top = 280
        Width = 25
        Height = 17
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp9: TShape
        Left = 720
        Top = 352
        Width = 25
        Height = 9
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp11: TShape
        Left = 672
        Top = 400
        Width = 25
        Height = 25
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp12: TShape
        Left = 600
        Top = 0
        Width = 49
        Height = 57
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp14: TShape
        Left = 136
        Top = 48
        Width = 33
        Height = 33
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp3: TShape
        Left = 256
        Top = 456
        Width = 97
        Height = 81
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp5: TShape
        Left = 632
        Top = 136
        Width = 41
        Height = 41
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp8: TShape
        Left = 80
        Top = 168
        Width = 41
        Height = 41
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp13: TShape
        Left = 736
        Top = 16
        Width = 65
        Height = 65
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp20: TShape
        Left = 256
        Top = 16
        Width = 17
        Height = 18
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp18: TShape
        Left = 480
        Top = 3
        Width = 33
        Height = 31
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp17: TShape
        Left = 400
        Top = 0
        Width = 34
        Height = 33
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp15: TShape
        Left = 519
        Top = -7
        Width = 58
        Height = 64
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp7: TShape
        Left = 480
        Top = 40
        Width = 33
        Height = 33
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp10: TShape
        Left = 440
        Top = 3
        Width = 49
        Height = 54
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp6: TShape
        Left = 400
        Top = 24
        Width = 65
        Height = 57
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp4: TShape
        Left = 368
        Top = 3
        Width = 41
        Height = 41
        Pen.Style = psClear
        Shape = stCircle
      end
      object lblwelcome: TLabel
        Left = 384
        Top = 3
        Width = 247
        Height = 60
        Caption = 'WELCOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -47
        Font.Name = 'Yu Gothic'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object shp21: TShape
        Left = 480
        Top = 360
        Width = 49
        Height = 33
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp22: TShape
        Left = 768
        Top = 152
        Width = 33
        Height = 9
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp23: TShape
        Left = 16
        Top = 423
        Width = 49
        Height = 41
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp24: TShape
        Left = 864
        Top = 296
        Width = 41
        Height = 25
        Pen.Style = psClear
        Shape = stCircle
      end
      object shp25: TShape
        Left = 296
        Top = 105
        Width = 57
        Height = 56
        Pen.Style = psClear
        Shape = stCircle
      end
      object cbxwelcome: TComboBox
        Left = 368
        Top = 272
        Width = 209
        Height = 73
        Color = 16767918
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -48
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'login'
        OnChange = cbxwelcomeChange
        Items.Strings = (
          'login'
          'sign up '
          'admin')
      end
      object pnllabel: TPanel
        Left = 679
        Top = 381
        Width = 226
        Height = 68
        Color = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -20
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object lblpictures: TLabel
          Left = 24
          Top = 8
          Width = 94
          Height = 28
          Caption = 'lblpictures'
        end
      end
      object btnpicture: TButton
        Left = 840
        Top = 455
        Width = 65
        Height = 60
        Caption = #9733
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -56
        Font.Name = 'Yu Gothic UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnpictureClick
      end
      object pnlwelcomeselect: TPanel
        Left = 156
        Top = 209
        Width = 689
        Height = 41
        Caption = 'please select login , sign up or to go to the admin page '
        TabOrder = 3
      end
    end
  end
  object dsusers: TDataSource
    DataSet = tblusers
    Left = 56
    Top = 536
  end
  object dsanimals: TDataSource
    DataSet = tblanimals
    Left = 120
    Top = 528
  end
  object tblanimals: TADOTable
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Password="";Data Source=PAT.ac' +
      'cdb;Persist Security Info=True'
    CursorType = ctStatic
    TableName = 'tblAnimals'
    Left = 168
    Top = 536
  end
  object tblusers: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=PAT.accdb;Persist ' +
      'Security Info=False'
    CursorType = ctStatic
    Filtered = True
    EnableBCD = False
    TableName = 'tblUsers'
    Left = 208
    Top = 536
  end
  object qryusers: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=PAT.accdb;Persist ' +
      'Security Info=False'
    CursorType = ctStatic
    DataSource = dsusers
    Parameters = <>
    SQL.Strings = (
      'SELECT* FROM tblusers')
    Left = 284
    Top = 538
  end
end
