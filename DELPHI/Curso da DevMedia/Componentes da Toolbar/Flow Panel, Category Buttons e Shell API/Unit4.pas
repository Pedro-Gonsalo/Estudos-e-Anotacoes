unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ShellAnimations, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    PageControl1: TPageControl;
    tbLista: TTabSheet;
    tabCadastro: TTabSheet;
    TabSheet3: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Animate1: TAnimate;
    BitBtn1: TBitBtn;
    ShellResources1: TShellResources;
    DateTimePicker1: TDateTimePicker;
    MonthCalendar1: TMonthCalendar;
    Button3: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
  Animate1.Active := True;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  PageControl1.ActivePage := tabCadastro;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  PageControl1.ActivePage := tbLista;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  tabCadastro.Caption := DateToStr(DateTimePicker1.DateTime);
end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
  TabSheet3.Caption := FormatDateTime('hh:mm:ss',now) ;
end;

end.

(* ANOTA��ES

PageControl: Adiciona abas a aplica��o
- Ocultar abas: TabVisible := False

Animate: exibi anima��es (Precisa adicionar o ShellResource)

TRABALHAR COM DATA
- Componentes: DateTimePicker, MonthCalendar

*)
