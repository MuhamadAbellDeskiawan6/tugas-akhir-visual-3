program PenjualanKamera;

uses
  Forms,
  Ukustomer in 'Ukustomer\Ukustomer.pas' {Form1},
  Ubarang in 'Ubarang\Ubarang.pas' {Form2},
  Usupplier in 'Usupplier\Usupplier.pas' {Form3},
  Ustok in 'Ustok\Ustok.pas' {Form4},
  Uuser in 'Uuser\Uuser.pas' {Form5},
  Ulogin in 'Ulogin\Ulogin.pas' {Form6},
  Udaftar in 'Udaftar\Udaftar.pas' {Form7},
  Upembelian in 'Upembelian\Upembelian.pas' {Form8},
  Upenjualan in 'Upenjualan\Upenjualan.pas' {Form9},
  Ureturn in 'Ureturn\Ureturn.pas' {Form10},
  Udetailreturn in 'Udetailreturn\Udetailreturn.pas' {Form11},
  Udetailjual in 'Udetailjual\Udetailjual.pas' {Form12},
  Udetailbeli in 'Udetailbeli\Udetailbeli.pas' {Form13},
  Umenu in 'Umenu\Umenu.pas' {Form14};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
