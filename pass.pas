unit pass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
   function GetCheckSum(FileName: string): DWORD;
  end;

var
  Form2: TForm2;

implementation

uses personal, uMain;

{$R *.dfm}
function TForm2.GetCheckSum(FileName: string): DWORD;

var 

F: file of DWORD; 

P: Pointer; 

Fsize: DWORD; 

Buffer: array [0..500] of DWORD; 

begin 

FileMode := 0; 

AssignFile(F, FileName); 

Reset(F); 

Seek(F, FileSize(F) div 2); 

Fsize := FileSize(F) - 1 - FilePos(F); 

if Fsize > 500 then Fsize := 500; 

BlockRead(F, Buffer, Fsize); 

//Close(F); 

P := @Buffer; 

asm 

    xor eax, eax 

    xor ecx, ecx 

    mov edi , p 

    @again: 

      add eax, [edi + 4*ecx] 

      inc ecx 

      cmp ecx, fsize 

    jl @again 

    mov @result, eax 

  end; 

end; 

procedure TForm2.Button2Click(Sender: TObject);
begin
fmmain.Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
 i:integer;
 SR:TSearchRec;
 FindRes:Integer;
 Dir1,Dir2:string;
begin
if not FileExists(fmmain.dbpath+edit1.Text) then
begin
showmessage('Такого логина не существует!');
exit;
end;

Settings_Form.Memo1.Lines.LoadFromFile(fmmain.dbpath+edit1.Text);


if fmmain.Decode(Settings_Form.Memo1.Lines.Strings[1])= edit2.Text
then
begin
 if FileExists(fmmain.dbpath+edit1.Text+'.db') then
    fmmain.OpenDBFile(fmmain.dbpath+edit1.Text+'.db')
  else
    fmmain.CreateDBFile(fmmain.dbpath+edit1.Text+'.db');
form2.Close;
Settings_Form.LabeledEdit1.Text:= fmmain.Decode(Settings_Form.Memo1.Lines.Strings[0]);
Settings_Form.LabeledEdit2.Text:= fmmain.Decode(Settings_Form.Memo1.Lines.Strings[1]);
Settings_Form.LabeledEdit3.Text:= fmmain.Decode(Settings_Form.Memo1.Lines.Strings[2]);
fmmain.Show;
fmmain.login:= edit1.Text;
fmmain.Caption:= 'ТЕХЦЕНТР '+'('+fmmain.Decode(Settings_Form.Memo1.Lines.Strings[0])+')';

 i:=0;
 FindRes:=FindFirst(fmmain.dbpath+edit1.Text+'.db',faAnyFile,SR);
 while FindRes=0 do
  begin
   if ((SR.Attr and faDirectory)=faDirectory) and
   ((SR.Name='.')or(SR.Name='..')) then
     begin
      FindRes:=FindNext(SR);
      Continue;
     end;
     fmmain.razmer:= IntToStr(SR.Size);
   Application.ProcessMessages;
   FindRes:=FindNext(SR);
  end;
 FindClose(SR);
 fmmain.Timer1.Enabled:= true;

end
else
 showmessage('Неверный пароль');
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
 Settings_Form.ShowModal;
end;

end.
