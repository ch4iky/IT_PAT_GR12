unit Main_u;//Megan Geldenhuys
//I had to code a color picker for delphi specifically because
//the hexadecimal codes all other programs use and the ones delphi
//use are NOT the same 


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Samples.Spin, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,math, Data.Win.ADODB,Jpeg,OOP;

type
  Tmain = class(TForm)
    pgctrl: TPageControl;
    TabSheet1: TTabSheet;
    btnAdopt: TButton;
    dbgUsersadopt: TDBGrid;
    DBGanimalsadopt: TDBGrid;
    pnladopt2: TPanel;
    DONATE: TTabSheet;
    imgdonate: TImage;
    lbldonate: TLabel;
    pnldonate: TPanel;
    dbgAnimals: TDBGrid;
    dbgusers: TDBGrid;
    pnlUsers: TPanel;
    pnlmessage: TPanel;
    pnlmessage2: TPanel;
    btndonate: TButton;
    btnbuy2: TButton;
    Panel3: TPanel;
    rgpdonate: TRadioGroup;
    pnldolphimg: TPanel;
    ADMIN: TTabSheet;
    DBGusersadmin: TDBGrid;
    DBGanimalsadmin: TDBGrid;
    cbxadmin: TComboBox;
    pnlupdateuser: TPanel;
    pnladdani: TPanel;
    pnlupdateprice: TPanel;
    edtnewusername: TEdit;
    btnupdateusername: TButton;
    edtoldusername: TEdit;
    lblupdateusername: TLabel;
    edtusernameupdate: TEdit;
    lblUpdateuserinfo: TLabel;
    pnlsharkimg: TPanel;
    pnlpenguinimg: TPanel;
    pnlturtleimg: TPanel;
    pnlwhaleimg: TPanel;
    pnlfishimg: TPanel;
    btnupdateprice: TButton;
    edtanimalname: TEdit;
    btnaddanimal: TButton;
    imgadmin: TImage;
    tblanimals: TADOTable;
    tblusers: TADOTable;
    qryanimal: TADOQuery;
    qryusers: TADOQuery;
    dsanimal: TDataSource;
    dsusers: TDataSource;
    btnremoveanimal: TButton;
    cbxplushprice: TComboBox;
    imgadopt: TImage;
    shpupdateuser: TShape;
    cbxnewanimal: TComboBox;
    pnlanimalselect1: TPanel;
    imgdonate1: TImage;
    imgdonate3: TImage;
    pnlanimalselect2: TPanel;
    imgdonate4: TImage;
    imgdonate6: TImage;
    imgdonate2: TImage;
    imgdonate5: TImage;
    seddanger: TSpinEdit;
    lblusernameadmin: TLabel;
    lbladdani: TLabel;
    lblupdateusernew: TLabel;
    lblupdateuserold: TLabel;
    lbladopt: TLabel;
    edtadoptname: TEdit;
    lbladoptname: TLabel;
    pnladoptanino: TPanel;
    lbladoptanimalno: TLabel;
    lblenteradoptname: TLabel;
    pnlani1: TPanel;
    rgpadopt: TRadioGroup;
    pnlani2: TPanel;
    pnlani3: TPanel;
    pnlani4: TPanel;
    pnlani5: TPanel;
    pnlani6: TPanel;
    pnladminlabel: TPanel;
    shpupdateuserinfo: TShape;
    shpupdateprice: TShape;
    shpaddanimal: TShape;
    pnlupdateusershow: TPanel;
    lblnameadmin: TLabel;
    edtadminname: TEdit;
    lblfeeadmin: TLabel;
    edtadminfee: TEdit;
    lblageadmin: TLabel;
    sedage: TSpinEdit;
    btnupdateuserall: TButton;
    pnlupdateuserinstruction: TPanel;
    lblupdateuserinstruction: TLabel;
    pnlanimalendangered: TPanel;
    lblendangeredanimal: TLabel;
    redoutput: TRichEdit;
    btnanimalavg: TButton;
    procedure btnBuyplushClick(Sender: TObject);
    procedure btnDonate2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btndonateClick(Sender: TObject);
    procedure btnAdoptClick(Sender: TObject);
    procedure btnbuy2Click(Sender: TObject);
    procedure edtadminnameMouseEnter(Sender: TObject);
    procedure cbxadminChange(Sender: TObject);
    procedure btnupdateusernameClick(Sender: TObject);
    procedure btnupdateuserallClick(Sender: TObject);
    procedure btnaddanimalClick(Sender: TObject);
    procedure btnupdatepriceClick(Sender: TObject);
    procedure edtusernameupdateMouseEnter(Sender: TObject);
    procedure edtadminfeeMouseEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rgpdonateClick(Sender: TObject);
    procedure pgctrlChange(Sender: TObject);
    procedure edtanimalnameClick(Sender: TObject);
    procedure edtusernameupdateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnremoveanimalClick(Sender: TObject);
    procedure MakeRounded(Control: TWinControl);//makes components rounded, for the sake of the the prettiness of the form  http://theprofessionalspoint.blogspot.com/2012/11/how-to-make-rounded-corners-of-controls.html
    procedure btnshowaniClick(Sender: TObject);
    procedure rgpadoptClick(Sender: TObject);
    procedure btnanimalavgClick(Sender: TObject);
 private
  var
  Username:string; //
  icount:integer;
  arrprice : array [0..5]of real;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  main: Tmain;
  objOOP:TOOP;

implementation
Uses Login_U;

{$R *.dfm}


procedure Tmain.edtadminfeeMouseEnter(Sender: TObject);
begin
edtadminfee.Text:='';
end;


procedure Tmain.edtadminnameMouseEnter(Sender: TObject);
begin
edtadminname.Text:='';
end;


procedure Tmain.edtanimalnameClick(Sender: TObject);
begin
edtanimalname.Text:='';
end;

procedure Tmain.edtusernameupdateClick(Sender: TObject);
begin
edtusernameupdate.Text:='' ;
pnlupdateusershow.visible:=true;
pnlupdateuserinstruction.Visible:=false;
end;

procedure Tmain.edtusernameupdateMouseEnter(Sender: TObject);
begin
edtusernameupdate.Text:='' ;
end;

procedure Tmain.btnaddanimalClick(Sender: TObject);
var
sspecies:string;
sanimalname,saniusername:string;

begin
    if cbxnewanimal.ItemIndex=-1  then
  begin
   ShowMessage('please select animal :D');
   exit;
  end;

  if edtanimalname.Text='' then
  begin
    ShowMessage('please enter animal name :D');
    exit;
  end;

    sspecies:=COPY(cbxnewanimal.Items[cbxnewanimal.ItemIndex],1,length(cbxnewanimal.Items[cbxnewanimal.ItemIndex])-2);
    objOOP:=TOOP.createspecies(sspecies);
    sanimalname:=edtanimalname.Text;
    saniusername:=sanimalname[1]+sanimalname[2]+ sanimalname[3]+inttostr(randomrange(0,100));

    tblanimals.First;   //first record
   while NOT(tblanimals.eof) do
   begin
          if UpperCase((tblanimals['animal_name']))=Uppercase(sanimalName) then
         begin
           showmessage('please enter new name, new is already used by another animal');
           edtanimalname.Clear;
           exit;
         end;

      if (tblanimals['AnimalID']=saniusername)then  //checks if the animalID is the same as the newly created one
         begin //do the process until the randomrange gives a unique value lol
           sanimalname:= saniusername[1]+saniusername[2]+ sanimalname[3] +inttostr(randomrange(0,100));//generated a new username if the username are the same
         end;

    tblanimals.next;
   end;


  //new animal
 tblanimals.Insert; //just step 4
 tblanimals['animalId'] :=  saniusername;  //because its an autonumber ,,
 tblanimals['Money_Need']:= floattostr(objOOP.moneycalc);//floattostr(objOOP.moneycalc(sspecies));//calls moneycalc
 tblanimals['species']:=sspecies;
 tblanimals['DangerLvl'] := inttostr(objOOP.determinedangerlvl); //oop method to calculate the danger level
 tblAnimals['Animal_Name']:= sanimalname;
 tblanimals.Post;

 qryanimal.Active:=false ;
 qryanimal.SQL.Text:='SELECT* FROM tblanimals';
 qryanimal.Active:=true ;

end;

procedure Tmain.btnAdoptClick(Sender: TObject);
//mask for password
var
sSpecies:string;
sprice,suser:string;
saniid:string;
susername:string;
iprice:integer;//to update the price incase a user already has one monthly fee
begin
  saniid:=edtadoptname.text;
  sprice:= inputbox('Enter monthly Fee','','R'); //the user chooses their monthly fee when they adopt an animal//the user will choose an animal from the radiogroup and will then be given a random open animal based on the species that they have chosen , if the species that they chose doesnt have any animals left then a message will appear telling them they should chose another animal and it will show whcih species are still available , if all animals are adopted then there will be a message that tells the user that they must eitehr donate or buy a plushy
   sSpecies:= rgpAdopt.Items[rgpadopt.ItemIndex]; //gets the species from radiogroup

             tblanimals.First;
                     while NOT(tblanimals.eof) do
                        begin
                           if  (tblanimals['animalID'] = saniid) then
                            begin
                                tblanimals.edit;
                                 tblanimals['Username']:= login.usernamelogin; //accessor method to get user from login unit
                                     iprice:= tblanimals['Money_collected']+strtoint(sprice);
                                    tblanimals['Money_collected']:=tblanimals['Money_collected']+iprice; //immediately adds the users monthly fee to the animals money_collected field
                                   tblanimals.post;
                                  showmessage('animal adopted'); //shows user that they have adopted the animal

                            end;
                           tblanimals.next; //goes to the next record if the user succesfully adopted an animal bflag will be true and the if will stop
                        end;


   qryusers.Active:=false;
   qryusers.SQL.Text:='UPDATE Tblusers SET [Monthly_Fee]=[Monthly_fee]+'+quotedstr(sprice)+'WHERE username='+quotedstr(login.usernamelogin)+'';//update user table
   qryusers.ExecSQL;

   qryanimal.Active:=false;
   qryanimal.SQL.Text:='SELECT * FROM tblAnimals' ;
   qryanimal.Active:=true;

   qryusers.Active:=false;
   qryusers.SQL.Text:='SELECT username,Monthly_fee FROM tblUsers';//show table
   qryusers.Active:=true;

end;

procedure Tmain.btnanimalavgClick(Sender: TObject);
begin
     qryusers.Active:=false;                         //counts how many usernames there are at the animals name then divides the amount by the monthly fee to get average for the animals adopted
     qryusers.sql.text:='SELECT Username,Animal_Name (COUNT(UserName)/Monthly_Fee) AS [MonthlyAverage] FROM tblusers,tblanimals WHERE (tblusers.userID=tblanimals.userID) GROUP BY UserName,Animal_Name';
     qryusers.Active:=true;
end;

procedure Tmain.btnbuy2Click(Sender: TObject);
var
k ,j:integer;  //looping variables
myfile:textfile;       //textfile
soneline:string;      //used for storing extracted values from textfile
ipos:integer;        //gets the position of the seperator in the textfile
sspecies:string;    //stores the species name
itot :integer;    //total of the species selected for adding all the prices to all the animals
rpriceTot:real;   //price calculated for the species
begin
itot:=0;
rpricetot:= 0;
    if rgpdonate.ItemIndex=-1 then
    begin
      showmessage('please select species before donating :D');//user must select animal before donating
    end;

    // when plush is bought the money needs to be split between the species that was bought
      sspecies:= rgpdonate.Items[rgpdonate.ItemIndex];

      if fileexists('prices2.txt')<>True then
          begin
            rewrite(myfile,'prices2.txt'); //initial values of the animal prices
            writeln('200');
            writeln('200');
            writeln('300');
            writeln('400');
            writeln('400');
            writeln('600');
          end
          else
          assignfile(myfile,'prices2.txt');
          reset(myfile);

           //in the textfile the prices are listed then the animal name , the prices will be extracted and the animal names will be left alone

      tblanimals.First;
      while NOT(tblanimals.Eof) do
       begin
       if UpperCase(tblanimals['species']) = UpperCase(sspecies) then
          begin
            itot:=itot+1;  //new animals can be added by the admin so the species dont stay the same amount
          end;
          tblanimals.Next;
       end;

            for j := 0 to 5 do
             if rgpdonate.ItemIndex=j then  //textfile stores all the plush prices
                begin
                  for k := 0 to j do
                    begin
                     readln(myfile,soneline);
                     soneline:='300';
                     arrprice[k]:= strtofloat(soneline);
                     rpriceTot:=arrprice[k]/itot;
                    end;
                end;
      closefile(myfile);



     qryanimal.Active:=false;
     qryanimal.sql.text:='UPDATE tblAnimals SET [Money_collected]='+quotedstr(floattostr(rpricetot))+' WHERE (Species = "'+sspecies+'" )';
     qryanimal.ExecSQL;
     qryanimal.active:=true;


 qryanimal.Active:=true;
     qryanimal.sql.text:='SELECT* FROM tblanimals';
     qryanimal.active:=false;
 // DBganimals.DataSource := qryanimal.DataSource;
end;

procedure Tmain.btnBuyplushClick(Sender: TObject);
begin
btnDonate.Visible:=false;
btnbuy2.Visible:=true;
end;

procedure Tmain.btnDonate2Click(Sender: TObject);
var
  species:string;
begin
 btnbuy2.Visible:=false;
 btndonate.Visible:=true;
 species:=rgpdonate.Items[rgpdonate.ItemIndex];

  qryanimal.Active:=false;
 qryanimal.sql.text:='SELECT* FROM tblAnimals WHERE (Species= "'+species+'") AND (Money_need>0)';
  qryanimal.active:=true;
 // DBganimals.DataSource := qryanimal.DataSource;

pnlmessage.Caption:='please select animal from grid to donate to';

 {//DONATIONS FOR ALREADY LOGGED IN
      if (tblanimals['Species']=sSpecies) AND (tblanimals['Username']=username) then
      begin
        tblanimals.edit;
        tblanimals['Username']:=(Username); //uses the oop function to get the username from login to main to tblanimal , if the user logs in or signs up , use OOP to get username from login unit
        tblanimals.post;
      end;  }

end;

procedure Tmain.btndonateClick(Sender: TObject);
var
samount:string;
i,k,ivalue:integer;
begin

samount:=inputbox('Enter amount to donate as numerical value','','R');//the user can just enter an amount, if the amount entered isnt integers a showmessage and a new inputbox will appear

    for i := 1 to length(samount) do
    begin
      if (samount[i] IN ['1'..'9']) then //if the value is correct all the values of samount will be in 1..9
        begin
          tblanimals.First;
           begin
               while NOT(tblanimals.eof) do
                begin
                if tblanimals['Money_Need']<0 then
                    begin
                      ivalue:= strtoint(tblanimals['Money_Need']);
                      ivalue:=ivalue-strtoint(samount);
                       //extracts the initial value of money_need and subtracts the money that the user has donated for the new updated value
                       tblanimals.Edit;
                        tblanimals['Money_Need'] := inttostr(ivalue);//updates the value from the money_need record of the animal selected
                        tblanimals.Post;
                    end;
                end;
                tblanimals.Next;
            end;
        end
          else
        for k := 1 to length(samount) do
      begin
        if NOT(samount[i] IN ['1'..'9']) then
            begin
              showmessage('please enter numerical value without any special characters or letters '); //if anything but a number is entered it will show the showmessage and the user will have to enter a value until its a numerical value
              samount:=inputbox('enter amount to donate as numerical value','','R');
            end
      end;
    end;

end;

procedure Tmain.btnremoveanimalClick(Sender: TObject);
var
sdelanimal:string;
begin
sdelanimal:=edtanimalname.Text;
qryanimal.Active:=false;
qryanimal.SQL.Text:='DELETE FROM tblanimals WHERE (Animal_Name='+quotedstr(sdelanimal)+')';
qryanimal.ExecSQL;

qryanimal.Active:=false;
 qryanimal.SQl.Text:='SELECT* FROM tblanimals';
 qryanimal.Active:=true;


end;

procedure Tmain.btnshowaniClick(Sender: TObject);
begin
qryanimal.Active:=false;
qryanimal.SQL.Text:='SELECT* Username,Species,Animal_name FROM Tblanimals';
qryanimal.Active:=true;

qryusers.Active:=false;
qryusers.SQL.Text:='SELECT* Username,Monthly_Fee FROM Tblusers';
qryusers.Active:=true;



end;

procedure Tmain.btnupdatepriceClick(Sender: TObject);
var
//a new textfile will be created each time a price is updated
//the price being updated will have be searched for
//after its been found the increment price method will be called for the new value
//2 parallel arrays will be used , one will have the animals and the animals will always be fixed
//the other will have the prices , the prices array will be incremented
//a new textfile will be made and the animals and prices array will be sued to write back to the textfile
splush:string;         //writing back to a textfile
inum,k:integer;
rnewprice,rprice:real;
soneline:string;
myfile:textfile;
arrplush:array [0..5] of string;
begin
objOOP:=toop.createupdate;
if fileexists('prices.txt')<>True then
      begin
        rewrite(myfile); //initial values of the animal prices
        writeln('200');
        writeln('200');
        writeln('300');
        writeln('400');
        writeln('400');
        writeln('600');
      end;
  inum:=cbxadmin.ItemIndex;
 splush:= cbxplushprice.Items[cbxplushprice.ItemIndex];   //extract plush name from combobox
 objOOP.incementprice(splush);
 rnewprice:=objOOP.getprice(inum);

 for k := 0 to 5 do
   begin
       if arrprice[k]=inum then
       begin
        arrprice[k]:=rnewprice;
       end;

   end;

                                                //create a new textfile but update only one value :'
  assignfile(myfile,'prices.txt');
  rewrite(myfile);
  for K := 0 to 5 do
    begin
      Writeln(myFile, floattostr(arrprice[k]));
    end;
    redoutput.Lines.Add(objOOP.toString); //should display updated values with the animals ,,,
    closefile(myfile);
end;

procedure Tmain.btnupdateuserallClick(Sender: TObject);
var
sname,susername:string;
iage:integer;
smonthlyfee,sdonation:string;
begin
susername:=edtusernameupdate.Text;
sname :=edtusernameupdate.Text;
iage:=sedage.Value;
smonthlyfee:= edtadminfee.Text;
qryusers.Active:=false;
qryusers.SQL.Text:='UPDATE tblUsers SET Full_Name='+ quotedstr(sname)+',age='+ quotedstr(inttostr(iage))+' ,Monthly_fee=FORMAT('+ quotedstr(smonthlyfee)+',"Currency"), donation=FORMAT('+ quotedstr(sdonation)+',"Currency") WHERE (Username= '+ quotedstr(susername)+')';
qryusers.ExecSQL;


qryusers.Active:=false;
qryusers.SQL.Text:='SELECT*FROM tblusers  ORDER BY Username desc';
qryusers.Active:=true;
pnlupdateusershow.Visible:=false;
pnlupdateuserinstruction.Visible:=true;
end;

procedure Tmain.btnupdateusernameClick(Sender: TObject);
 var
newusername,oldusername:string;
begin
 newusername :=edtnewusername.text;//need to do 5 steps


  if (newusername=tblusers['username']) then
      begin
        lblupdateusername.caption:= 'Please enter different username,username is already in use';
         edtnewusername.Clear;
        exit;
      end;

 qryusers.Active:=false;
 //qryusers.SQL.Text:='UPDATE Tblusers SET tblusers.username='+quotedstr(newusername)+' WHERE (tblusers.username=tblanimals.username) AND tblusers.username='+quotedstr(oldusername)+' tblanimals.username='+quotedstr(oldusername)+'';
 qryusers.SQL.Text:= 'UPDATE tblusers SET username='+quotedstr(newusername)+' WHERE username='+quotedstr(oldusername)+'';
 qryusers.ExecSQL;

 qryanimal.Active:=false;
 qryanimal.SQL.Text:='UPDATE tblanimals SET username='+quotedstr(newusername)+' WHERE username='+quotedstr(oldusername)+'';
  qryanimal.ExecSQL;

 qryanimal.Active:=false;
 qryanimal.SQl.Text:='SELECT Username FROM tblanimals';
 qryanimal.Active:=true;

 qryusers.Active:=false;
 qryusers.SQl.Text:='SELECT username FROM tblusers';
 qryusers.Active:=true;



{tblusers.first;
  while  NOT(tblusers.eof) DO
    begin
        if tblusers['username']=tblanimals['username'] then
        begin
          if (newusername=tblusers['username']) then
              begin
                 lblupdateusername.caption:= 'Please enter different username,username is already in use';
                 edtnewusername.Clear;
                 exit;
              end;
              tblanimals.First;
              while not(tblanimals.eof) do
              begin
                tblanimals['username']:= newusername;
                tblanimals.Next;
              end;


           tblusers['username']:=newusername;

        end;
        tblusers.next;
    end;

  {qryusers.active:=false;
             qryusers.sql.text:='UPDATE tblusers ,tblanimals SET (tblusers.Username= "' + quotedstr(newusername)+'", (tblanimals.Username= ' + quotedstr(newusername)+' WHERE (tblusers.Username=tblanimals.Username) AND (Username= ' + quotedstr(oldusername)+'';
             qryusers.execSQL;}





{ qryusers.active:=false;
 qryusers.sql.text:='UPDATE tblusers ,tblanimals SET (tblusers.Username= "' + quotedstr(newusername)+'", (tblanimals.Username= ' + quotedstr(newusername)+' WHERE (tblusers.Username=tblanimals.Username) AND (Username= ' + quotedstr(oldusername)+'';
  qryusers.active:=false;
 lblupdateusername.caption:='username updated ^^';}
 //tblusers.first;
end;

procedure Tmain.Button1Click(Sender: TObject);
begin
qryanimal.Active:=false;
qryanimal.SQL.Text:='SELECT Species FROM tblanimals';
qryanimal.Active:=true;
end;

procedure Tmain.cbxadminChange(Sender: TObject);
begin
    if cbxadmin.ItemIndex=0 then
        begin
          pnlupdateuser.Visible:=true;
           pnladdani.Visible:=false;
          pnlupdateprice.Visible:=false;
          pnlupdateusershow.Visible:=false;
          redoutput.Visible:=false;
          with lblupdateuserinstruction do
            begin
             Align := alClient;
             Alignment := taCenter;
             AutoSize := False;
             Layout := tlCenter;
             WordWrap := True;
             font.Color:= $FFFFD5;
             Caption := 'Please enter the username of the record ' + #13 + #10 + 'that needs to be updated' ;
           end;

        end
          else
            if cbxadmin.ItemIndex=1 then
                begin
                 pnlupdateuser.Visible:=false;
                    pnladdani.Visible:=true;
                  pnlupdateprice.Visible:=false;
                  pnlupdateusershow.Visible:=false;
                  redoutput.Visible:=true;
                end
                  else
              if cbxadmin.ItemIndex=2 then
            begin
              pnladdani.Visible:=false;
                pnlupdateuser.Visible:=false;
                 pnlupdateprice.Visible:=true;
                   btnremoveanimal.Visible:=false;
                  btnaddanimal.Visible:=true;
              seddanger.Visible:=true;
              cbxnewanimal.Visible:=true;
              redoutput.visible :=false;

                  with lblendangeredanimal do
                begin
                 Align := alClient;
                 Alignment := taCenter;
                 AutoSize := False;
                 Layout := tlCenter;
                 WordWrap := True;
                 font.Color:= $FFFFD5;
                 Caption := 'How threated the species is' + #13 + #10 + 'on a scale from 1-4' ;
               end;
            end
        else
    if cbxadmin.ItemIndex=3 then
  begin
    pnladdani.Visible:=false;
      pnlupdateuser.Visible:=false;
         pnlupdateprice.Visible:=true;
          btnaddanimal.Visible:=false;
         seddanger.Visible:=false;
       cbxnewanimal.Visible:=false;
    btnremoveanimal.Visible:=true;
    redoutput.Visible:=false;
  end;

end;

procedure Tmain.FormCreate(Sender: TObject);
var
k,j:integer;

begin
// changes the colums of the DB grids
redoutput.Visible:=false;
 btnadopt.Visible:=false;
 edtadoptname.Visible:=false;

dbgUsersadopt.Columns[0].Width := 200;
dbgUsersadopt.Columns[4].Width := 150;

   for j := 1 to  dbgUsersadopt.Columns.Count - 2 do
      begin
         dbgUsersadopt.Columns[j].Width := 100;

      end;

           for j := 0 to  DBGanimalsadopt.Columns.Count - 3 do
              begin
                DBGanimalsadopt.Columns[j].Width := 80;

              end;
               DBGanimalsadopt.Columns[5].Width := 130;
                DBGanimalsadopt.Columns[6].Width := 120;

                 for j := 0 to   dbgAnimals.Columns.Count - 1 do
                    begin
                          dbgAnimals.Columns[j].Width := 100;

                     end;

               for j := 0 to   dbgusers.Columns.Count - 1 do
                  begin
                      dbgusers.Columns[j].Width := 100;

                  end;

       for j := 0 to  DBGusersadmin.Columns.Count - 1 do
          begin
             DBGusersadmin.Columns[j].Width := 160;

          end;


   for j := 0 to  DBGanimalsadmin.Columns.Count - 1 do
      begin
         DBGanimalsadmin.Columns[j].Width := 120;

      end;

shpupdateprice.Brush.Color:=$CABA62;
shpaddanimal.Brush.Color:=$CABA62;
shpupdateuserinfo.Brush.Color:=$CABA62;
shpupdateuser.Brush.Color:=$CABA62;

pnladminlabel.Color:=$D57D09;
pnladminlabel.Font.Color:=$FFFFD5;

pnlani1.font.Color:=$FFFFD5;
pnlani2.font.Color:=$FFFFD5;
pnlani3.font.Color:=$FFFFD5;
pnlani4.font.Color:=$FFFFD5;
pnlani5.font.Color:=$FFFFD5;
pnlani6.font.Color:=$FFFFD5;


pnlani1.Color:=$D57D09;
pnlani2.Color:=$D57D09;
pnlani3.Color:=$D57D09;
pnlani4.Color:=$D57D09;
pnlani5.Color:=$D57D09;
pnlani6.Color:=$D57D09;


lblenteradoptname.Font.Color:=$FFFFD5;
lblenteradoptname.visible:=false;
lbladoptname.Font.Color:=$FFFFD5;
lbladoptanimalno.Font.Color:=$FFFFD5;
lbladopt.Font.Color:=$FFFFD5;
lblupdateuserold.Font.Color:=$FFFFD5;
lblupdateusernew.Font.Color:=$FFFFD5;
lblendangeredanimal.Font.Color:=$FFFFD5;
lbladdani.Font.Color:=$FFFFD5;
lblusernameadmin.Font.Color:=$FFFFD5;
lblnameadmin.Font.Color:=$FFFFD5;
lblfeeadmin.Font.Color:=$FFFFD5;
lblageadmin.Font.Color:=$FFFFD5;

pnldolphimg.font.Color:=$FFFFD5;
pnlsharkimg.font.Color:=$FFFFD5;
pnlpenguinimg.font.Color:=$FFFFD5;
pnlfishimg.font.Color:=$FFFFD5;
pnlwhaleimg.font.Color:=$FFFFD5;
pnlturtleimg.font.Color:=$FFFFD5;



pnlUsers.Font.Color:=$FFFFD5;
pnlmessage.Font.Color:=$FFFFD5;
pnlmessage2.Font.Color:=$FFFFD5;
lbldonate.Font.Color:=$FFFFD5;
rgpAdopt.Brush.Color:=$FFFFD5;
rgpAdopt.Font.Color:=$FF138F;
pnladopt2.Font.Color:=$FFFFD5;

icount:=0;
imgadmin.Picture.LoadFromFile('aqua5.jpg');
imgadmin.Stretch:=true;
pgctrl.Brush.Color:=$FFFFD5;
pnlupdateprice.Visible:=false;
pnlupdateuser.Visible:=false;
pnladdani.Visible:=false;
Imgdonate.Picture.LoadFromFile('Aquarium.jpg'); //adds background image to the donate panel
Imgdonate.stretch:=true;
pnldonate.Font.Color:= $FFFFD5;
pnldonate.color:=clteal;
btnBuy2.Font.Color:=$FFE9CA;
   { for k := 1 to 6 do
    begin
      imgdonate1.Picture.LoadFromFile('plush'+inttostr(k)+'.jpg');
    imgdonate[k].Stretch:=true;   can i use k in a variable , i want to strectch from 1 to 6
    end;     }

imgadopt.Picture.LoadFromFile('Aquarium.jpg');
imgadopt.Stretch:=true;

imgdonate.Picture.LoadFromFile('sharks3.jpg');
imgdonate.Stretch:=true;

imgdonate1.Picture.LoadFromFile('plush1.jpg');
imgdonate1.Stretch:=true;

imgdonate2.Picture.LoadFromFile('plush2.jpg');
imgdonate2.Stretch:=true;

imgdonate3.Picture.LoadFromFile('plush3.jpeg');
imgdonate3.Stretch:=true;

imgdonate4.Picture.LoadFromFile('plush4.jpg');
imgdonate4.Stretch:=true;

imgdonate5.Picture.LoadFromFile('plush5.jpg');
imgdonate5.Stretch:=true;

imgdonate6.Picture.LoadFromFile('plush6.jpg');
imgdonate6.Stretch:=true;
lblupdateusername.Font.Color:=$FFFFD5;
lblUpdateuserinfo.Font.Color:=$FFFFD5;
end;


procedure Tmain.FormShow(Sender: TObject);
begin
    {if objOOP.getcount=1 then
       begin
       pgctrl.ActivePageIndex:=2;//always makes the tabsheet open on donate
    end
     else
    pgctrl.ActivePageIndex:=0;  }
   MakeRounded(pnlupdateuser);
   MakeRounded(pnladdani);
   MakeRounded(pnlupdateprice);
   MakeRounded(rgpdonate)
   ;
   MakeRounded(pnldolphimg);
   MakeRounded(pnlsharkimg);
   MakeRounded(pnlpenguinimg);
   MakeRounded(pnlfishimg);
   MakeRounded(pnlwhaleimg);
   MakeRounded(pnlturtleimg);

   MakeRounded(pnlmessage);
   MakeRounded(pnlmessage2);
   MakeRounded(pnlUsers);
   MakeRounded(pnldonate);


end;


procedure Tmain.MakeRounded(Control: TWinControl);
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

procedure Tmain.pgctrlChange(Sender: TObject);
var
spassword:string;
begin
  if pgctrl.ActivePageIndex=2 then //only when it changes to the admin page otherwise user cant go between donate/adopt without admin password
    begin
    showmessage('admin password=1234');
      spassword:=inputbox('Please enter admin password',':)',''); //when the user goes to admin page , admin password is required
         if (spassword<> '1234') then
           begin
             pgctrl.ActivePageIndex:=0;
           end;

    end;
end;

procedure Tmain.rgpadoptClick(Sender: TObject);
var
species:string;

begin    //displays species on dbgrid
species := rgpadopt.Items[rgpadopt.ItemIndex]; //gets species from radiogroup
qryanimal.Active:=false;
qryanimal.SQL.Text:='SELECT AnimalId,Species,Animal_Name,Username FROM tblAnimals WHERE (Species= '+ quotedstr(species)+') AND Username IS NULL';
qryanimal.active:=true;
btnadopt.Visible:=true;
 edtadoptname.Visible:=true;


    with lbladoptname do
    begin
     Align := alClient;
     Alignment := taCenter;
     AutoSize := False;
     Layout := tlCenter;
     WordWrap := True;
     font.Color:= $FFFFD5;
     Caption := 'Please enter one of the animal names ' + #13 + #10 + 'displayed in the grid' ;
   end;

   with lbladoptanimalno do
     begin
       Align := alClient;
       Alignment := taCenter;
       AutoSize := False;
       Layout := tlCenter;
       WordWrap := True;
       font.Color:= $FFFFD5;
       Caption := 'If there are no animals displayed all ' + #13 + #10 + ' animals have been adopted , please select other species' ;
     end;

 lblenteradoptname.Visible:=true;

end;

procedure Tmain.rgpdonateClick(Sender: TObject);
 var
species :string;
begin
species := rgpdonate.Items[rgpdonate.ItemIndex];
qryanimal.Active:=false;
qryanimal.SQL.Text:='SELECT Species,Animal_Name,Username  FROM tblAnimals WHERE (Species= '+quotedstr(species)+' )ORDER BY Username';
qryanimal.active:=true;

end;

end.
