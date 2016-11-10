unit uStruct;

interface

type
  TComputer = record
    zakaz_num: String[50];
    data: String[12];
    zakazchik: String[100];
    adres: String[100];
    telefon: String[25];
    izdelie: String[50];
    firma: String[22];
    model: String[25];
    nomer: String[25];
    complect: String[80];
    defects: String[100];
    remont: string[3];
    rem_prog: string[3];
    rub: string[44];
    zap_please: string[3];
    zapchasti: string[250];
    zap_ok:string[3];
    //описание внешнего вида
    verh: string[200];
    niz: string[200];
    prst: string[200];
    levst: string[200];
    peredst: string[200];
    zadst: string[200];
    //
    stoim: string[50];
  end;

  TComputerFile = file of TComputer;



implementation

end.
