Program Pzim ;
var
numero1,numero2 : integer;

// o subprograma vai pedir dois numero inteiros
procedure calculaProbabilidade(numero1,numero2 : integer);

var 
lancamento,k,probabilidade: integer;
probabilidade2: real;

begin
	 // aqui ele l� quantas vezes ele vai ser lan�ado
	 write('Digite o n�mero de vezes que que voc� ir� lan�ar o dado: ');
	 readln(lancamento);
	 
	 if (lancamento > 10) or (lancamento < 1) then writeln('Lan�amento maior que 10 ou menor que 1, valor inv�lido!')
	 else begin
	   // essa vari�vel ser� usada para multiplicar a cada vez que o comando de repeti��o atualizar 
	   probabilidade:=1;
	   
		 for k:= 1 to lancamento do
	     probabilidade:= probabilidade * 6;   // aqui ele vai calcular o denominador da probabilidade em forma de fra��o
	   
		 probabilidade2:= 1 / probabilidade;  // aqui ele vai calcular a probabilidade em porcentagem
	   
		 writeln('A probabilidade de cair ',numero1,' e ',numero2,' � de: 1/',probabilidade);
	   writeln('Em porcentagem � de: ', probabilidade2:1:6,' %');// imprime em porcentagem, deixando
                                                               // deixando 1 casa a direita de espa�o e 10 ap�s � v�rgula
	 end;
end;

Begin
   write('Digite os n�meros que voc� quer que caia (OBS.: O n�mero deve estar entre 1 e 6): ');
   readln(numero1,numero2);
  
	 if (numero1 < 1) or (numero1 > 6) then writeln('Algum dos n�meros est� errado.') 
	 else if (numero2 < 1) or (numero2 > 6) then writeln('Algum dos n�meros est� errado.')
   else calculaProbabilidade(numero1,numero2);
  
	 readln;
End.