unit espeak;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type TSpeak = class(TObject)

 private
   { private declarations }
   ExeName : String;
   ExePath : String;
 public
   { public declarations }
   constructor create();
   procedure falar(Texto : string);
end;

implementation

uses controle;

constructor TSpeak.create();
begin
   {$ifdef windows}
     ExeName := 'espeak.exe';
     ExePath :=  'C:\Program Files (x86)\eSpeak\command_line\';
   {$else}   //linux
     ExeName := 'sh_espeak';
     ExePath :=  frmcontrole.diretorio+'bin\';
   {$endif}
end;

procedure TSpeak.falar(Texto : string);
begin
   {$ifdef windows}
   ExecuteProcess(ExePath+ExeName,'-vpt -p65 -s120 "'+Texto + '"',[]);
   {$else}
   ExecuteProcess('/usr/bin/'+ExeName,' '+Texto + ' ',[]);
   //showmessage(ExePath+ExeName,' '+Texto + ' ');
   {$endif}
end;


end.

