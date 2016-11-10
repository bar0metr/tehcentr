unit uSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TfmSearch = class(TForm)
    laResult: TLabel;
    btGo: TButton;
    lvResult: TListView;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    Button1: TButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    procedure btGoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure lvResultDblClick(Sender: TObject);
  private
  public
  end;

var
  fmSearch: TfmSearch;

implementation

uses
  uMain, uStruct;

{$R *.dfm}

procedure TfmSearch.btGoClick(Sender: TObject);
var
  TempIndex: TComputer;
  Computer: TComputer;
  s,q,w,e,r,t,y,u,i: String;
  j: longint;
begin
  lvResult.Clear;

  s:=LabeledEdit1.Text;
  q:=LabeledEdit2.Text;
  w:=LabeledEdit3.Text;
  e:=LabeledEdit4.Text;
  r:=LabeledEdit5.Text;
  t:=LabeledEdit6.Text;
  y:=LabeledEdit7.Text;
  u:=LabeledEdit8.Text;
  i:=LabeledEdit9.Text;

  Seek(ComputerFile, 0);
  j:= 0;
  while not EOF(ComputerFile) do
    begin
      Read(ComputerFile, TempIndex);

      if (Pos(s, TempIndex.zakaz_num) <> 0) or
         (Pos(q, TempIndex.data) <> 0) or
         (Pos(w, TempIndex.zakazchik) <> 0) or
         (Pos(e, TempIndex.adres) <> 0) or
         (Pos(r, TempIndex.telefon) <> 0) or
         (Pos(t, TempIndex.izdelie) <> 0) or
         (Pos(y, TempIndex.firma) <> 0) or
         (Pos(u, TempIndex.model) <> 0) or
         (Pos(i, TempIndex.nomer) <> 0)
       then
        begin   // showmessage('j');
         Seek(ComputerFile, j);
         Read(ComputerFile, Computer);

          with lvResult.Items.Add, computer do
            begin
      Caption:=zakaz_num;
      SubItems.Add(data);
      SubItems.Add(zakazchik);
      SubItems.Add(adres);
      SubItems.Add(telefon);
      SubItems.Add(izdelie);
      SubItems.Add(firma);
      SubItems.Add(model);
      SubItems.Add(nomer);
      SubItems.Add(complect);
      SubItems.Add(defects);
     // SubItems.Add(vid);
            end;
        end;
           j:= j+1;
    end;    
end;

procedure TfmSearch.Button1Click(Sender: TObject);
begin
close;
end;

procedure TfmSearch.lvResultDblClick(Sender: TObject);
var
u: tlistitem;
begin
u:= fmmain.lvMain.FindCaption(0,lvResult.Selected.Caption,false,false,false);
IF Assigned(u) then begin
u.Selected:=True;
close;
end;

end;

end.
