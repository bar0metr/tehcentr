unit uAddEditEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  ExtCtrls, ComCtrls, Grids;

type
  TfmAddEditEntry = class(TForm)
    btOk: TButton;
    btCancel: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    TrackBar1: TTrackBar;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    Bevel3: TBevel;
    MonthCalendar1: TMonthCalendar;
    qq: TButton;
    Bevel4: TBevel;
    Edit4: TEdit;
    Label11: TLabel;
    Bevel5: TBevel;
    Label12: TLabel;
    CheckBox2: TCheckBox;
    Button1: TButton;
    CheckBox3: TCheckBox;
    Panel1: TPanel;
    Memo2: TMemo;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    LabeledEdit15: TLabeledEdit;
    LabeledEdit16: TLabeledEdit;
    LabeledEdit17: TLabeledEdit;
    Button4: TButton;
    StringGrid1: TStringGrid;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    procedure TrackBar1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure qqClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure StringGrid1GetEditText(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure StringGrid1SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure StringGrid1Enter(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
  private
  public
  Procedure GridAddColumn(StrGrid: TStringGrid; NewColumn: Integer; ColName: string);
  procedure SGInsertRow(SG: TStringGrid; NewRow: Integer);
  procedure renumber;
  procedure LoadStringGrid(StringGrid: TStringGrid; const FileName: TFileName);

  end;

var
  fmAddEditEntry: TfmAddEditEntry;
   select_ROW,select_COL,g_B,g_BC,p_BC,i: integer;
   summa,summa_,g1,g2,sel: integer;
implementation

uses uMain, personal, pass;

{$R *.dfm}

procedure TfmAddEditEntry.SGInsertRow(SG: TStringGrid; NewRow: Integer);
var
i: Integer;
begin
if NewRow < 0 then
   NewRow := 0;
with SG do
begin
   RowCount := RowCount + 1;
   if NewRow < RowCount - 1 then
   begin
     for i := RowCount - 1 downto NewRow + 1 do
       Rows[i].Assign(Rows[i - 1]);
   end;
   Rows[NewRow].Clear;
end;
end;


procedure GridDeleteRow(RowNumber: Integer; Grid: TstringGrid);
var
  i: Integer;
begin
  Grid.Row := RowNumber;
  if (Grid.Row = Grid.RowCount - 1) then
    Grid.RowCount := Grid.RowCount - 1
  else
  begin
    for i := RowNumber to Grid.RowCount - 1 do
      Grid.Rows[i] := Grid.Rows[i + 1];
    Grid.RowCount := Grid.RowCount - 1;
  end;
end;

procedure SaveStringGrid(StringGrid: TStringGrid; const FileName: TFileName);
var

  f:    TextFile;

  i, k: Integer;

begin

  AssignFile(f, FileName);

  Rewrite(f);

  with StringGrid do

  begin

    // Write number of Columns/Rows 

   Writeln(f, ColCount);

    Writeln(f, RowCount);

    // loop through cells 

   for i := 0 to ColCount - 1 do

      for k := 0 to RowCount - 1 do

        Writeln(F, Cells[i, k]);

  end;

  CloseFile(F);
end;

procedure TfmAddEditEntry.LoadStringGrid(StringGrid: TStringGrid; const FileName: TFileName);
var
  f:          TextFile;
  iTmp, i, k: Integer;
  strTemp:    String;
begin
  AssignFile(f, FileName);
  Reset(f);
  with StringGrid do
  begin
   Readln(f, iTmp);
    ColCount := iTmp;
   Readln(f, iTmp);
    RowCount := iTmp;
   for i := 0 to ColCount - 1 do
      for k := 0 to RowCount - 1 do
      begin
        Readln(f, strTemp);
        Cells[i, k] := strTemp;
      end;
  end;
  CloseFile(f);
end;

procedure TfmAddEditEntry.TrackBar1Change(Sender: TObject);
begin
ProgressBar1.Position:= TrackBar1.Position;
end;

procedure TfmAddEditEntry.Button1Click(Sender: TObject);
begin
panel1.Visible:= not  panel1.Visible;
end;

procedure TfmAddEditEntry.MonthCalendar1Click(Sender: TObject);
begin
labelededit2.Text:= datetostr(MonthCalendar1.Date);
MonthCalendar1.Visible:= false;
end;

procedure TfmAddEditEntry.qqClick(Sender: TObject);
begin
if  labelededit2.Text=''then
MonthCalendar1.Date:= now else MonthCalendar1.Date:= strtodate(labelededit2.Text);
MonthCalendar1.Visible:= true;
end;

procedure TfmAddEditEntry.renumber;
begin
with fmAddEditEntry.StringGrid1 do
begin
if (select_row>0)then
Cells[1,select_row]:= inttostr(select_row) ;
end;

end;

procedure TfmAddEditEntry.Button2Click(Sender: TObject);
begin
panel1.Visible:= not  panel1.Visible;
end;

procedure TfmAddEditEntry.FormCreate(Sender: TObject);
begin

Edit4.CharCase:= ecUpperCase;
labelededit1.CharCase:=ecUpperCase;
labelededit2.CharCase:=ecUpperCase;
labelededit3.CharCase:=ecUpperCase;
labelededit4.CharCase:=ecUpperCase;
labelededit5.CharCase:=ecUpperCase;
labelededit6.CharCase:=ecUpperCase;
labelededit7.CharCase:=ecUpperCase;
labelededit8.CharCase:=ecUpperCase;
labelededit9.CharCase:=ecUpperCase;
labelededit10.CharCase:=ecUpperCase;
labelededit11.CharCase:=ecUpperCase;
labelededit12.CharCase:=ecUpperCase;
labelededit13.CharCase:=ecUpperCase;
labelededit14.CharCase:=ecUpperCase;
labelededit15.CharCase:=ecUpperCase;
labelededit16.CharCase:=ecUpperCase;
labelededit17.CharCase:=ecUpperCase;
GridAddColumn(StringGrid1,StringGrid1.ColCount,'№');
GridAddColumn(StringGrid1,StringGrid1.ColCount,'Вид работы');
GridAddColumn(StringGrid1,StringGrid1.ColCount,'Стоимость');
GridAddColumn(StringGrid1,StringGrid1.ColCount,'Количество');
GridAddColumn(StringGrid1,StringGrid1.ColCount,'Ответственный');
GridAddColumn(StringGrid1,StringGrid1.ColCount,'Всего');
GridAddColumn(StringGrid1,StringGrid1.ColCount,'Выполнено');
GridAddColumn(StringGrid1,StringGrid1.ColCount,'Оплата');

end;

procedure TfmAddEditEntry.Button3Click(Sender: TObject);
begin
Panel2.Visible:= not Panel2.Visible;
end;

procedure TfmAddEditEntry.Button4Click(Sender: TObject);
begin
Panel2.Visible:= not Panel2.Visible;
end;

procedure TfmAddEditEntry.StringGrid1GetEditText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
var
  x, y, w: integer;
MaxWidth: integer;
begin

with StringGrid1 do

   with StringGrid1 do
   begin
     for x := 0 to ColCount - 1 do
     begin
       MaxWidth := 0;
       for y := 0 to RowCount - 1 do
       begin
         w := Canvas.TextWidth(Cells[x,y]);
         if w > MaxWidth then
           MaxWidth := w;
       end;
       ColWidths[x] := MaxWidth + 5;
     end;
   end;
   

     with StringGrid1 do
   begin
       for y := 1 to RowCount - 1 do
       if  (StringGrid1.Cells[2,y]<>'') then
        g1:= strtoint(StringGrid1.Cells[2,y]);
       if  (StringGrid1.Cells[3,y]<>'') then
        g2:= strtoint(StringGrid1.Cells[3,y]);
        summa:= g1+g2;
        StringGrid1.Cells[5,y]:= inttostr(summa);
     end;


end;

procedure TfmAddEditEntry.StringGrid1SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
 var


  x, y, w: integer;
MaxWidth: integer;
begin

with StringGrid1 do
  // ClientHeight := DefaultRowHeight * RowCount + 5;
   with StringGrid1 do
   begin
     for x := 0 to ColCount - 1 do
     begin
       MaxWidth := 0;
       for y := 0 to RowCount - 1 do
       begin
         w := Canvas.TextWidth(Cells[x,y]);
         if w > MaxWidth then
           MaxWidth := w;
       end;
       ColWidths[x] := MaxWidth + 5;
     end;
   end;

   renumber;
    
end;

procedure TfmAddEditEntry.StringGrid1Enter(Sender: TObject);
  var
  x, y, w: integer;
MaxWidth: integer;
begin
summa_:= 0;
summa:= 0;
   with StringGrid1 do
   begin
       for y := 1 to RowCount - 1 do   begin
       if  (StringGrid1.Cells[2,y]<>'') then
        g1:= strtoint(StringGrid1.Cells[2,y]);
       if  (StringGrid1.Cells[3,y]<>'') then
        g2:= strtoint(StringGrid1.Cells[3,y]);
        summa:= g1*g2;

        if   (StringGrid1.Cells[2,y]<>'')and(StringGrid1.Cells[3,y]<>'') then begin
        StringGrid1.Cells[5,y]:= inttostr(summa);
          summa_:= summa_+summa;
        edit4.Text:= inttostr(summa_);
        end;  end;
     end;

with StringGrid1 do
   with StringGrid1 do
   begin
     for x := 0 to ColCount - 1 do
     begin
       MaxWidth := 0;
       for y := 0 to RowCount - 1 do
       begin


         w := Canvas.TextWidth(Cells[x,y]);
         if w > MaxWidth then
           MaxWidth := w;
       end;
       ColWidths[x] := MaxWidth + 5;
     end;
   end;
     
renumber;


end;

procedure TfmAddEditEntry.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

renumber;
end;

Procedure GridRemoveColumn(StrGrid: TStringGrid; DelColumn: Integer);
Var Column: Integer;
begin
If DelColumn <= StrGrid.ColCount then
Begin
   For Column := DelColumn To StrGrid.ColCount-1 do
     StrGrid.Cols[Column-1].Assign(StrGrid.Cols[Column]);
   StrGrid.ColCount := StrGrid.ColCount-1;
End;
end;

Procedure tfmAddEditEntry.GridAddColumn(StrGrid: TStringGrid; NewColumn: Integer; ColName: string);
Var Column: Integer;
x, y, w: integer;
MaxWidth: integer;
begin
StrGrid.ColCount := StrGrid.ColCount+1;
For Column := StrGrid.ColCount-1 downto NewColumn do
   StrGrid.Cols[Column].Assign(StrGrid.Cols[Column-1]);
StrGrid.Cols[NewColumn-1].Text := ColName;

with StringGrid1 do
   with StringGrid1 do
   begin
     for x := 0 to ColCount - 1 do
     begin
       MaxWidth := 0;
       for y := 0 to RowCount - 1 do
       begin
         w := Canvas.TextWidth(Cells[x,y]);
         if w > MaxWidth then
           MaxWidth := w;
       end;
       ColWidths[x] := MaxWidth + 5;
     end;
   end;

end;



procedure TfmAddEditEntry.StringGrid1KeyPress(Sender: TObject;
  var Key: Char);
var
s: string;
c: Byte;
  x, y, w: integer;
MaxWidth: integer;
begin
with StringGrid1 do
   s := Cells[Col, Row];
if Length(s) = 0 then
begin
   if Key in ['a'..'z'] then
   begin
     c := Ord(Key) - 32;
     Key := Chr(c);
   end;
   exit;
end;
if s[Length(s)] = ' ' then
   if Key in ['a'..'z'] then
   begin
     c := Ord(Key) - 32;
     Key := Chr(c);
   end;


with StringGrid1 do
  // ClientHeight := DefaultRowHeight * RowCount + 5;
   with StringGrid1 do
   begin
     for x := 0 to ColCount - 1 do
     begin
       MaxWidth := 0;
       for y := 0 to RowCount - 1 do
       begin
         w := Canvas.TextWidth(Cells[x,y]);
         if w > MaxWidth then
           MaxWidth := w;
       end;
       ColWidths[x] := MaxWidth + 5;
     end;
   end;

end;

procedure TfmAddEditEntry.FormShow(Sender: TObject);
begin
  //fmAddEditEntry.renumber;
end;

procedure TfmAddEditEntry.btOkClick(Sender: TObject);
begin
SaveStringGrid(stringgrid1,fmmain.dbpath+form2.edit1.Text+'.'+labelededit1.Text);
end;

procedure TfmAddEditEntry.StringGrid1Click(Sender: TObject);
begin
sel:= StringGrid1.row;
StringGrid1Enter(Sender);
end;

end.
