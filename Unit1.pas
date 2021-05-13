unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.MPlayer;

type
  TForm1 = class(TForm)
    /// <link>aggregation</link>
    OpenDialog1: TOpenDialog;
    /// <link>aggregation</link>
    Timer1: TTimer;
    /// <link>aggregation</link>
    TrackBar1: TTrackBar;
    /// <link>aggregation</link>
    Button1: TButton;
    /// <link>aggregation</link>
    CheckBox1: TCheckBox;
    /// <link>aggregation</link>
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  {  procedure MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
      var DoDefault: Boolean);
    procedure MediaPlayer1Notify(Sender: TObject);
   } procedure CheckBox1Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  T: TButtonSet;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 // MediaPlayer1.EnabledButtons := T - [btPlay];
  if OpenDialog1.Execute then
  begin
  //  MediaPlayer1.FileName := OpenDialog1.FileName;
   // MediaPlayer1.Frames := 1;
    //MediaPlayer1.Open;
   // MediaPlayer1.Play;
  end;
  //MediaPlayer1.Notify := true;
  //TrackBar1.Min := 0;
  //TrackBar1.Max := MediaPlayer1.Length;
  Timer1.Enabled := true;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    //MediaPlayer1.Display := Button1
  else
   // MediaPlayer1.Display := Panel1;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  Label1: TLabel;
  ComboBox1: TComboBox;
begin
{
  Fasad := TFasad.Create();

  Label1 := Fasad.getLabel1;
  Label1.Parent := Self;
  ComboBox1 := Fasad.getComboBox1;
  ComboBox1.Parent := Self;
}
 // T := MediaPlayer1.EnabledButtons;
 // MediaPlayer1.EnabledButtons := [];
end;

{procedure TForm1.MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
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

procedure TForm1.MediaPlayer1Notify(Sender: TObject);
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
    }
procedure TForm1.Timer1Timer(Sender: TObject);
begin
  //TrackBar1.Position := MediaPlayer1.Position;
end;

end.
