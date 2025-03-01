unit uForm2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uForWards, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure Teste;
    procedure Dobro(Valor: Double);
    procedure DobroRef(var Valor: Double);
    procedure DobroConst(const Valor: Double = 50; Multi: Integer = 2);

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Teste;
end;

procedure TForm2.Button2Click(Sender: TObject);
// CONSTANTE TIPIFICADA
{$J+}
const
  z: Integer = 10;
{$J-}
begin
  z := z + 10;
  ShowMessage(IntToStr(z));
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  x: Double;
begin
  x := 20;
  ShowMessage('Variavel antes: ' + FloatToStr(x));

  Dobro(x);
  ShowMessage('Variavel depois: ' + FloatToStr(x));
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  x: Double;
begin
  x := 20;
  ShowMessage('Variavel antes: ' + FloatToStr(x));

  DobroRef(x);
  ShowMessage('Variavel depois: ' + FloatToStr(x));
end;

procedure TForm2.Button5Click(Sender: TObject);
var
  x: Double;
begin
  x := 20;
  ShowMessage('Variavel antes: ' + FloatToStr(x));

  DobroConst(x, 3); // se n�o passar parametro o retorno ser� de 100 (dobro do valor default que � 50)
  ShowMessage('Variavel depois: ' + FloatToStr(x));
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ShowMessage('Create');
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  ShowMessage('Show');
end;


// M�TODOS

{ Escopo local - s� d� pra usar no mesmo escopo }
procedure TForm2.Teste;
var
  s: String;

  function GetTeste: String;
  var
    t: String;
  begin
    t := 'Texto de teste';
    Result := t;
  end;

begin
  s := GetTeste;
  ShowMessage(s);
end;

procedure TForm2.Dobro(Valor: Double);
begin
  ShowMessage(FloatToStr(Valor*2));
end;

procedure TForm2.DobroRef(var Valor: Double);
begin
  Valor := Valor * 2;
  ShowMessage(FloatToStr(Valor));
end;

procedure TForm2.DobroConst(const Valor: Double; Multi: Integer);
begin
  ShowMessage(FloatToStr(Valor * 2));
end;


end.
