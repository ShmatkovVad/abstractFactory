unit Unit1;

interface

Type
  AbstractProductA = class
  Public
    function print: string; virtual; abstract;
  end;

  ProductA1 = class(AbstractProductA)
  Public
    function print: string; override;
  end;

  ProductA2 = class(AbstractProductA)
  Public
    function print: string; override;
  end;

  AbstractProductB = class
  Public
    Function print: string; virtual; abstract;
  end;

  ProductB1 = class(AbstractProductB)
  Public
    Function print: string; override;
  end;

  ProductB2 = class(AbstractProductB)
  Public
    Function print: string; override;
  end;

  AbstractFactory = class
  Public
    Function CreateProductA: string; virtual; abstract;
    Function CreateProductB: string; virtual; abstract;
  end;

  ConcreteFactory2 = class(AbstractFactory)
  Private
    ProductA22: ProductA2;
    ProductB22: ProductB2;
  Public
    Function CreateProductA: string; override;
    Function CreateProductB: string; override;
  Published
    Constructor create;

  end;

  ConcreteFactory1 = class(AbstractFactory)
  Private
    ProductA11: ProductA1;
    ProductB11: ProductB1;
  Public
    Function CreateProductA: string; override;
    Function CreateProductB: string; override;
  Published
    constructor create;

  end;

  { ProductB1 }

  { ProductB2 }

  { ConcreteFactory2 }

implementation

{ ProductA2 }

function ProductA2.print: string;
begin
  result := 'ProductA2.print';
end;

{ ProductA1 }

function ProductA1.print: string;
begin
  result := 'ProductA1.print';
end;

{ ProductB1 }

function ProductB1.print: string;
begin
  result := 'ProductB1.print';
end;

{ ProductB2 }

function ProductB2.print: string;
begin
  result := 'ProductB2.print';
end;

{ ConcreteFactory2 }

constructor ConcreteFactory2.create;
begin
  ProductA22 := ProductA2.create;
  ProductB22 := ProductB2.create;
end;

function ConcreteFactory2.CreateProductA: string;
begin
  result := ProductA22.print;
end;

function ConcreteFactory2.CreateProductB: string;
begin
  result := ProductB22.print;

end;

{ ConcreteFactory1 }

constructor ConcreteFactory1.create;
begin
  ProductA11 := ProductA1.create;
  ProductB11 := ProductB1.create;
end;

function ConcreteFactory1.CreateProductA: string;
begin
  result := ProductA11.print;
end;

function ConcreteFactory1.CreateProductB: string;
begin
  result := ProductB11.print;
end;

end.
