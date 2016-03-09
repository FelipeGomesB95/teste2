Program Pzim ;
var
numero1,numero2 : integer;

// o subprograma vai pedir dois numero inteiros
procedure calculaProbabilidade(numero1,numero2 : integer);

var 
lancamento,k,probabilidade: integer;
probabilidade2: real;

begin
	 // aqui ele lê quantas vezes ele vai ser lançado
	 write('Digite o número de vezes que que você irá lançar o dado: ');
	 readln(lancamento);
	 
	 if (lancamento > 10) or (lancamento < 1) then writeln('Lançamento maior que 10 ou menor que 1, valor inválido!')
	 else begin
	   // essa variável será usada para multiplicar a cada vez que o comando de repetição atualizar 
	   probabilidade:=1;
	   
		 for k:= 1 to lancamento do
	     probabilidade:= probabilidade * 6;   // aqui ele vai calcular o denominador da probabilidade em forma de fração
	   
		 probabilidade2:= 1 / probabilidade;  // aqui ele vai calcular a probabilidade em porcentagem
	   
		 writeln('A probabilidade de cair ',numero1,' e ',numero2,' é de: 1/',probabilidade);
	   writeln('Em porcentagem é de: ', probabilidade2:1:6,' %');// imprime em porcentagem, deixando
                                                               // deixando 1 casa a direita de espaço e 10 após à vírgula
	 end;
end;

Begin
   write('Digite os números que você quer que caia (OBS.: O número deve estar entre 1 e 6): ');
   readln(numero1,numero2);
  
	 if (numero1 < 1) or (numero1 > 6) then writeln('Algum dos números está errado.') 
	 else if (numero2 < 1) or (numero2 > 6) then writeln('Algum dos números está errado.')
   else calculaProbabilidade(numero1,numero2);
  
	 readln;
End.