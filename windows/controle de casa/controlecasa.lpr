program controlecasa;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, main, Controle, Despertador,
  computador, multimidia, Cameras, espeak, Alarme, setup, Dados, mplayer
  { you can add units after this };

{$R *.res}

begin
  //RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfrmControle, frmControle);
  Application.Run;
end.

