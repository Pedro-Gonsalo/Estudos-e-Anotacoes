unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    lbxTecnologias: TListBox;
    lbxHabilidades: TListBox;
    BtnToHabilidade: TSpeedButton;
    BtnToAllTecnologias: TSpeedButton;
    BtnToAllHabilidade: TSpeedButton;
    BtnToTecnologias: TSpeedButton;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    procedure BtnToHabilidadeClick(Sender: TObject);
    procedure BtnToTecnologiasClick(Sender: TObject);
    procedure BtnToAllHabilidadeClick(Sender: TObject);
    procedure BtnToAllTecnologiasClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure lbxTecnologiasDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lbxHabilidadesDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lbxTecnologiasDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lbxHabilidadesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
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
close;
end;

procedure TForm4.BtnToAllHabilidadeClick(Sender: TObject);
var
  Item: String;
begin
  for Item in lbxTecnologias.Items do
  begin
    lbxHabilidades.Items.Append(Item);
  end;
  lbxTecnologias.Clear;
end;

procedure TForm4.BtnToAllTecnologiasClick(Sender: TObject);
var
  Item: String;
begin
  for Item in lbxHabilidades.Items do
  begin
    lbxTecnologias.Items.Append(Item);
  end;
  lbxHabilidades.Clear;
end;

procedure TForm4.BtnToHabilidadeClick(Sender: TObject);
begin
  if lbxTecnologias.ItemIndex > -1 then
  begin
    lbxHabilidades.Items.Add(lbxTecnologias.Items[lbxTecnologias.ItemIndex]);
    lbxTecnologias.DeleteSelected;
  end;
end;

procedure TForm4.BtnToTecnologiasClick(Sender: TObject);
begin
  if lbxHabilidades.ItemIndex > -1 then
  begin
    lbxTecnologias.Items.Add(lbxHabilidades.Items[lbxHabilidades.ItemIndex]);
    lbxHabilidades.DeleteSelected;
  end;
end;

procedure TForm4.lbxHabilidadesDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  BtnToHabilidadeClick(sender);
end;

procedure TForm4.lbxHabilidadesDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source <> Sender; // S� aceita o drop se a origem for diferente de quem est� arrastando
end;

procedure TForm4.lbxTecnologiasDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  BtnToTecnologiasClick(Sender); // Sender = Quem invocou este m�todo
end;

procedure TForm4.lbxTecnologiasDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source <> Sender;
end;

end.

(* ANOTA��ES

- Bevel: Exibe um quadro, painel ou caixa sobre um formul�rio ou componente-imagem com efeito
tridimensional.

- Drag and drop
  - Propriedade: dragmode := autotomatic
  - Eventos: dragdrop, dragover

*)
