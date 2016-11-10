unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShellCtrls, ZipForge, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    ProgressBar1: TProgressBar;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Archiver: TZipForge;
    ShellTreeView1: TShellTreeView;
    ShellTreeView2: TShellTreeView;
    Label2: TLabel;
    Image1: TImage;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure ShellTreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure ArchiverOverallProgress(Sender: TObject; Progress: Double;
      Operation: TZFProcessOperation; ProgressPhase: TZFProgressPhase;
      var Cancel: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses uMain;

{$R *.dfm}

procedure TForm5.Button4Click(Sender: TObject);
begin
close
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
with Archiver do
    begin
    progressbar1.Position:=0;
        FileName := LabeledEdit2.Text+'\'+datetostr(now)+'.tca';
        OpenArchive(fmCreate);
        BaseDir := LabeledEdit1.Text;
        label2.Caption:= 'Архивирование базы данных...';
        label2.Update;
        AddFiles('*.*',faAnyFile);

          try
          label2.Caption:= 'Проверка упакованной базы';
          label2.Update;
          TestFiles('*.*');
        except
          MessageDlg('Возникла ошибка при архивации!',mtError,[mbOk],0);
        end;
        CloseArchive;
         progressbar1.Position:=0;
        label2.Caption:= 'Готово';
        showmessage('Успешно!');
    end;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
ShellTreeView1.Path:=fmmain.dbpath;
end;

procedure TForm5.ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
begin
LabeledEdit1.Text:= ShellTreeView1.Path;
end;

procedure TForm5.ShellTreeView2Change(Sender: TObject; Node: TTreeNode);
begin
LabeledEdit2.Text:= ShellTreeView2.Path;
end;

procedure TForm5.ArchiverOverallProgress(Sender: TObject; Progress: Double;
  Operation: TZFProcessOperation; ProgressPhase: TZFProgressPhase;
  var Cancel: Boolean);
begin
   progressbar1.Position:=  Round(Progress);
end;

end.
