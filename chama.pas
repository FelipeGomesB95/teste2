Program chama;
var
a,b,soma,sub,multi: integer;
divisao: real;
Begin
   normvideo;
   write('Digite dois numeros: ');
   readln(a,b);
   if (b=0) then write('numero invalido')
   else begin
           divisao:= a/b;
           soma:=a+b;
           sub:=a-b;
           multi:=a*b;
           writeln(divisao:0:2,' ',soma,' ',sub,' ',multi);
        end;   
   readln;
End.