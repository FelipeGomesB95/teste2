Program Pzim ;
var
numero1,numero2 : integer;

// o subprograma vai pedir dois numero inteiros
 procedure calculaProbabilidade;

var 
numero1,numero2,lancamento,k,probabilidade: integer;
probabilidade2: real;
parar: string;

begin
   writeln;
   writeln('#-----------EQUIPE 5-----------#');
	 repeat
	 write('Digite o primeiro número que você quer que caia para cima: ');
	 readln(numero1);
	 write('Digite o segundo número que você quer que caia para cima: ');
	 readln(numero2);	
	 // aqui ele lê quantas vezes ele vai ser lançado
	 write('Digite o número de vezes que que você irá lançar o dado: ');
	 readln(lancamento);
	 if (numero1 < 1) or (numero1 > 6) then begin
	 																					writeln('Algum dos números está errado.');
	 																					break;
																					end	  
	 else if (numero2 < 1) or (numero2 > 6) then begin
																								 writeln('Algum dos números está errado.');
	                                               break;
	                                             end;  
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
	 write('Deseja parar ? (digite "sim" caso queira):');
	 readln(parar);
	 until parar = 'sim';
end;

Begin
   calculaProbabilidade; 
	 readln;
End.