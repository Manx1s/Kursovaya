unit UFasad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.MPlayer, Unit1;

type
  IFasad = interface
    function getLabel1: TLabel;
    function getComboBox1: TComboBox;
    function getMediaPlayer1:TMediaPlayer;
  end;

  TFasad = class(TInterfacedObject, IFasad)
  private
    /// <link>aggregation</link>
    Form1: TForm1;
    /// <link>aggregation</link>
    Timer1: TTimer;
    /// <link>aggregation</link>
    TrackBar1: TTrackBar;
    /// <link>aggregation</link>
    Label1: TLabel;
    /// <link>aggregation</link>
    ComboBox1: TComboBox;
    /// <link>aggregation</link>
    MediaPlayer1: TMediaPlayer;
    procedure createTimer1();
    procedure createLabel1();
    procedure createComboBox1();
    procedure createMediaPlayer1();
    procedure Timer1Timer(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
    var DoDefault: Boolean);
    procedure MediaPlayer1Notify(Sender: TObject);
  public
    constructor Create(Application: TApplication);
    function getComboBox1: TComboBox;
    function getLabel1: TLabel;
    function getTimer1: TTimer;
    function getMediaPlayer1:TMediaPlayer;

  end;

implementation

{ Fasad }

procedure TFasad.ComboBox1Change(Sender: TObject);
begin

end;

constructor TFasad.Create(Application: TApplication);
begin
  Application.CreateForm(TForm1, Form1);
  // Form1:= TForm1.Create(nil);
  createLabel1;
  createTimer1;
  createComboBox1;
  createMediaPlayer1;
end;

procedure TFasad.createComboBox1;
begin
  ComboBox1 := TComboBox.Create(Form1);
  ComboBox1.Parent:=Form1;
  with ComboBox1 do
  begin
    Left := 160;
    Top := 299;
    Width := 145;
    Height := 21;
    TabOrder := 5;
    Text := 'dtAutoSelect';
    OnChange := ComboBox1Change;
    Items.Add('dtAutoSelect');
    Items.Add('dtAVIVideo');
    Items.Add('dtCDAudio');
    Items.Add('dtDAT');
    Items.Add('dtDigitalVideo');
    Items.Add('dtMMMovie');
    Items.Add('dtOther');
    Items.Add('dtOverlay');
    Items.Add('dtScanner');
    Items.Add('dtSequencer');
    Items.Add('dtVCR');
    Items.Add('dtVideodisc');
    Items.Add('dtWaveAudio');
  end;
end;

procedure TFasad.createLabel1;
begin
  Label1 := TLabel.Create(Form1);
  Label1.Parent:=Form1;
  with Label1 do
  begin
    Left := 8;
    Top := 302;
    Width := 132;
    Height := 13;
    Caption :=
      #1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1080#1087' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
  end;
end;

procedure TFasad.createMediaPlayer1;
begin

    MediaPlayer1:=TMediaPlayer.Create(Form1);
    MediaPlayer1.Parent:=Form1;
    with MediaPlayer1 do
    begin
    Left:= 8;
    Top:= 8;
    Width:= 253;
    Height:=30;
    TabOrder:=0;
    OnClick := MediaPlayer1Click;
    OnNotify := MediaPlayer1Notify;
  end
end;

procedure TFasad.createTimer1;
begin
  Timer1 := TTimer.Create(nil);
  with Timer1 do
  begin
    OnTimer := Timer1Timer;
  end;
end;

function TFasad.getComboBox1: TComboBox;
begin
  Result := ComboBox1;
  { case ComboBox1.ItemIndex of
    0:
    MediaPlayer1.DeviceType := dtAutoSelect;
    1:
    MediaPlayer1.DeviceType := dtAVIVideo;
    2:
    MediaPlayer1.DeviceType := dtCDAudio;
    3:
    MediaPlayer1.DeviceType := dtDAT;
    4:
    MediaPlayer1.DeviceType := dtDigitalVideo;
    5:
    MediaPlayer1.DeviceType := dtMMMovie;
    6:
    MediaPlayer1.DeviceType := dtOther;
    7:
    MediaPlayer1.DeviceType := dtOverlay;
    8:
    MediaPlayer1.DeviceType := dtScanner;
    9:
    MediaPlayer1.DeviceType := dtSequencer;
    10:
    MediaPlayer1.DeviceType := dtVCR;
    11:
    MediaPlayer1.DeviceType := dtVideodisc;
    12:
    MediaPlayer1.DeviceType := dtWaveAudio;
    end; }
end;

function TFasad.getLabel1: TLabel;
begin
  Result := Label1;
end;

function TFasad.getMediaPlayer1: TMediaPlayer;
begin

end;

function TFasad.getTimer1: TTimer;
begin

end;

procedure TFasad.Timer1Timer(Sender: TObject);
begin
  // TrackBar1.Position := MediaPlayer1.Position;
end;

procedure TFasad.MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
  var DoDefault: Boolean);
begin
  MediaPlayer1.Notify := true;
  if Button = btPlay then
  begin
    MediaPlayer1.EnabledButtons := T - [btPlay];
    MediaPlayer1.Position := TrackBar1.Position;
    Timer1.Enabled := true;
  end;
  if Button = btPause then
    MediaPlayer1.EnabledButtons := T - [btPause];
  if Button = btStop then
    MediaPlayer1.EnabledButtons := T - [btPause, btStop];

end;

procedure TFasad.MediaPlayer1Notify(Sender: TObject);
begin
  if (MediaPlayer1.Mode = mpPaused) then
    Timer1.Enabled := false;
  if (MediaPlayer1.Mode = mpStopped) then
  begin
    Timer1.Enabled := false;
    TrackBar1.Position := 0;
    MediaPlayer1.Rewind;
  end;
  if (MediaPlayer1.Mode = mpPlaying) then
    Timer1.Enabled := true;
end;


end.
