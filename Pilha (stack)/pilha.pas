program Pilha;

type
  TPilha = record
    Dados: array [1..100] of Integer; 
    Topo: Integer;
  end; // estrutura da pilha com capacidade para 100 inteiros.

procedure InicializaPilha(var p: TPilha);
begin
  p.Topo := 0; 
end; // rotina que inicializa a pilha

procedure Empilha(var p: TPilha; valor: Integer);
begin
  if p.Topo < 100 then // se nao estiver cheia
  begin
    p.Topo := p.Topo + 1;
    p.Dados[p.Topo] := valor;
  end // adiciona um elemento
  else
    writeln('Pilha cheia. Nao eh possivel adicionar mais elementos.');
end;

procedure Desempilha(var p: TPilha; var valorDesempilhado: Integer);
begin
  if p.Topo > 0 then // se nao estiver vazia
  begin
    valorDesempilhado := p.Dados[p.Topo];
    p.Topo := p.Topo - 1; 
  end // remove um elemento
  else
    writeln('Pilha vazia. Nao eh possivel remover elementos.');
end;

procedure MostraPilha(p: TPilha);
var
  i: Integer;
begin
  writeln('----- Elementos na pilha -----');
  for i := 1 to p.Topo do
    writeln(p.Dados[i]);
    writeln('------------------------------')
end; // passa por cada elemento e exibe 

var
  MinhaPilha: TPilha;
  opcao, valorRemovido: Integer;

begin
  InicializaPilha(MinhaPilha);

  repeat
    writeln('MENU');
    writeln('1 - Adicionar elemento');
    writeln('2 - Remover elemento');
    writeln('3 - Mostrar pilha');
    writeln('4 - Sair');
    writeln('Digite a opcao:');
    readln(opcao);

    case opcao of
      1:
      begin
        writeln('Digite o valor a ser adicionado:');
        readln(valorRemovido);
        Empilha(MinhaPilha, valorRemovido);
      end;
      2:
      begin
        Desempilha(MinhaPilha, valorRemovido);
        writeln('Elemento removido: ', valorRemovido);
      end;
      3:
      begin
        MostraPilha(MinhaPilha);
      end;
    end;

  until opcao = 4;
end.