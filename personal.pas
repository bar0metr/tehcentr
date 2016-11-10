unit personal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ShellCtrls;

type
  Tsettings_form = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    LabeledEdit3: TLabeledEdit;
    ShellTreeView1: TShellTreeView;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    ch1: TCheckBox;
    Bevel2: TBevel;
    ch2: TCheckBox;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  settings_form: Tsettings_form;

implementation
 uses umain, pass;
{$R *.dfm}

procedure Tsettings_form.Button1Click(Sender: TObject);
var
s,m: string;
begin
memo1.Clear;
memo1.Lines.Add(fmMain.Decode(LabeledEdit1.Text));
memo1.Lines.Add(fmMain.Decode(LabeledEdit2.Text));
memo1.Lines.Add(fmMain.Decode(LabeledEdit3.Text));
deletefile(fmmain.dbpath+LabeledEdit3.Text);
memo1.Lines.SaveToFile(fmmain.dbpath+LabeledEdit3.Text);
fmmain.Caption:= 'าลีึลอาะ '+'('+fmmain.Decode(Settings_Form.Memo1.Lines.Strings[0])+')';

fmmain.writeini('db','db_path',ShellTreeView1.Path+'\');

memo2.Clear;
if ch1.Checked then
begin
s:= 'yes';
memo2.Lines.Add(fmMain.Decode(labelededit3.Text))
end
else
begin
s:= 'no';
memo2.Lines.Add(fmMain.Decode(labelededit3.Text))
end;

if ch2.Checked then
begin
m:= 'yes';
memo2.Lines.Add(fmMain.Decode(labelededit2.Text))
end
else
begin
m:= 'no';
memo2.Lines.Add(fmMain.Decode(labelededit2.Text));
end;

fmmain.writeini('Comfort','showuser',s);
fmmain.writeini('Comfort','inspass',m);

memo2.Lines.SaveToFile(fmmain.apppath+'last');
close;
end;

procedure Tsettings_form.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tsettings_form.FormCreate(Sender: TObject);
begin
 shelltreeview1.Path:= fmmain.dbpath;
 memo2.Lines.LoadFromFile(fmmain.apppath+'last');
 if fmmain.readini('Comfort','showuser')='yes' then
 begin
Settings_Form.ch1.Checked:= true;
form2.Edit1.Text:= fmmain.Decode(Settings_Form.Memo2.Lines.Strings[0]);
end
else Settings_Form.ch1.Checked:= false;
if fmmain.readini('Comfort','inspass')='yes' then
begin
Settings_Form.ch2.Checked:= true;
form2.Edit2.Text:= fmmain.Decode(Settings_Form.Memo2.Lines.Strings[1]);
end
 else Settings_Form.ch2.Checked:= false;
end;

procedure Tsettings_form.ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
begin
Label3.Caption:= ShellTreeView1.Path;
end;

end.
