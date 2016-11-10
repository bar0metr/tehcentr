unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm8 = class(TForm)
    MonthCalendar1: TMonthCalendar;
    MonthCalendar2: TMonthCalendar;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    RichEdit1: TRichEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
   n_index,k_index: longint;
implementation
 uses  uMain, uStruct, personal;
{$R *.dfm}

procedure TForm8.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
 MonthCalendar1.Date:= now;
 MonthCalendar2.Date:= now;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
richedit1.Print('Печать отчета');
end;

procedure AddColoredLine(ARichEdit: TRichEdit; AText: string);
begin
  with ARichEdit do
  begin
    SelStart := Length(Text);
    SelAttributes.Style:= [fsbold];
    SelAttributes.Size := 14;
    SelAttributes.Name := 'Times New Roman';
    Lines.Add(AText);
  end;

end;


procedure TForm8.Button1Click(Sender: TObject);
var
  TempIndex: TComputer;
  q: String;
  g: boolean;
  j: longint;
  itogo: longint;
begin
n_index:=0;
k_Index:= 0;
 richedit1.Clear;
  q:=datetostr(MonthCalendar1.Date);
g:= false;

  Seek(ComputerFile, 0);
  j:= 0;
  while not g=true do
    begin
      Read(ComputerFile, TempIndex);

      if Pos(q, TempIndex.data) <> 0 then
        begin
        g:= true;
        n_index:= j;
        end;
           j:= j+1;
    end;


  q:=datetostr(MonthCalendar2.Date);

  Seek(ComputerFile, 0);
  j:= 0;
  while not EOF(ComputerFile) do
    begin
      Read(ComputerFile, TempIndex);

      if (Pos(q, TempIndex.data) <> 0)
       then
        begin
         k_index:= j;

        end;
           j:= j+1;
    end;
 itogo:= 0;
 AddColoredLine(richedit1,' Отчет ТЕХЦЕНТР');
 richedit1.Lines.Add('     мастер - '+Settings_Form.LabeledEdit1.Text);
 richedit1.Lines.Add(' ________________________________');
  richedit1.Lines.Add('              ');
 for j:= n_index to k_index do
 begin
 richedit1.Lines.Add(' > '+fmmain.lvMain.Items[j].SubItems[0]+
 ' - '+fmmain.lvMain.Items[j].SubItems[1]+ ' ('+
 fmmain.lvMain.Items[j].SubItems[12]+' рублей)');
 itogo:= itogo+strtoint(fmmain.lvMain.Items[j].SubItems[12]);
 end;
richedit1.Lines.Add(' ________________________________');
AddColoredLine(richedit1,'  ИТОГО: '+inttostr(itogo)+' рублей');
richedit1.Lines.Add(' ');
richedit1.Lines.Add(' ============================');
richedit1.Lines.Add(' Отчет сформирован '+datetostr(now)+ ' программой ТЕХЦЕНТР 1.0 ');
Button2.Enabled:= true;
end;

end.
