Program Calculadora ;
uses crt;
const
    tamanho = 10;
type
    vetor = array[1..tamanho] of integer;

//Equipe 5    
   procedure calculaProbabilidade;

var 
numero1,lancamento,k,probabilidade: integer;
probabilidade2: real;
parar: string;

begin
   writeln;
   writeln('##############################');
   writeln('##############################');
   writeln('########## EQUIPE 5 ##########');
   writeln('##############################');
   writeln('##############################');
	 repeat
	 write('Digite um número que deseja que caia na face de cima do dado: ');
	 readln(numero1);
	 while (numero1 < 1) or (numero1 > 6) do begin
	 																					writeln('Número informado não existe no dado. Por favor digite um número entre 1 e 6');
	 																					readln(numero1);
	 																				end;	  
	 // aqui ele lê quantas vezes ele vai ser lançado
	 write('Digite a quantidade de vezes que você irá lançar o dado OBS: 10 VEZES NO MÁXIMO ');
	 readln(lancamento);
	 while (lancamento > 10) or (lancamento < 1) do begin
	 																								 writeln('Número maior que 10 ou menor que 1. Por favor digite um número entre 1 e 10');
	 																								 readln(lancamento);
	 																								 end;
	  begin
	   // essa variável será usada para multiplicar a cada vez que o comando de repetição atualizar 
	   probabilidade:=1;
	   
		 for k:= 1 to lancamento do
	     probabilidade:= probabilidade * 6;   // aqui ele vai calcular o denominador da probabilidade em forma de fração
	   
		 probabilidade2:= 1 / probabilidade;  // aqui ele vai calcular a probabilidade em porcentagem
	   
		 writeln('A probabilidade de cair ',numero1,' é de: 1/',probabilidade);
	   writeln('Em porcentagem é de: ', probabilidade2:1:6,' %');// imprime em porcentagem, deixando
                                                               // deixando 1 casa a direita de espaço e 10 após à vírgula
	 end;
	 write('Deseja parar ? (digite "sim" caso queira):');
	 readln(parar);
	 until parar = 'sim';
end;

// Final da equipe 5    
//-------Code Equipe 2--------  
//Procedimento de Sort do Array || CRESCENTE
procedure crescente(var v:vetor);
var 
   i,j,menor,k,aux: integer;
begin
for i:= 1 to tamanho do
	begin
		 menor := i;
		 for j:= i+1 to tamanho do
		 
		    if (v[j] < v[menor]) then menor:= j;
		 if (i<>menor) then 
		 begin
		 	aux := v[i];
		 	v[i] := v[menor];
		 	v[menor]:= aux;
		 end;
	end;
	writeln('Crescente: ');
for k:=1 to tamanho do
  write(v[k], ' . ');	
writeln;  
end;		  

//Procedimento de Sort do Array || DECRESCENTE
procedure decrescente(vet:vetor);
var i,j,aux:integer;
begin
     for i:=1 to tamanho do 
		 		begin
     				for j:=i+1 to tamanho do 
						 		if vet[i]>vet[j] then begin
     								aux:=vet[i];
     								vet[i]:=vet[j];
     								vet[j]:=aux;
     						end;     					
     		end;
     writeln;		
     writeln('Decrescente: ');		
     for i:=tamanho downto 1 do 
		 		write(vet[i],' . ');
			
		writeln;		     
end;

//Procedimento de Média
procedure media(vet:vetor);
var
	  media, media_result:real;
	  soma,cont,k:integer;
begin
    soma:=0;
    cont:=0;
    for k:=1 to tamanho do
    begin
         soma:=vet[k] + soma;
         cont:=cont+1;
    end;
    media_result:=soma/cont;
    writeln;
    write('A media eh: ', media_result:0:1);
    writeln;     
end;

//Procedimento de MODA
procedure moda(vet:vetor);
var
   QuantidadeDeVezes,posicao_moda,cont,i,j:integer;
begin
    posicao_moda:=0;
    QuantidadeDeVezes:=0;
		for i:=1 to tamanho do
		begin
		   cont:=0;
		   for j:=1 to tamanho do
			    if vet[i]=vet[j] then cont:=cont+1;
			 if cont>QuantidadeDeVezes then
			    begin
			         QuantidadeDeVezes:=cont;
			         posicao_moda:=i;
			    end;
		end;
		writeln;
		write('A moda eh: ',vet[posicao_moda]);
		writeln;
end;

//Procedimento de Mediana
procedure mediana(vet:vetor; inicio, fim:integer);
var
	mediana_result :real;
begin
    if tamanho mod 2=0 then 
			mediana_result:=(vet[tamanho div 2]+vet[(tamanho div 2)+1]) / 2 
		else 
			mediana_result:=vet[(inicio+fim) div 2];
			writeln;
    	write('A mediana eh: ', mediana_result:0:1);
  	writeln;
end;

//Procedimento que irá chamar as outras funções
procedure principal();
var
  	vet:vetor;
  	i:integer;
begin
	
	writeln('Digite ' , tamanho , ' numeros: ');
	for i:=1 to tamanho do
	begin
		 write('>');
	   readln(vet[i]);
	   writeln;
	end;
	
	crescente(vet);
	decrescente(vet);
	media(vet);
	moda(vet);
	mediana(vet, 1, tamanho);	
	readln;	
	
end;
//----^^^^^^^^^^--------   


//Equipe 2 - Parte 2 (União. Intersecção e Difereça de dois conjuntos)

//União
procedure uniao(vet1,vet2:vetor);
var
	 vetu:array[1..20]of integer;
	 i, cont, k:integer;
begin
		 write('União: ');
	   for i:=1 to 10 do
	   begin
	        vetu[i]:=vet1[i];
		 			write(vetu[i], ' ');
		 end;
		 for i:=1 to 10 do
		 begin
		 			for k:=1 to 10 do
							if vet2[i] = vet1[k] then 
							begin
									 cont:=cont+1;
							end;		 		 	
  	 			if cont=0 then
					begin 
						   vetu[i+10] := vet2[i];
						   write(vetu[i+10], ' ');
					end;	   
					cont:=0; 	
	   end;
end;

//Intersecção
procedure interseccao(vet1:vetor;vet2:vetor);
var
k,i,cont:integer;
vet3:array [1..20] of integer;  
begin
	cont:=0;
  for i:= 1 to tamanho do
  begin
    for k:= 1 to tamanho do
    if(vet1[i] = vet2[k]) then 
    begin 
    	cont:=cont+1;
      vet3[cont]:=vet1[i];
    end;
  end;
  write('Intersecção: ');
  for k:=1 to cont do
  write(vet3[k], ' ');
end;

//Diferença
procedure diferenca(vet1,vet2:vetor);
var 
cont,aux,i,j:integer;
vet3:array [1..20] of integer;   
begin			
		aux:=0;
    for i:= 1 to tamanho do 
		begin
		    cont:=0;
		    for j:= 1 to tamanho do 
				    if(vet1[i] <> vet2[j]) then cont:=cont+1;
				if(cont = tamanho) then 
				begin
						aux:=aux+1;
						vet3[aux]:=vet1[i];
				end;
		end;
		write('Diferença: ');
		if(aux = 0) then write('Não há valores na diferença')
				else for i:=1 to aux do
						 		write(vet3[i], ' ');		        
end;

//Procedure para chamar as outras Procedures
procedure conjuntos();
var
   vet1,vet2:vetor;
   k:integer;
begin
     writeln('**PRIMEIRO CONJUNTO**');
     for k:=1 to 10 do
     begin   
          write('Digite um numero:');
          readln(vet1[k]);
     end;
     writeln;
     writeln('**SEGUNDO CONJUNTO**');
     for k:=1 to 10 do
     begin   
          write('Digite um numero:');
          readln(vet2[k]);
     end;
     writeln;
     uniao(vet1,vet2);
     writeln;
     writeln;
		 interseccao(vet1,vet2);
     writeln;
     writeln;
		 diferenca(vet1,vet2); 
		 writeln;
end;

//--------^^---------- 

//Multiplicação
function multiplicacao(x,y:real):real;
Begin
	multiplicacao:=x*y;
End;

//Soma
function soma(x,y:real): real;
Begin
     soma:=x+y;
End;

//Divisão
function divisao(x:real; y:real):real;
begin
	  divisao:=x/y;
end;

//Subtração
function subtracao(x,y:real):real;
Begin
	subtracao:=x-y;
end;

//Potenciação
function potenciacao(x,y:real):real;
begin
    	if y = 0 then potenciacao:=1
    	else if(y = 1) or (x = 0) or (x = 1) then potenciacao := x
    	else if(y < 0) then potenciacao := 1 / potenciacao(x, abs(y))
			else potenciacao := x * potenciacao(x, y-1);  
end;

//Radiciação
procedure raiz(x,y:real);
	var z:real;
	begin
		z := exp (1/y *ln(x));
		writeln('a raiz é : ', z);
	end;
//Fibonnaci
procedure fibonnaci();
var
x,cont, f1, f2, novotermo: integer;
begin
  writeln('Sequência Fibonacci');
  write('Digite o termo que você quer que a sequência tenha entre 3 e 46: ');
  readln(x);
  f1 := 1;
  f2 := 1;
  
  if x<=2 then write('Erro. Não é possivel fazer uma sequência com esse número de termos.')
  else If x>46 then writeln('Não podemos processar uma sequência de tal valor.')
  else
  begin
    writeln(f1);
    writeln(f2);
    
    for cont:=3 to x do
    begin
      novotermo := f1 + f2;
      writeln(novotermo);
      
      f1 := f2;
      f2 := novotermo;
    end;
  end;
  readln;
end; 
// Equação do Segundo Grau
procedure equacaoSegundoGrau();
var a, b, c : integer ;
     delta, x1, x2 : real ;
 Begin
   writeln('Raizes da equacao ax^2 + bx + c = 0');
    
   // Solicita os valores de a, b e c
   write('Digite o valor de a : ');
   read( a ); 
   write('Digite o valor de b : ');
   read( b ); 
   write('Digite o valor de c : ');
   read( c );    
   
   // Calcula o valor de delta
   delta := sqr(b) - 4*a*c ;
   writeln('O valor de delta = ', delta:0:3 );
   
   // Verifica se existem raizes reais
   if( delta < 0 ) then
     writeln('delta menor que zero, nao existem raizes reais.');
   // Verifica se só tem uma raiz
   if( delta = 0 ) then
   Begin
     writeln('so existe uma raiz real') ;
     writeln('Nesse caso temos o "x do vertice" onde x = -b/2a ');
     x1 := -b / (2*a) ;
     writeln('O valor de x = ', x1:0:3 );
   End ;
   
   // Verifica se existem duas raizes
   if( delta > 0 ) then
   Begin
     x1 := (-b + sqrt(delta)) / (2*a) ;
     x2 := (-b - sqrt(delta)) / (2*a) ;    
     writeln('O valor de x1 = ', x1:0:3 );
     writeln('O valor de x2 = ', x2:0:3 );     
   End ;
End;

//Função Calcula MMC
function mmc(x1,y1:integer):integer;
var
  NUMERO,mmcomum:integer;
begin			 	
	mmcomum:=1; 
	numero:= 2;    
	while (X1<>1) or (Y1<>1)  do 
	begin 
			while (X1 mod numero = 0) or (Y1 mod numero = 0) do  
			begin 
				if X1 mod numero = 0  then X1 := X1 div numero; 
				if Y1 mod numero = 0  then Y1 := Y1 div numero; 
				 mmcomum := mmcomum * numero; 
			end;  
			numero := numero + 1; 
	end;  
	mmc:= mmcomum;
end;

//Função Calcula MDC
function MDC(x1,y1:integer): integer;
	var 
		maior,menor,n:integer;
	begin
	maior :=x1;
	menor :=y1;
 		if maior<y1 then 
		 begin
		 	maior := y1;
		 	menor :=x1;
		 end;
     	while maior mod menor <> 0 do 
     	begin
     		n:=maior mod menor;
     		maior:=menor;
     		menor:=n;
     	end;
     	MDC:=  menor;
     end;

//---------------------------------------------------------------------

 var	operador:integer;
	    x,y:real;
	    x1,y1:integer;
		  resultado:real;
Begin
  writeln('#### MENU ####');
  writeln('1 ADIÇÃO');
  writeln('2 SUBTRAÇÃO');
  writeln('3 MULTIPLICACAO');
  writeln('4 DIVISAO');
  writeln('5 POTENCIACAO');
  writeln('6 CRESCENTE, DECRESCENTE, MEDIA, MODA E MEDIANA');
  writeln('7 RADICIAÇÃO');
  writeln('8 FIBONACCI');
  writeln('9 UNIÃO, INTERSECÇÃO E DIFERENÇA DE DOIS CONJUNTOS DE DADOS');
  writeln('10 EQUAÇÃO DO SEGUNDO GRAU');
  writeln('11 Cálculo MMC');
	writeln('12 Cálculo MDC');
	writeln('13 PROBABILIDADE DADO');
	writeln('0 SAIR');
  write('Digite o operador:');
  readln(operador);
  
  while operador <>0 do
  begin	
		
		case operador of
    	1: begin
               write('Valor x:');
               readln(x);
               write('valor y:');
               readln(y);
               resultado := soma(x,y);
               writeln(resultado);
      
    			end;
    
    	2: begin
               write('Valor x:');
               readln(x);
               write('valor y:');
               readln(y);
               resultado := subtracao(x,y);
               writeln(resultado);
      
    			 end;
    
    	3: begin
               write('Valor x:');
               readln(x);
               write('valor y:');
               readln(y);
               resultado := multiplicacao(x,y);
               writeln(resultado);
      
    			 end;
    
    
    	4: begin
               write('Valor x:');
               readln(x);
               write('valor y:');
               readln(y);
               resultado := divisao(x,y);
               writeln(resultado);
      
    			 end;		 
  	
			5: begin
							 write('Valor x:');
               readln(x);
               write('valor y:');
               readln(y);
               resultado := potenciacao(x,y);
               writeln(resultado);
         end;
         
      6: begin
			    		 principal();
			    		 writeln;
			    		 writeln;
				 end;
					
			7: begin
							 write('Valor x: ');
    					 readln(x);
    					 write('valor y: ');
							 readln(y);
    					 raiz (x,y);
				 end;
			8: begin
							fibonnaci();     

			   end;		   
				 
			9: begin
							conjuntos();
							writeln;
							writeln;     
			   end;		 		   
      10: begin
			      equacaoSegundoGrau();
			    end;
			    
			11: begin
							 write('Valor x:');
               readln(x1);
               write('valor y:');
               readln(y1);
               resultado := mmc(x1,y1);
               writeln(resultado);
         end;
    
		  12: begin
							 write('Valor x:');
               readln(x1);
               write('valor y:');
               readln(y1);
               resultado := mdc(x1,y1);
               writeln(resultado);
         end;
       13: calculaProbabilidade;  
		
		end;
  
	write('Digite o operador:');
	readln(operador);
	end;
  readln;
  
End.
