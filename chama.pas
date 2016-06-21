Program chama;
var
op: char;
a,b,soma,sub,multi: integer;
divisao: real;
Begin
   normvideo;
   write('Digite dois numeros: ');
   readln(a,b);
   if (b=0) then write('numero invalido')
   else begin
           write('Digite o operador: ');
           readln(op);
           case op of
           '+':begin
                   soma:=a+b;
                   write(soma);
                end;
           '-':begin
					         sub:=a-b;
					         write(sub);
					      end;
					 '*':begin
					         multi:=a*b;
					         write(multi);
					      end;			    
           '/':begin
					         divisao:= a/b;
					         write(divisao:0:1);
					      end;
					   else write('operador inválido');			   
					 end;
        end;   
   readln;
End.