program samples;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.Paginate,
  Horse.Jhonson,
  DataSet.Serialize,
  System.JSON,
  ServicesBairro in 'src\services\ServicesBairro.pas' {ServiceBairro: TDataModule};

var
  App: THorse;

begin
  App := THorse.Create();

  App.Use(Paginate);
  App.Use(Jhonson);

  App.Get('/bairros',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      LService: TServiceBairro;
    begin
      LService := TServiceBairro.Create(nil);
      try
        Res.Send<TJSONArray>(LService.Listar.ToJSONArray());
      finally
        LService.Free;
      end;
    end);

  App.Listen(9000);
end.
