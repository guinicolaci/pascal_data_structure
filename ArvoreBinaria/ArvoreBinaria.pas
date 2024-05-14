program ArvoreBinaria;
type
    PNo = ^TNo;
    TNo = record
        dado: integer;
        esquerdo, direito: PNo;
    end;

var
    raiz, temp: PNo;

procedure criaNo(var no: PNo; valor: integer);
begin
    new(no);
    no^.dado := valor;
    no^.esquerdo := nil;
    no^.direito := nil;
end;

begin
    criaNo(raiz, 1);
    criaNo(temp, 2);
    raiz^.esquerdo := temp;
    criaNo(temp, 3);
    raiz^.direito := temp;

    writeln('Raiz: ', raiz^.dado);
    writeln('Filho esquerdo da raiz: ', raiz^.esquerdo^.dado);
    writeln('Filho direito da raiz: ', raiz^.direito^.dado);
end.
