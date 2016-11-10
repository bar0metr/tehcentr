unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls,  uStruct, StdCtrls,
  ExtCtrls, Buttons,inifiles, ActnList, ToolWin;


type
 TCustomHint = class (THintWindow)
public
  constructor Create(AOwner: TComponent) ; override;
  end;
  type
  TfmMain = class(TForm)
    mmMain: TMainMenu;
    miFile: TMenuItem;
    miExit: TMenuItem;
    alMain: TActionList;
    miEdit: TMenuItem;
    actAddNewEntry: TAction;
    miAddNewEntry: TMenuItem;
    stbMain: TStatusBar;
    lvMain: TListView;
    miHelp: TMenuItem;
    miAbout: TMenuItem;
    actIndexFile: TAction;
    actEditEntry: TAction;
    miEditEntry: TMenuItem;
    actDeleteEntry: TAction;
    miDeleteEntry: TMenuItem;
    actCreate: TAction;
    miSeparator1: TMenuItem;
    miCreate: TMenuItem;
    actOpen: TAction;
    miOpen: TMenuItem;
    actSearch: TAction;
    miSeparator2: TMenuItem;
    miSearch: TMenuItem;
    N2: TMenuItem;
    Panel1: TPanel;
    tbMain: TToolBar;
    tbtSeparator1: TToolButton;
    tbtSeparator2: TToolButton;
    ToolButton1: TToolButton;
    tbtCreate: TSpeedButton;
    tbtOpen: TSpeedButton;
    tbtAddNewEntry: TSpeedButton;
    tbtEditEntry: TSpeedButton;
    tbtDeleteEntry: TSpeedButton;
    tbtSearch: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    N3: TMenuItem;
    N1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    PopupMenu1: TPopupMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Timer1: TTimer;
    procedure miExitClick(Sender: TObject);
    procedure actAddNewEntryExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure miAboutClick(Sender: TObject);
    procedure lvMainSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure actEditEntryExecute(Sender: TObject);
    procedure actDeleteEntryExecute(Sender: TObject);
    procedure lvMainDblClick(Sender: TObject);
    procedure actCreateExecute(Sender: TObject);
    procedure actOpenExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure lvMainCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure N8Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
  public
  dbpath,apppath,login,razmer: string;
  Function Decode(S: String): String;
  procedure OpenDBFile(const sFileName: String);
  procedure CreateDBFile(const sFileName: String);
  function ReadIni(ASection, AString: string): string;
  procedure WriteIni(ASection, AString, AValue: string);
  end;

var
  fmMain: TfmMain;

  ComputerFile: TComputerFile;

implementation

uses
  uAbout, uAddEditEntry, uSearch, personal,pass, Unit3, Unit4, Unit5,
  Unit6, Unit8;

{$R *.dfm}

constructor TCustomHint.Create(AOwner: TComponent) ;
begin
   inherited Create(AOwner) ;
with Canvas do
    begin
    font.Name:= 'Times New Roman Cyr';
    font.Style:= [fsBold];
    font.Size:= 12;
       end;
    Application.HintColor:= $00FBEDCA;
end;

Function tfmmain.Decode(S: String): String;
Var t: Integer;
  Code: Integer;
Begin
code:= 81697136;
 For t:=1 to Length(S) Do S[t]:=Chr(Ord(S[t]) xor Code);
 Result:=S;
End;




procedure TfmMain.miExitClick(Sender: TObject);
begin
  Close;
end;

procedure AddComputerRecToList(Computer: TComputer);
begin
  with fmMain.lvMain.Items.Add, Computer do
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
      SubItems.Add(remont);
      SubItems.Add(rem_prog);
      SubItems.Add(rub);
      SubItems.Add(zap_please);
      SubItems.Add(zapchasti);
      SubItems.Add(zap_ok);

  SubItems.Add(verh);
   SubItems.Add(niz);
   SubItems.Add(prst);
   SubItems.Add(levst);
   SubItems.Add(peredst);
   SubItems.Add(zadst);
   SubItems.Add(stoim);
    end;
end;


procedure TfmMain.actAddNewEntryExecute(Sender: TObject);
var
  Computer: TComputer;
 i: integer;
begin
  fmAddEditEntry:=TfmAddEditEntry.Create(Self);
  try
    fmAddEditEntry.Caption:='Добавить новую запись';      
    i:= 0;
     if  fmMain.lvMain.Items.Count>0 then
    i:= strtoint(lvMain.Items[lvMain.Items.count-1].Caption);
    i:= i+1;
    fmaddeditentry.LabeledEdit1.Text:= inttostr(i);
    fmaddeditentry.LabeledEdit10.Text:= 'НИЧЕГО';
     fmaddeditentry.LabeledEdit2.Text:= datetostr(now);
fmAddEditEntry.StringGrid1.Cells[0,1]:='1';
fmAddEditEntry.StringGrid1.Cells[1,1]:='Вызов мастера на дом';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,2]:='2';
fmAddEditEntry.StringGrid1.Cells[1,2]:='Диагностика';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,3]:='3';
fmAddEditEntry.StringGrid1.Cells[1,3]:='Доставка до мастерской';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,4]:='4';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,5]:='5';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,6]:='6';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,7]:='7';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,8]:='8';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,9]:='9';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,10]:='10';
fmAddEditEntry.StringGrid1.Cells[1,10]:='Запчасти';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,11]:='11';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,12]:='12';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,13]:='13';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,14]:='14';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,15]:='15';
fmAddEditEntry.SGInsertRow(fmAddEditEntry.StringGrid1,fmAddEditEntry.stringgrid1.RowCount+1);
fmAddEditEntry.StringGrid1.Cells[0,16]:='16';
fmAddEditEntry.StringGrid1.Cells[1,16]:='Доставка на дом';
fmAddEditEntry.StringGrid1Enter(sender);
    fmAddEditEntry.ShowModal;
 
    if fmAddEditEntry.ModalResult=mrOk then
      begin
    computer.zakaz_num:= fmAddEditEntry.LabeledEdit1.Text;
    computer.data:= fmAddEditEntry.LabeledEdit2.Text;
    computer.zakazchik:= fmAddEditEntry.LabeledEdit3.Text;
    computer.adres:= fmAddEditEntry.LabeledEdit4.Text;
    computer.telefon:= fmAddEditEntry.LabeledEdit5.Text;
    computer.izdelie:= fmAddEditEntry.LabeledEdit6.Text;
    computer.firma:= fmAddEditEntry.LabeledEdit7.Text;
    computer.model:= fmAddEditEntry.LabeledEdit8.Text;
    computer.nomer:= fmAddEditEntry.LabeledEdit9.Text;
    computer.complect:= fmAddEditEntry.LabeledEdit10.Text;
    computer.defects:= fmAddEditEntry.LabeledEdit11.Text;


    if fmAddEditEntry.CheckBox1.Checked then
    computer.remont:= 'Да' else computer.remont:= 'Нет';
    if fmAddEditEntry.CheckBox3.Checked then
    computer.zap_ok:= 'Да' else computer.zap_ok:= 'Нет';
    if fmAddEditEntry.CheckBox2.Checked then
    computer.zap_please:= 'Да' else computer.zap_please:= 'Нет';
     computer.zapchasti:= fmAddEditEntry.Memo2.Text;
    computer.rem_prog:= inttostr(fmAddEditEntry.TrackBar1.Position);

    computer.rub:= fmAddEditEntry.Edit4.Text;

    computer.verh:= fmAddEditEntry.LabeledEdit12.Text;
    computer.niz:= fmAddEditEntry.LabeledEdit13.Text;
    computer.prst:= fmAddEditEntry.LabeledEdit14.Text;
    computer.levst:= fmAddEditEntry.LabeledEdit15.Text;
    computer.peredst:= fmAddEditEntry.LabeledEdit16.Text;
    computer.zadst:= fmAddEditEntry.LabeledEdit17.Text;
     computer.stoim:= fmAddEditEntry.edit1.Text;

        Seek(ComputerFile, FileSize(ComputerFile));
        Write(ComputerFile, Computer);

        AddComputerRecToList(Computer);

        end;
  finally
    fmAddEditEntry.Free;
  end;
end;


procedure tfmmain.OpenDBFile(const sFileName: String);
var
  Computer: TComputer;
begin
lvmain.Clear;
  AssignFile(ComputerFile, sFileName);
  Reset(ComputerFile);

  while not EOF(ComputerFile) do
    begin
      Read(ComputerFile, Computer);

      AddComputerRecToList(Computer);
    end;


end;

procedure tfmmain.CreateDBFile(const sFileName: String);
begin
  AssignFile(ComputerFile, sFileName);
  Rewrite(ComputerFile);

end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
 HintWindowClass:= tCustomHint; // Устанавливаем глобальную пеpеменную
  Application.ShowHint:= false; // Application.FHintWindow.Free
  Application.ShowHint:= true; // Application.FHintWindow.Create

apppath:= includetrailingbackslash(extractfilepath(application.ExeName));

if  directoryexists(readini('db','db_path')) then
dbpath:= readini('db','db_path') else
begin
showmessage('База данных не найдена! Возможно,'+
' она была удалена, или путь, прописанный к ней,'+
' неверен. Будет создана папка DB в папке с '+
'программой и использована для хранения Базы данных');
if directoryexists(apppath+'DB\') then
dbpath:= apppath+'DB\'
else
begin
 createdir(apppath+'DB\');
 dbpath:= apppath+'DB\';
 end;
writeini('db','db_path',dbpath);
end;

tbtCreate.Glyph.LoadFromFile(apppath+'icons\1.bmp');
tbtOpen.Glyph.LoadFromFile(apppath+'icons\2.bmp');
tbtAddNewEntry.Glyph.LoadFromFile(apppath+'icons\3.bmp');
tbtEditEntry.Glyph.LoadFromFile(apppath+'icons\4.bmp');
tbtDeleteEntry.Glyph.LoadFromFile(apppath+'icons\5.bmp');
tbtSearch.Glyph.LoadFromFile(apppath+'icons\6.bmp');
SpeedButton6.Glyph.LoadFromFile(apppath+'icons\7.bmp');
SpeedButton1.Glyph.LoadFromFile(apppath+'icons\8.bmp');
end;

procedure TfmMain.miAboutClick(Sender: TObject);
begin
  fmAbout:=TfmAbout.Create(Self);
  try
    fmAbout.ShowModal;
  finally
    fmAbout.Free;
  end;
end;

procedure TfmMain.lvMainSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  actEditEntry.Enabled:=lvMain.SelCount <> 0;
  actDeleteEntry.Enabled:=lvMain.SelCount <> 0;
end;

procedure TfmMain.actEditEntryExecute(Sender: TObject);
var
  s: String;
  Idx: Integer;
  Computer: TComputer;
begin
  fmAddEditEntry:=TfmAddEditEntry.Create(Self);
  try
    fmAddEditEntry.Caption:='Редактировать запись';

    s:=lvMain.Selected.Caption;
    fmAddEditEntry.LabeledEdit1.Text:=s;
    fmAddEditEntry.loadStringGrid(fmAddEditEntry.stringgrid1,fmmain.dbpath+form2.edit1.Text+'.'+fmAddEditEntry.labelededit1.Text);

  fmAddEditEntry.LabeledEdit2.Text:= lvMain.Selected.SubItems[0];
  fmAddEditEntry.LabeledEdit3.Text:= lvMain.Selected.SubItems[1];
  fmAddEditEntry.LabeledEdit4.Text:= lvMain.Selected.SubItems[2];
  fmAddEditEntry.LabeledEdit5.Text:= lvMain.Selected.SubItems[3];
   fmAddEditEntry.LabeledEdit6.Text:= lvMain.Selected.SubItems[4];
   fmAddEditEntry.LabeledEdit7.Text:= lvMain.Selected.SubItems[5];
   fmAddEditEntry.LabeledEdit8.Text:= lvMain.Selected.SubItems[6];
   fmAddEditEntry.LabeledEdit9.Text:= lvMain.Selected.SubItems[7];
   fmAddEditEntry.LabeledEdit10.Text:= lvMain.Selected.SubItems[8];
   fmAddEditEntry.LabeledEdit11.Text:= lvMain.Selected.SubItems[9];
   fmAddEditEntry.Edit1.Text:= lvMain.Selected.SubItems[22];
    if lvMain.Selected.SubItems[10]='Да' then
  fmAddEditEntry.CheckBox1.Checked:=true else
  fmAddEditEntry.CheckBox1.Checked:=false;
  fmAddEditEntry.TrackBar1.Position:= strtoint(lvMain.Selected.SubItems[11]);
 fmAddEditEntry.Edit4.Text:= lvMain.Selected.SubItems[12];

   if lvMain.Selected.SubItems[13]='Да' then
  fmAddEditEntry.CheckBox2.Checked:=true else
  fmAddEditEntry.CheckBox2.Checked:=false;
  fmAddEditEntry.Memo2.Text:= lvMain.Selected.SubItems[14];

   if lvMain.Selected.SubItems[15]='Да' then
  fmAddEditEntry.CheckBox3.Checked:=true else
  fmAddEditEntry.CheckBox3.Checked:=false;
   fmAddEditEntry.StringGrid1Enter(sender);

    fmAddEditEntry.LabeledEdit12.Text:= lvMain.Selected.SubItems[16];
    fmAddEditEntry.LabeledEdit13.Text:= lvMain.Selected.SubItems[17];
    fmAddEditEntry.LabeledEdit14.Text:= lvMain.Selected.SubItems[18];
    fmAddEditEntry.LabeledEdit15.Text:= lvMain.Selected.SubItems[19];
    fmAddEditEntry.LabeledEdit16.Text:= lvMain.Selected.SubItems[20];
    fmAddEditEntry.LabeledEdit17.Text:= lvMain.Selected.SubItems[21];

    fmAddEditEntry.ShowModal;

    if fmAddEditEntry.ModalResult=mrOk then
      begin
computer.zakaz_num:= fmAddEditEntry.LabeledEdit1.Text;
    computer.data:= fmAddEditEntry.LabeledEdit2.Text;
    computer.zakazchik:= fmAddEditEntry.LabeledEdit3.Text;
    computer.adres:= fmAddEditEntry.LabeledEdit4.Text;
    computer.telefon:= fmAddEditEntry.LabeledEdit5.Text;
    computer.izdelie:= fmAddEditEntry.LabeledEdit6.Text;
    computer.firma:= fmAddEditEntry.LabeledEdit7.Text;
    computer.model:= fmAddEditEntry.LabeledEdit8.Text;
    computer.nomer:= fmAddEditEntry.LabeledEdit9.Text;
    computer.complect:= fmAddEditEntry.LabeledEdit10.Text;
    computer.defects:= fmAddEditEntry.LabeledEdit11.Text;
    computer.stoim:= fmAddEditEntry.edit1.Text;
 if fmAddEditEntry.CheckBox1.Checked then
    computer.remont:= 'Да' else computer.remont:= 'Нет';
    computer.rem_prog:= inttostr(fmAddEditEntry.TrackBar1.Position);
    computer.rub:= fmAddEditEntry.Edit4.Text;
      if fmAddEditEntry.CheckBox2.Checked then
    computer.zap_please:= 'Да' else computer.zap_please:= 'Нет';
         if fmAddEditEntry.CheckBox3.Checked then
    computer.zap_ok:= 'Да' else computer.zap_ok:= 'Нет';
    computer.zapchasti:= fmAddEditEntry.Memo2.Text;
    computer.verh:= fmAddEditEntry.LabeledEdit12.Text;
    computer.niz:= fmAddEditEntry.LabeledEdit13.Text;
    computer.prst:= fmAddEditEntry.LabeledEdit14.Text;
    computer.levst:= fmAddEditEntry.LabeledEdit15.Text;
    computer.peredst:= fmAddEditEntry.LabeledEdit16.Text;
    computer.zadst:= fmAddEditEntry.LabeledEdit17.Text;

        Idx:=lvMain.Selected.Index;
        Seek(ComputerFile, Idx);
        Write(ComputerFile, Computer);

        with lvMain.Selected, Computer do
          begin

       Caption:= zakaz_num;
   SubItems[0]:=  data;
   SubItems[1]:=   zakazchik;
   SubItems[2]:=   adres;
   SubItems[3]:=   telefon;
   SubItems[4]:=   izdelie;
   SubItems[5]:=   firma;
   SubItems[6]:=   model;
   SubItems[7]:=   nomer;
   SubItems[8]:=   complect;
   SubItems[9]:=   defects;
   SubItems[10]:=   remont;
   SubItems[11]:=   rem_prog;
   SubItems[12]:=   rub;
   SubItems[13]:=   zap_please;
   SubItems[14]:=   zapchasti;
   SubItems[15]:=   zap_ok;
   SubItems[16]:=   verh;
   SubItems[17]:=   niz;
   SubItems[18]:=   prst;
   SubItems[19]:=   levst;
   SubItems[20]:=   peredst;
   SubItems[21]:=   zadst;
   SubItems[22]:=   stoim;

          end;

        end;
  finally
    fmAddEditEntry.Free;
  end;
end;

procedure TfmMain.actDeleteEntryExecute(Sender: TObject);
var
  Idx, Idx2: Integer;
  TempComputer: TComputer;
  liTemp: TListItem;
begin
form4.showmodal;
if form4.ModalResult=mrCancel then exit;
  Idx:=lvMain.Selected.Index;

  Idx2:=FileSize(ComputerFile)-1;
  Seek(ComputerFile, Idx2);
  Read(ComputerFile, TempComputer);

  Seek(ComputerFile, Idx2);
  Truncate(ComputerFile);

    if Idx2 <> Idx then
    begin
      Seek(ComputerFile, Idx);
      Write(ComputerFile, TempComputer);
    end;
  if Idx2 <> Idx then
    begin
      liTemp:=TListItem.Create(lvMain.Items);
      liTemp.Assign(lvMain.Items[lvMain.Items.Count-1]);
      lvMain.Items[lvMain.Items.Count-1].Delete;
      lvMain.Items[Idx].Assign(liTemp);
      liTemp.Free;
    end
  else
    lvMain.Items[lvMain.Items.Count-1].Delete;
end;

procedure TfmMain.lvMainDblClick(Sender: TObject);
begin
  if TListView(Sender).Selected = nil then exit;
  actEditEntry.Execute;

end;

procedure TfmMain.actCreateExecute(Sender: TObject);
begin
form4.showmodal;
if form4.ModalResult=mrCancel then exit;
  Seek(ComputerFile, 0);
  Truncate(ComputerFile);
  lvMain.Clear;      
end;

procedure TfmMain.actOpenExecute(Sender: TObject);
begin
if form4.ModalResult= mrcancel then exit;

      CloseFile(ComputerFile);
      fmmain.Hide;
      fmmain.Timer1.Enabled:= false;
      form2.ShowModal;
end;

procedure TfmMain.actSearchExecute(Sender: TObject);
begin
  fmSearch:=TfmSearch.Create(Self);
  try
    fmSearch.ShowModal;
  finally
    fmSearch.Free;
  end;
end;

procedure TfmMain.N2Click(Sender: TObject);
begin
Settings_Form.ShowModal;

end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin

CloseFile(ComputerFile);
end;

procedure TfmMain.ToolButton2Click(Sender: TObject);

begin
form3.show;
form3.Update;
fmAddEditEntry.LoadStringGrid(form3.StringGrid1,fmmain.dbpath+form2.edit1.Text+'.'+lvMain.Selected.Caption);
form3.richedit1.Lines.LoadFromFile(fmmain.apppath+'1-2.rtf');
form3.Search_And_Replace(form3.RichEdit1,'\\талон',lvMain.Selected.Caption);
 form3.Search_And_Replace(form3.RichEdit1,'\\дата',lvMain.Selected.SubItems[0]);
  form3.Search_And_Replace(form3.RichEdit1,'\\фио',lvMain.Selected.SubItems[1]);
  form3.Search_And_Replace(form3.RichEdit1,'\\адрес',lvMain.Selected.SubItems[2]);
  form3.Search_And_Replace(form3.RichEdit1,'\\телефон',lvMain.Selected.SubItems[3]);
   form3.Search_And_Replace(form3.RichEdit1,'\\изделие',lvMain.Selected.SubItems[4]);
   form3.Search_And_Replace(form3.RichEdit1,'\\фирма',lvMain.Selected.SubItems[5]);
   form3.Search_And_Replace(form3.RichEdit1,'\\модель',lvMain.Selected.SubItems[6]);
   form3.Search_And_Replace(form3.RichEdit1,'\\№',lvMain.Selected.SubItems[7]);
   form3.Search_And_Replace(form3.RichEdit1,'\\комплектность',lvMain.Selected.SubItems[8]);
   form3.Search_And_Replace(form3.RichEdit1,'\\дефекты',lvMain.Selected.SubItems[9]);
   form3.Search_And_Replace(form3.RichEdit1,'\\мастер',Settings_Form.LabeledEdit1.Text);
     form3.Search_And_Replace(form3.RichEdit1,'\\диагностика',lvMain.Selected.SubItems[14]);
    form3.Search_And_Replace(form3.RichEdit1,'\\стоимость',lvMain.Selected.SubItems[22]);

       form3.Search_And_Replace(form3.RichEdit1,'\\вс',lvMain.Selected.SubItems[16]);
    form3.Search_And_Replace(form3.RichEdit1,'\\нс',lvMain.Selected.SubItems[17]);
    form3.Search_And_Replace(form3.RichEdit1,'\\пс',lvMain.Selected.SubItems[18]);
    form3.Search_And_Replace(form3.RichEdit1,'\\лс',lvMain.Selected.SubItems[19]);
    form3.Search_And_Replace(form3.RichEdit1,'\\перс',lvMain.Selected.SubItems[20]);
    form3.Search_And_Replace(form3.RichEdit1,'\\задс',lvMain.Selected.SubItems[21]);



ToolButton3click(sender);
form3.Panel2.Visible:= false;
form3.SetFocus;
end;

procedure TfmMain.ToolButton3Click(Sender: TObject);
var
Y: integer;
begin

form3.richedit2.Lines.LoadFromFile(fmmain.apppath+'3.rtf');
form3.Search_And_Replace(form3.RichEdit2,'\\талон',lvMain.Selected.Caption);
 form3.Search_And_Replace(form3.RichEdit2,'\\дата',lvMain.Selected.SubItems[0]);
  form3.Search_And_Replace(form3.RichEdit2,'\\фио',lvMain.Selected.SubItems[1]);
  form3.Search_And_Replace(form3.RichEdit2,'\\адрес',lvMain.Selected.SubItems[2]);
  form3.Search_And_Replace(form3.RichEdit2,'\\телефон',lvMain.Selected.SubItems[3]);
   form3.Search_And_Replace(form3.RichEdit2,'\\изделие',lvMain.Selected.SubItems[4]);
   form3.Search_And_Replace(form3.RichEdit2,'\\фирма',lvMain.Selected.SubItems[5]);
   form3.Search_And_Replace(form3.RichEdit2,'\\модель',lvMain.Selected.SubItems[6]);
   form3.Search_And_Replace(form3.RichEdit2,'\\№',lvMain.Selected.SubItems[7]);
   form3.Search_And_Replace(form3.RichEdit2,'\\комплектность',lvMain.Selected.SubItems[8]);
   form3.Search_And_Replace(form3.RichEdit2,'\\дефекты',lvMain.Selected.SubItems[9]);
 form3.Search_And_Replace(form3.RichEdit2,'\\мастер',Settings_Form.LabeledEdit1.Text);
     form3.Search_And_Replace(form3.RichEdit2,'\\диагностика',lvMain.Selected.SubItems[14]);
    form3.Search_And_Replace(form3.RichEdit2,'\\стоимость',lvMain.Selected.SubItems[22]);
 form3.Search_And_Replace(form3.RichEdit2,'\\it',lvMain.Selected.SubItems[12]+' рублей');
       form3.Search_And_Replace(form3.RichEdit2,'\\вс',lvMain.Selected.SubItems[16]);
    form3.Search_And_Replace(form3.RichEdit2,'\\нс',lvMain.Selected.SubItems[17]);
    form3.Search_And_Replace(form3.RichEdit2,'\\пс',lvMain.Selected.SubItems[18]);
    form3.Search_And_Replace(form3.RichEdit2,'\\лс',lvMain.Selected.SubItems[19]);
    form3.Search_And_Replace(form3.RichEdit2,'\\перс',lvMain.Selected.SubItems[20]);
    form3.Search_And_Replace(form3.RichEdit2,'\\задс',lvMain.Selected.SubItems[21]);


       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\vr'+inttostr(y),form3.StringGrid1.Cells[1,y]);


       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\с'+inttostr(y),form3.StringGrid1.Cells[2,y]);

       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\k'+inttostr(y),form3.StringGrid1.Cells[3,y]);

       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\m'+inttostr(y),form3.StringGrid1.Cells[4,y]);

       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\vs'+inttostr(y),form3.StringGrid1.Cells[5,y]);

       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\vip'+inttostr(y),form3.StringGrid1.Cells[6,y]);

       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\opl'+inttostr(y),form3.StringGrid1.Cells[7,y]);

////////

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\c'+inttostr(y),form3.StringGrid1.Cells[2,y+1]);

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\к'+inttostr(y),form3.StringGrid1.Cells[3,y+1]);

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\м'+inttostr(y),form3.StringGrid1.Cells[4,y+1]);

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\ves'+inttostr(y),form3.StringGrid1.Cells[5,y+1]);

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\вип'+inttostr(y),form3.StringGrid1.Cells[6,y+1]);

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\опл'+inttostr(y),form3.StringGrid1.Cells[7,y+1]);
//////////
 for y := 1 to 6 do
form3.Search_And_Replace(form3.RichEdit2,'\\z'+inttostr(y),form3.StringGrid1.Cells[2,y+10]);
////////////
form3.insertpic2;
form3.SetFocus;
form3.Panel2.Visible:= false;
end;

procedure TfmMain.SpeedButton1Click(Sender: TObject);
begin
form3.show;
form3.Update;
form3.richedit1.Lines.LoadFromFile(fmmain.apppath+'1-2.rtf');
form3.Search_And_Replace(form3.RichEdit1,'\\талон','');
 form3.Search_And_Replace(form3.RichEdit1,'\\дата','');
  form3.Search_And_Replace(form3.RichEdit1,'\\фио','');
  form3.Search_And_Replace(form3.RichEdit1,'\\адрес','');
  form3.Search_And_Replace(form3.RichEdit1,'\\телефон','');
   form3.Search_And_Replace(form3.RichEdit1,'\\изделие','');
   form3.Search_And_Replace(form3.RichEdit1,'\\фирма','');
   form3.Search_And_Replace(form3.RichEdit1,'\\модель','');
   form3.Search_And_Replace(form3.RichEdit1,'\\№','');
   form3.Search_And_Replace(form3.RichEdit1,'\\комплектность','');
   form3.Search_And_Replace(form3.RichEdit1,'\\дефекты','');
   form3.Search_And_Replace(form3.RichEdit1,'\\вид','');
   form3.Search_And_Replace(form3.RichEdit1,'\\мастер','');
     form3.Search_And_Replace(form3.RichEdit1,'\\диагностика','');
    form3.Search_And_Replace(form3.RichEdit1,'\\стоимость','');
        form3.Search_And_Replace(form3.RichEdit1,'\\вс','');
    form3.Search_And_Replace(form3.RichEdit1,'\\нс','');
    form3.Search_And_Replace(form3.RichEdit1,'\\пс','');
    form3.Search_And_Replace(form3.RichEdit1,'\\лс','');
    form3.Search_And_Replace(form3.RichEdit1,'\\перс','');
    form3.Search_And_Replace(form3.RichEdit1,'\\задс','');

form3.insertpic;
SpeedButton2Click(Sender);
form3.SetFocus;
end;

procedure TfmMain.SpeedButton2Click(Sender: TObject);
var
y: integer;
begin
form3.show;
form3.richedit2.Lines.LoadFromFile(fmmain.apppath+'3.rtf');
form3.Search_And_Replace(form3.RichEdit2,'\\талон','');
 form3.Search_And_Replace(form3.RichEdit2,'\\дата','');
  form3.Search_And_Replace(form3.RichEdit2,'\\фио','');
  form3.Search_And_Replace(form3.RichEdit2,'\\адрес','');
  form3.Search_And_Replace(form3.RichEdit2,'\\телефон','');
   form3.Search_And_Replace(form3.RichEdit2,'\\изделие','');
   form3.Search_And_Replace(form3.RichEdit2,'\\фирма','');
   form3.Search_And_Replace(form3.RichEdit2,'\\модель','');
   form3.Search_And_Replace(form3.RichEdit2,'\\№','');
   form3.Search_And_Replace(form3.RichEdit2,'\\комплектность','');
   form3.Search_And_Replace(form3.RichEdit2,'\\дефекты','');
   form3.Search_And_Replace(form3.RichEdit2,'\\вид','');
   form3.Search_And_Replace(form3.RichEdit2,'\\мастер','');
     form3.Search_And_Replace(form3.RichEdit2,'\\диагностика','');
    form3.Search_And_Replace(form3.RichEdit2,'\\стоимость','');
form3.Search_And_Replace(form3.RichEdit2,'\\it','');
       form3.Search_And_Replace(form3.RichEdit2,'\\вс','');
    form3.Search_And_Replace(form3.RichEdit2,'\\нс','');
    form3.Search_And_Replace(form3.RichEdit2,'\\пс','');
    form3.Search_And_Replace(form3.RichEdit2,'\\лс','');
    form3.Search_And_Replace(form3.RichEdit2,'\\перс','');
    form3.Search_And_Replace(form3.RichEdit2,'\\задс','');


       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\vr'+inttostr(y),'');


       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\с'+inttostr(y),'');

       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\k'+inttostr(y),'');

       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\m'+inttostr(y),'');

       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\vs'+inttostr(y),'');

       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\vip'+inttostr(y),'');

       for y := 1 to 9do
form3.Search_And_Replace(form3.RichEdit2,'\\opl'+inttostr(y),'');

////////

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\c'+inttostr(y),'');

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\к'+inttostr(y),'');

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\м'+inttostr(y),'');

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\ves'+inttostr(y),'');

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\вип'+inttostr(y),'');

       for y := 10 to 15 do
form3.Search_And_Replace(form3.RichEdit2,'\\опл'+inttostr(y),'');
//////////
 for y := 1 to 6 do
form3.Search_And_Replace(form3.RichEdit2,'\\z'+inttostr(y),'');
////////////
form3.insertpic2;
form3.Panel2.Visible:= false;
form3.SetFocus;
end;

procedure TfmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  form4.showmodal;
if form4.ModalResult=mrCancel then canclose:=false;
end;

function TfmMain.ReadIni(ASection, AString: string): string;

var

sIniFile: TIniFile;

sPath: string[60];

const

S = 'xyz'; { стандартная строка для выдачи ошибок чтения }

begin

GetDir(0, sPath); { текущий каталог }

sIniFile := TIniFile.Create(apppath +'db.INI');

Result := sIniFile.ReadString(ASection, AString, S); { [Section] String=Value}

sIniFile.Free;

end;

 

procedure TfmMain.WriteIni(ASection, AString, AValue: string);

var

sIniFile: TIniFile;

sPath: string[60];

begin

GetDir(0, sPath); { текущий каталог }

sIniFile := TIniFile.Create(apppath +'db.INI');

sIniFile.WriteString(ASection, AString, AValue); { [Section] String=Value }

sIniFile.Free;

end;

 



procedure TfmMain.N4Click(Sender: TObject);
begin
form5.showmodal;
end;

procedure TfmMain.N5Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TfmMain.N6Click(Sender: TObject);
begin
actDeleteEntry.Execute;
end;



procedure TfmMain.lvMainCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
{     with lvMain.Canvas.Brush do
  begin
 case Item.Index of
      0: Color := clYellow;
      1: Color := clGreen;
      2: Color := clRed;
    end;   end;

}

   with lvMain.Canvas.Brush do
  begin
if  (item.SubItems[10]='Нет')and(item.SubItems[11]='0') then
begin
color:= $005EFFFF;
lvMain.Canvas.font.Style:= [fsBold]
end
else
begin

if item.SubItems[10]= 'Да' then
color:= $00F1D6AB else
if item.SubItems[11]='100' then
color:= $00A4D79F;

if (item.SubItems[10]='Нет')and(item.SubItems[11]<>'0')and(item.SubItems[11]<>'100')
then
color:= $00C1BFFF;
end;
end;

end;

procedure TfmMain.N8Click(Sender: TObject);
begin
form8.showmodal;
end;

procedure TfmMain.Timer1Timer(Sender: TObject);
var
 i:integer;
 SR:TSearchRec;
 FindRes:Integer;
 Dir1,Dir2:string;
begin
{ i:=0;
 FindRes:=FindFirst(fmmain.dbpath+form2.edit1.Text+'.db',faAnyFile,SR);
 while FindRes=0 do
  begin
   if ((SR.Attr and faDirectory)=faDirectory) and
   ((SR.Name='.')or(SR.Name='..')) then
     begin
      FindRes:=FindNext(SR);
      Continue;
     end;
     if IntToStr(SR.Size)=razmer then showmessage('ewfwefw')
     else
     begin
     CloseFile(ComputerFile);
fmmain.OpenDBFile(fmmain.dbpath+form2.edit1.Text+'.db');

     end;

   Application.ProcessMessages;
   FindRes:=FindNext(SR);
  end;
 FindClose(SR);

       }
end;

end.
