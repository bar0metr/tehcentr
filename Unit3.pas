unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids;

type

  TForm3 = class(TForm)
    RichEdit1: TRichEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    PrintDialog1: TPrintDialog;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    RichEdit2: TRichEdit;
    Bevel1: TBevel;
    Button3: TButton;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    function Search_And_Replace(RichEdit: TRichEdit; 
  SearchText, ReplaceText: string): Boolean;
  procedure insertpic;
  procedure insertpic2;
  end;

var
  Form3: TForm3;
implementation

uses uMain,bmp_;

{$R *.dfm}

function TForm3.Search_And_Replace(RichEdit: TRichEdit;
  SearchText, ReplaceText: string): Boolean;
var 
  startpos, Position, endpos: integer; 
begin
  startpos := 0; 
  with RichEdit do 
  begin 
    endpos := Length(RichEdit.Text); 
    Lines.BeginUpdate; 
    while FindText(SearchText, startpos, endpos, [stMatchCase])<>-1 do 
    begin 
      endpos   := Length(RichEdit.Text) - startpos; 
      Position := FindText(SearchText, startpos, endpos, [stMatchCase]); 
      Inc(startpos, Length(SearchText)); 
      SetFocus;
      SelStart  := Position; 
      SelLength := Length(SearchText); 
      richedit.clearselection; 
      SelText := ReplaceText; 
    end; 
    Lines.EndUpdate; 
  end; 
end;


function BitmapToRTF(pict: TBitmap): string; 
var 
bi,bb,rtf: string; 
bis,bbs: Cardinal; 
achar: ShortString; 
hexpict: string; 
I: Integer; 
begin 
GetDIBSizes(pict.Handle,bis,bbs); 
SetLength(bi,bis); 
SetLength(bb,bbs); 
GetDIB(pict.Handle,pict.Palette,PChar(bi)^,PChar(bb)^);
rtf := '{\rtf1 {\pict\dibitmap '; 
SetLength(hexpict,(Length(bb) + Length(bi)) * 2); 
I := 2; 
for bis := 1 to Length(bi) do 
begin
achar := Format('%x',[Integer(bi[bis])]);
if Length(achar) = 1 then 
achar := '0' + achar; 
hexpict[I-1] := achar[1]; 
hexpict[I] := achar[2]; 
Inc(I,2); 
end; 
for bbs := 1 to Length(bb) do 
begin 
achar := Format('%x',[Integer(bb[bbs])]); 
if Length(achar) = 1 then 
achar := '0' + achar; 
hexpict[I-1] := achar[1]; 
hexpict[I] := achar[2]; 
Inc(I,2); 
end; 
rtf := rtf + hexpict + ' }}'; 
Result := rtf; 
end;

function SearchForText_AndSelect(RichEdit: TRichEdit; SearchText: string): Boolean;
var
StartPos, Position, Endpos: Integer;
begin
StartPos := 0;
with RichEdit do
begin
   Endpos := Length(RichEdit.Text);
   Lines.BeginUpdate;
   while FindText(SearchText, StartPos, Endpos, [stMatchCase])<>-1 do 
   begin
     Endpos   := Length(RichEdit.Text) - startpos; 
     Position := FindText(SearchText, StartPos, Endpos, [stMatchCase]);
     Inc(StartPos, Length(SearchText));
     SetFocus;
     SelStart  := Position;
     SelLength := Length(SearchText);
   end;
   Lines.EndUpdate;
end; 

end; 

procedure tform3.insertpic;
begin
image1.Picture.LoadFromFile(fmmain.apppath+'logo.bmp');
SearchForText_AndSelect(richedit1,'######################');
InsertBitmapToRE(RichEdit1.Handle,Image1.Picture.Bitmap.Handle);
SearchForText_AndSelect(richedit1,'++++++++++++++++++');
InsertBitmapToRE(RichEdit1.Handle,Image1.Picture.Bitmap.Handle);

end;

procedure tform3.insertpic2;
begin
image1.Picture.LoadFromFile(fmmain.apppath+'logo.bmp');
SearchForText_AndSelect(richedit2,'######################');
InsertBitmapToRE(RichEdit2.Handle,Image1.Picture.Bitmap.Handle);
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
form3.Panel2.Visible:= true;
form3.close;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
form3.Panel2.Visible:= true;
form3.close;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
if PrintDialog1.Execute then  richedit1.Print('Печать Карточки о приеме в ремонт и гарантийного талона');
if PrintDialog1.Execute then  richedit2.Print('Печать Карточки ремонта изделия');
close;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form3.Panel2.Visible:= true;
end;

end.
