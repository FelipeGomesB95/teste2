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
	 write('Digite o primeiro n�mero que voc� quer que caia para cima: ');
	 readln(numero1);
	 write('Digite o segundo n�mero que voc� quer que caia para cima: ');
	 readln(numero2);	
	 // aqui ele l� quantas vezes ele vai ser lan�ado
	 write('Digite o n�mero de vezes que que voc� ir� lan�ar o dado: ');
	 readln(lancamento);
	 if (numero1 < 1) or (numero1 > 6) then begin
	 																					writeln('Algum dos n�meros est� errado.');
	 																					break;
																					end	  
	 else if (numero2 < 1) or (numero2 > 6) then begin
																								 writeln('Algum dos n�meros est� errado.');
	                                               break;
	                                             end;  
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
	 write('Deseja parar ? (digite "sim" caso queira):');
	 readln(parar);
	 until parar = 'sim';
end;

Begin
   calculaProbabilidade; 
	 readln;
End.