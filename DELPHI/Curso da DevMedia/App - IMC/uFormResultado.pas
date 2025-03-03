unit uFormResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDadosPessoa;

type
  TFormResultado = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LAltura: TLabel;
    LPeso: TLabel;
    LSexo: TLabel;
    LIMC: TLabel;
    LConclusao: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResultado: TFormResultado;

implementation

{$R *.dfm}

procedure TFormResultado.FormShow(Sender: TObject);
begin
  LAltura.Caption := FloatToStr(P_Dados_Pessoa.Altura);
  LPeso.Caption := FloatToStr(P_Dados_Pessoa.Peso);
  LSexo.Caption := P_Dados_Pessoa.Sexo;
  lIMC.Caption := P_Dados_Pessoa.IMC;
  LConclusao.Caption := P_Dados_Pessoa.Conclusao_imc;
end;

end.
