unit uAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ShellAPI, PNGImage;

type
  TfmAbout = class(TForm)
    imgFlag: TImage;
    laMadeInRussia: TLabel;
    laCopyright: TLabel;
    btOk: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    imgMain: TImage;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  fmAbout: TfmAbout;

implementation

uses uMain;

{$R *.dfm}



procedure TfmAbout.FormCreate(Sender: TObject);
begin
image1.Picture.LoadFromFile(fmmain.apppath+'\icons\logo.png');
end;

end.
