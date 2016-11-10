program teh_center;

uses
  Forms,
  uMain in 'uMain.pas' {fmMain},
  uStruct in 'uStruct.pas',
  uAbout in 'uAbout.pas' {fmAbout},
  uAddEditEntry in 'uAddEditEntry.pas' {fmAddEditEntry},
  uSearch in 'uSearch.pas' {fmSearch},
  personal in 'personal.pas' {settings_form},
  pass in 'pass.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  bmp_ in 'bmp_.pas',
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {Form7},
  Unit8 in 'Unit8.pas' {Form8};

{$R *.res}

begin
  Application.Title := 'าลีึลอาะ';
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  form7.Show;
  form7.Update;
  Application.CreateForm(TForm2, Form2);
  form7.Label3.Caption:= form7.Label3.Caption+'.';
  form7.Label3.Update;
  Application.CreateForm(TSettings_Form, Settings_Form);
  form7.Label3.Caption:= form7.Label3.Caption+'.';
  form7.Label3.Update;
  Application.CreateForm(TForm3, Form3);
  form7.Label3.Caption:= form7.Label3.Caption+'.';
  form7.Label3.Update;
  Application.CreateForm(TForm4, Form4);
  form7.Label3.Caption:= form7.Label3.Caption+'.';
  form7.Label3.Update;
  Application.CreateForm(TForm5, Form5);
  form7.Label3.Caption:= form7.Label3.Caption+'.';
  form7.Label3.Update;
  Application.CreateForm(TForm6, Form6);
  form7.Label3.Caption:= form7.Label3.Caption+'.';
  form7.Label3.Update;
   form7.Close;
  form2.ShowModal;
  
  Application.Run;
end.
