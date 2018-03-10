unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit1;

type
  TForm3 = class(TForm)

    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    AbstractFactory1: AbstractFactory;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  AbstractFactory1 := ConcreteFactory2.Create;
  Button3.Caption := AbstractFactory1.CreateProductA;
  Label1.Caption := AbstractFactory1.CreateProductB;
  AbstractFactory1.Destroy;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  AbstractFactory1 := ConcreteFactory1.Create;

  Button3.Caption := AbstractFactory1.CreateProductA;
  Label1.Caption := AbstractFactory1.CreateProductB;
  AbstractFactory1.Destroy;
end;

end.
