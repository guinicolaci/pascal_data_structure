program ListaEncadeada;
type
    PNo = ^TNo;
    TNo = record
        dado: integer;
        prox: PNo;
    end;

var
    cabeca, cauda, temp: PNo;
    i: integer;

begin
    cabeca := nil;
    cauda := nil;

    for i := 1 to 10 do
    begin
        new(temp);
        temp^.dado := i;
        temp^.prox := nil;

        if cabeca = nil then
            cabeca := temp
        else
            cauda^.prox := temp;

        cauda := temp;
    end;

    temp := cabeca;
    while temp <> nil do
    begin
        writeln(temp^.dado);
        temp := temp^.prox;
    end;
end.

// cria uma lista encadeada de 10 nós. 
// cada nó contém um número inteiro de 1 a 10. O programa
//  então percorre a lista e imprime o valor de cada nó.