unit OOP;

interface
uses StdCtrls, SysUtils,math;

type
  TOOP = class(TObject)

  private
  var
  fprice:real;
  Fplush:string;
  ffee:real;
  fspecies,fspecies2:string;
  fage:integer;
  fusername:string;
  farray: array [1..6] of real;
  farrayani:array [1..6] of string;
  farrayprices:array[0..5]of real;
  public
  constructor createlogin (page:integer;pusername:string); //constructor to get the username and age from login to use in main form
  constructor create(pprice:real;pPlush:string;pfee:real;pspecies:string);//constructor
  constructor createspecies(pspecies2:string) ;
  constructor createupdate;
  function getuser:string; //acessor
  function getage:integer;//accesor
  function getfee:real;
  function moneycalc:real;//auxiliary
  function determinedangerlvl:integer;//auxiliary gives animals a dangerlvl based on the animal and moneyneedcalc procedure
  procedure incementprice(splush:string);//mutator
  function getprice(inum:integer):real;
  function sortarray :integer;
  function toString:string;
  end;

implementation

{ TOOP }

constructor TOOP.create(pprice: real; pPlush: string; pfee: real;
  pspecies: string );
begin
  fprice:=pprice;
  Fplush:=pplush;
  ffee:=pfee;
  fspecies:=pspecies;

end;

constructor TOOP.createlogin(page: integer; pusername: string);
begin
fage:=page;
fusername:=pusername;
end;

constructor TOOP.createspecies(pspecies2:string);
begin
fspecies2:=pspecies2;
end;

constructor TOOP.createupdate;
begin
  farray[1]:=200; //array for tostring method
  farray[2]:=200;
  farray[3]:=300;
  farray[4]:=400;
  farray[5]:=400;
  farray[6]:=400;
  //for updating the prices and rewriting back to textfile in the main unit
  farrayprices[0]:=200;
  farrayprices[1]:=200;
  farrayprices[2]:=300;
  farrayprices[3]:=400;
  farrayprices[4]:=400;
  farrayprices[5]:=600;

  farrayani[1]:='dolphin';
  farrayani[2]:='shark' ;
  farrayani[3]:='turtle';
  farrayani[4]:='seal';
  farrayani[5]:='whale';
  farrayani[6]:='fish';
end;

function TOOP.determinedangerlvl: integer;
    begin
      if moneycalc <=1000 then
        begin
          result := 1;
        end
          else
            if (moneycalc>1000) AND (moneycalc <2500) then
              begin
                result := 2;
              end
                else
                if (moneycalc > 2500) AND (moneycalc <=3500) then
             begin
               result := 3;
             end
         else
        result:=4;
     end;

function TOOP.getage: integer;
begin
 result:=fage;
end;
function TOOP.getfee: real;
begin
result:=ffee;
end;

function TOOP.getprice(inum:integer): real;
begin
result:=farrayprices[inum];
end;

function TOOP.getuser: string;
begin
 result:=fusername;
end;

procedure TOOP.incementprice(splush: string);
begin
      if splush = 'dolphin🐬' then
    begin
     farrayprices[0]:=farrayprices[0]+farrayprices[0]*0.2;
    end
      else
      if splush = 'shark🦈' then
        begin
             farrayprices[1]:=farrayprices[1]+farrayprices[1]*0.2;
        end
          else
           if splush = 'turtle🐢' then
             begin
                 farrayprices[2]:=farrayprices[2]+farrayprices[2]*0.2;
             end
        else
        if splush = 'penguin🐧' then
        begin
          farrayprices[3]:=farrayprices[3]+farrayprices[3]*0.2;
        end
     else
    if splush = 'whale🐋' then
  begin
     farrayprices[4]:=farrayprices[4]+farrayprices[4]*0.2;
  end
   else
   if splush = 'fish🐠' then
  begin
     farrayprices[5]:=farrayprices[5]+farrayprices[5]*0.2;
  end;
end;
//inreases the price of the price of the plush for the tostring method
                        //gets the species from main form combobox
function TOOP.moneycalc: real;//for adding a new animal , based on the species a value will be assigned to be added to the money needed field
begin

      if fspecies2 = 'dolphin' then
    begin
     result:=1000;
    end
      else
      if fspecies2 = 'shark' then
        begin
            result:=1500;
        end
          else
           if fspecies2 = 'turtle' then
             begin
                result:=2000;
             end
        else
        if fspecies2 = 'penguin' then
        begin
         result:=1000;
        end
     else
    if fspecies2 = 'whale' then
  begin
    result:=3000;
  end
   else
    result:=3500;
end;

function TOOP.sortarray: integer;
var
a ,b,icount :integer;    //sort the prices so they can be displayed with a tostring
rkeep:real;
skeep:string;           //parallel array to keep the animal grouped with the correct price
begin
icount:=6;
farray[1]:=farrayprices[0];    //the farray gets the value of the farrayprices because the prices have changed
farray[2]:=farrayprices[1];   // separate arrays are used to keep the updated prices in order
farray[3]:=farrayprices[2];
farray[4]:=farrayprices[3];
farray[5]:=farrayprices[4];
farray[6]:=farrayprices[5];

 for a := 1 to icount-1 do
 for b := 1 to a do
 if farray[a]>farray[b] then
 begin
   rkeep := farray[a];
   farray[a]:=farray[b];
   farray[b]:=rkeep;

   skeep:=farrayani[a];
   farrayani[a]:=farrayani[b];
   farrayani[b]:=skeep;
 end;
end;

function TOOP.toString: string;
begin
result := 'Updated prices of the plushies :'+#13+floattostrf(farray[1],ffcurrency,10,2)+ ' '+ farrayani[1]+#13
                                           +floattostrf(farray[2],ffcurrency,10,2)+ ' '+ farrayani[2]+#13
                                           +floattostrf(farray[3],ffcurrency,10,2)+ ' '+ farrayani[3]+#13
                                           +floattostrf(farray[4],ffcurrency,10,2)+ ' '+ farrayani[4]+#13
                                           +floattostrf(farray[5],ffcurrency,10,2)+ ' '+ farrayani[5]+#13
                                           +floattostrf(farray[6],ffcurrency,10,2)+ ' '+ farrayani[6]+#13;
end;

end.
