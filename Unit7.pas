unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm7 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Bevel1: TBevel;
    Bevel2: TBevel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses uMain;

{$R *.dfm}

procedure TForm7.FormCreate(Sender: TObject);
begin
image1.Picture.LoadFromFile(fmmain.apppath+'\icons\logo.png');
end;

end.
