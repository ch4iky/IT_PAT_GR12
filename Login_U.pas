unit Login_U;
 // INSERT UPDATE AND DELETE
 //  adoquery.active := false
 //  adoquery.sql.text:= 'delete, insert, update'
 //   adoquery.execSQL;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Samples.Spin, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Data.Win.ADODB,math,Main_u,jpeg,DateUtils,OOP,
  Vcl.Buttons;

type
  Tlogin = class(TForm)
    pgctrllogin: TPageControl;
    tslogin: TTabSheet;
    Panel1: TPanel;
    pnllogin1: TPanel;
    imglogin: TImage;
    pnllogin3: TPanel;
    pnlLogin: TPanel;
    lbluserName: TLabel;
    lblBirthdate: TLabel;
    edtName: TEdit;
    dtpLogin: TDateTimePicker;
    btnlogin1: TButton;
    PageControl2: TPageControl;
    tssignup: TTabSheet;
    pnllogin2: TPanel;
    imgsignup: TImage;
    pnlsignuplabel: TPanel;
    pnlsignup: TPanel;
    lblName2: TLabel;
    lblBirthdate2: TLabel;
    edtName2: TEdit;
    dtpsignup: TDateTimePicker;
    btnsignup1: TButton;
    tswelcome: TTabSheet;
    imgwelcome: TImage;
    lblwelcome: TLabel;
    cbxwelcome: TComboBox;
    pnllabel: TPanel;
    btnpicture: TButton;
    pnlwelcomeselect: TPanel;
    pnlinstruct: TPanel;
    shplogin1: TShape;
    shpsign: TShape;
    pnllogininstuct: TPanel;
    shplogin3: TShape;
    shpsign1: TShape;
    shp1: TShape;
    shp19: TShape;
    shp2: TShape;
    shp16: TShape;
    shp9: TShape;
    shp11: TShape;
    shp12: TShape;
    shp14: TShape;
    shp3: TShape;
    shp5: TShape;
    shp8: TShape;
    shp13: TShape;
    shp20: TShape;
    shp18: TShape;
    shp17: TShape;
    shp15: TShape;
    shp7: TShape;
    shp10: TShape;
    shp6: TShape;
    shp4: TShape;
    shp21: TShape;
    shp22: TShape;
    shp23: TShape;
    shp24: TShape;
    shp25: TShape;
    dsusers: TDataSource;
    dsanimals: TDataSource;
    tblanimals: TADOTable;
    tblusers: TADOTable;
    lblpictures: TLabel;
    gridnewuser: TDBGrid;
    qryusers: TADOQuery;
    btngotologin: TButton;
    pnlusername: TPanel;
    lblusernamesign: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnlogin1Click(Sender: TObject);
    procedure btnsignup1Click(Sender: TObject);
    procedure btnpictureClick(Sender: TObject);
    procedure cbxwelcomeChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MakeRounded(Control: TWinControl);//makes components rounded, for the sake of the the prettiness of the form  http://theprofessionalspoint.blogspot.com/2012/11/how-to-make-rounded-corners-of-controls.html
    procedure FormShow(Sender: TObject);
    procedure btngotologinClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);




   // procedure Button1Click(Sender: TObject);
  private
  sUserName :string;
     arrpicture :array[1..6]of Timage; //array of images
      
    { Private declarations }
  public
   icount:integer;
   usernamelogin:string;
   useragelogin:integer;
     //use oop for the username being used in my main and login forms
    { Public declarations }
  end;


var
  login: Tlogin;
  objOOP:TOOP;

implementation

{$R *.dfm}

procedure Tlogin.btngotologinClick(Sender: TObject);
begin
pgctrllogin.ActivePageIndex:=0;
end;

procedure Tlogin.btnlogin1Click(Sender: TObject);
var
sname:string;
iage:integer;
iuserID:integer;
bflag:boolean;
begin

sname := edtname.text;
  bflag:=false;
  iage:=yearof(date)-yearof(dtplogin.DateTime);
//extracting the username/password and testing if they match
 tblusers.first;
   while NOT(tblUsers.eof) do
   begin  //The user will enter their entire birthdate , it will be extracted and the year will be extracted and a calcultion will be doen to dtermine their age like stored in the usertbl
         // find a compeonent with a default value that will show the user while theyre typing the value in AND what the format is of the value that was entered
      if (tblusers['Username']=sname) AND (tblusers['age']= iage) then
        begin //looping through the user table until either the user info entred is found or the user is informed tht the info is wrong/doesnt exist
          objOOP:=TOOP.createlogin(iage,sname);
          usernamelogin:=sname;
          useragelogin:=iage;
            showmessage('logged in');//if the users login details match with the data in the database this message will appear
            main.Show;
          bflag:=true;
        end;
      tblusers.next;
   end;

      if bflag=false then
      begin
        showmessage('Login not found , please sign up or enter username and birthdate correctly :3');
      end;
       edtname.Clear;

    {try       //code from chatgpt that did not work
    main.Setusername(username); // Pass the variable value to the method
    main.Show;
  finally
    main.Free;
  end;  }
end;

procedure Tlogin.btnpictureClick(Sender: TObject);
var
i,k,j : integer;
begin
imgwelcome.SendToBack;
inc(icount);
         if icount =7 then
         begin
          for k := 1 to 6 do
            arrpicture[k].Free;   //frees images after each round

          icount:=1;
         end;

         arrpicture[icount]:= Timage.Create(self); //the specifications of the images
         arrpicture[icount].parent:=tswelcome;
         arrpicture[icount].width:=1345;
         arrpicture[icount].height:=750;
         arrpicture[icount].left:=-3;
         arrpicture[icount].top:=0;
         arrpicture[icount].picture.LoadFromFile(inttostr(icount) + '.jpg');
         arrpicture[icount].SendToBack;


end;

procedure Tlogin.btnsignup1Click(Sender: TObject);
var
iage:integer;
ssurname:string;
sname:string;
sbirthdate,sbirthdate2:string;
i :integer;
iplace:integer;
begin
sname :=edtName2.text;
sbirthdate2:= datetostr(dtpsignup.DateTime);//use date picker to ensure correct values are added
sbirthdate :=sbirthdate2[3]+sbirthdate2[2];//switches the two digits of the birth year around for the username
iage:=yearof(date)-yearof(dtpsignup.DateTime);//extract system date year and extract the year born and then subtract it from system date

for i := 1 to Length(sname) do
  begin
    if sname[i] in ['0'..'9'] then   //Names are not allowed to have numbers in them
    begin
     edtname2.clear;
     showmessage('Names May  Not Include Numbers');
     exit;
     //exit process to not repeat the showmessage
    end;
  end;


  //use string manipulation
  //extracts different digits and makes use of randomrange to give unique values to new usernames
   iplace := POS(' ',sname);
   if iplace <1 then
   begin
     showmessage('Please enter name and surname SEPERATED by a SPACE :)') ;//tells user that they need a space
     exit;
     //stops the process when wrong values are entered
   end;
   ssurname := COPY(sname,iplace-1,1) ;
   susername:= sname[1]+ ssurname+inttostr(randomrange(100,999))+sbirthdate{(last two digits switched around)};
   tblusers.First;
   while NOT(tblUsers.eof) do
   begin
      if (tblusers['username']=susername)then
         begin //do the process until the randomrange gives a unique value lol
           susername:= sname[1]+ ssurname+inttostr(randomrange(100,999))+sbirthdate{(last two digits switched around)};
         end;
    tblusers.next;
   end;
 //wont update my database ???
   tblusers.insert;   //insert the new users info , not everything , the rest will be added after they go to the login screen and add new info
   tblusers['Full_Name']:=sname;
   tblusers['Age']:=inttostr(iage);
   tblusers['Username']:=suserName;
   tblusers.post;
   edtname.Text:=susername;
  pnlusername.Visible:=true;
  btngotologin.Visible:=true;



end;

procedure Tlogin.Button1Click(Sender: TObject);
var
icount:integer;//icount for the oop so that the correct tabsheet is shown when the main form is shown
begin
main.Show;
end;

procedure Tlogin.Button2Click(Sender: TObject);
var
sname:string;
iage:integer;
begin

sname := edtname.text;

  iage:=yearof(date)-yearof(dtplogin.DateTime);
 objOOP:=TOOP.createlogin(iage,sname);
 showmessage(objOOP.getuser+inttostr(objOOP.getage));
end;

procedure Tlogin.cbxwelcomeChange(Sender: TObject);
var
spassword:string;

begin
icount:=0;//for users to donate/adopt
if cbxwelcome.ItemIndex=0 then
  begin
    pgctrllogin.ActivePageIndex:=0;
  end;

 if cbxwelcome.ItemIndex=1 then
  begin
    pgctrllogin.ActivePageIndex:=1;
  end;

  if cbxwelcome.ItemIndex=2 then
  begin
  showmessage('admin password=1234');
   spassword:= inputbox('Enter Admin password','','');
    if spassword='1234' then
    begin
      //objOOP.getcount; //for admin , the admin page will open first if the count is 1
      main.show;
    end
      else
     showmessage('incorrect admin password :P'); // why is this displaying when i click on the other options
  end;

end;

procedure Tlogin.FormCreate(Sender: TObject);
var
  I: Integer;
begin
pnlusername.Visible:=false;
icount:=0;//for array of images

pnlusername.Brush.Color:=$FF8080;
pgctrllogin.ActivePageIndex:=2;
btngotologin.Visible:=false;
//idk if i should structure this but this is all code for the interface

 {dynamic array of objects or 24 lines of code i ask myself less than a week before the due date , 24 lines of code it is
for I := 1 to 24 do
begin

end;  }



with lblusernamesign do begin
Align := alClient;
   Alignment := taCenter;
   AutoSize := False;
   Layout := tlCenter;
   WordWrap := True;
   font.Color:= $FFFFD5;

   Caption := 'See new user info ' + #13 + #10 + 'on the grid :D';
end;

with lblpictures do begin
   Align := alClient;
   Alignment := taCenter;
   AutoSize := False;
   Layout := tlCenter;
   WordWrap := True;
   font.Color:= $FFFFD5;

   Caption := 'Click button to ' + #13 + #10 + 'see other animals';
end;


{imgwelcome.Picture.LoadFromFile('welcome2.jpg');
imgwelcome.Stretch:=true;  wont work ?????}
 lblwelcome.font.Color:=$FF138F;
 pnlwelcomeselect.Brush.Color:=$FF8080;
 pnlwelcomeselect.Font.Color:=$FF8080;

  shp1.Brush.Color:=$FFFFD5;
  shp2.Brush.Color:=$FF8080;
  shp3.Brush.Color:=$FFFFD5;
  shp4.Brush.Color:=$FFFFD5;
  shp5.Brush.Color:=$FFFFD5;
  shp6.Brush.Color:=$FF8080;
  shp7.Brush.Color:=$FF8080;
  shp8.Brush.Color:=$FFFFD5;
  shp9.Brush.Color:=$FFFFD5;
  shp10.Brush.Color:=$FF8080;
  shp11.Brush.Color:=$FFFFD5;
  shp12.Brush.Color:=$FFFFD5;
  shp13.Brush.Color:=$FF8080;
  shp14.Brush.Color:=$FFFFD5;
  shp15.Brush.Color:=$FF8080;
  shp16.Brush.Color:=$FF8080;
  shp17.Brush.Color:=$FF8080;
  shp18.Brush.Color:=$FFFFD5;
  shp19.Brush.Color:=$FFFFD5;
  shp20.Brush.Color:=$FF8080;
  shp21.Brush.Color:=$FFFFD5;
  shp22.Brush.Color:=$FF8080;
  shp23.Brush.Color:=$FFFFD5;
  shp24.Brush.Color:=$FF8080;
  shp25.Brush.Color:=$FFFFD5;


{imgwelcome.Picture.LoadFromFile('welcome2.jpg');
imgwelcome.Stretch:=true; }
pnllogininstuct.Font.Color:=$FFFFD5;
imgsignup.Picture.LoadFromFile('aqua5.jpg'); //adds background image to the donate panel
imgsignup.stretch:=true;

imglogin.Picture.LoadFromFile('aqua4.jpg'); //adds background image to the donate panel
imglogin.Stretch:=true;

dtpLogin.Font.Color:=$FFFFD5;//purple
imglogin.stretch:=true;
pnllogin3.brush.Color:=$FF8080;//blue
pnllogin.brush.Color:= $FF8080; //purple
pnllogin3.Font.Color:= $FFFFD5;//light blue
lbluserName.Font.Color:=$FFFFD5;
lblBirthdate.Font.Color:=$FFFFD5;
shplogin1.Brush.Color:= $FEBBAF;
lblName2.Font.Color:=$FFFFD5;
lblBirthdate2.Font.Color:=$FFFFD5;
pnlsignup.Brush.Color:=$FF8080;
pnlsignuplabel.Font.Color:=$FFFFD5;
shpsign.Brush.Color:=$E88C75;
pnlinstruct.font.Color:= $FFFFD5;
shplogin3.Brush.Color:=$FFFFD5;
shpsign1.Brush.Color:=$FFFFD5;
end;


procedure Tlogin.FormShow(Sender: TObject);
begin

begin
  MakeRounded(pnllogin);
  MakeRounded(edtname);
  MakeRounded(dtplogin);
  MakeRounded(btnlogin1);
  MakeRounded(pnllogin3);
  MakeRounded(pnlsignuplabel);
  MakeRounded(pnlinstruct);
  MakeRounded(pnlsignup);
  MakeRounded(btnsignup1);
  MakeRounded(edtName2);
  MakeRounded(dtpsignup);
  Makerounded(pnlwelcomeselect);
  Makerounded(btnpicture);
  Makerounded(pnllabel);

end;
end;
   procedure Tlogin.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(r, - 5, - 5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;

  end;

end;



end.
