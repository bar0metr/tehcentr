unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZipForge, ComCtrls, ImgList, ExtCtrls, ShellCtrls;


type
  TForm6 = class(TForm)
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Archiver: TZipForge;
    filelistbox1: TListView;
    ImageList1: TImageList;
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    Panel2: TPanel;
    ShellTreeView1: TShellTreeView;
    Label1: TLabel;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ArchiverOverallProgress(Sender: TObject; Progress: Double;
      Operation: TZFProcessOperation; ProgressPhase: TZFProgressPhase;
      var Cancel: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses uMain;

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
FileListBox1.Clear;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm6.Button1Click(Sender: TObject);
var
 arc:TZFArchiveItem;

begin
if not opendialog1.Execute then exit;
filelistbox1.Clear;
   Archiver.FileName := opendialog1.FileName;
  // Archiver.BaseDir := CurrentDir;
   Archiver.SpanningOptions.AdvancedNaming := False;
   try
   Archiver.OpenArchive(fmOpenRead+fmShareDenyWrite);
   except
    Archiver.OpenCorruptedArchives := true;
    Archiver.OpenArchive(fmOpenRead+fmShareDenyWrite);
   end;
    if (Archiver.FindFirst('*.*',arc,faAnyFile-faDirectory)) then
    repeat
    filelistbox1.Items.Add.Caption:= arc.StoredPath+arc.FileName;
    until (not Archiver.FindNext(arc));
    Archiver.CloseArchive;
    Button2.Enabled:=true;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
panel2.Visible:=true;


end;

procedure TForm6.Button4Click(Sender: TObject);
begin
panel2.Visible:=false;
panel1.Visible:=true;
panel1.Update;
  Archiver.FileName := opendialog1.FileName;
  Archiver.BaseDir := ShellTreeView1.Path;

   try
  Archiver.OpenArchive(fmOpenRead+fmShareDenyWrite);
 except
  MessageDlg('Невозможно открыть архив!', mtError, [mbOk], 0)
 end;
 try
  Archiver.ExtractFiles;
 except
  Archiver.ExtractCorruptedFiles:=true;
  Archiver.ExtractFiles;
 end;
 try
  Archiver.CloseArchive;
 except
  MessageDlg('Ошибка', mtError, [mbOk], 0)
 end;
progressbar1.Position:=0;
panel1.Visible:=false;
Button2.Enabled:=false;
filelistbox1.Clear;
showmessage('Успешно!');

end;

procedure TForm6.Button5Click(Sender: TObject);
begin
panel2.Visible:=false;
end;

procedure TForm6.ArchiverOverallProgress(Sender: TObject; Progress: Double;
  Operation: TZFProcessOperation; ProgressPhase: TZFProgressPhase;
  var Cancel: Boolean);
begin
progressbar1.Position:=  Round(Progress);
end;

end.
