program CriaNo;
type
    PNo = ^TNo;
    TNo = record
        dado: integer;
        prox: PNo;
    end;

var
    no: PNo;

begin
    new(no);
    no^.dado := 10;
    no^.prox := nil;

    writeln('Nó criado com o dado: ', no^.dado);
    dispose(no);
end.

//  cria um nó com o dado 10 e, em seguida,
//  imprime o dado do nó. Por fim, 
//  ele libera a memória alocada para o nó.