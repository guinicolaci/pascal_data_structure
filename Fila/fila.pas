program Fila;
type
    PNo = ^TNo;
    TNo = record
        dado: integer;
        prox: PNo;
    end;

var
    frente, tras, temp: PNo;
    i: integer;

begin
    frente := nil;
    tras := nil;

    for i := 1 to 10 do
    begin
        new(temp);
        temp^.dado := i;
        temp^.prox := nil;

        if frente = nil then
            frente := temp
        else
            tras^.prox := temp;

        tras := temp;
    end;

    temp := frente;
    while temp <> nil do
    begin
        writeln(temp^.dado);
        temp := temp^.prox;
    end;
end.

//  cria uma fila de 10 nós
//  cada nó contém um número inteiro de 1 a 10
//  o programa então percorre a fila e imprime o valor de cada nó