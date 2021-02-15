%Volterra_Lotcka
%primeramente propongo unos vaslores iniciales y un tiempo de integracion
y0 = [2; 2];  
y=y0;
t0 = 0;
tfinal = 50;
%llamda a la funcion 
f1_res=f1(15,y0)
%integracion
[t,y] = ode45(@f1,[t0 tfinal], y0);
%representacion del grafico Lobos presas
plot(t,y)
title('Poblacion Lobos/Presas')
xlabel('t')
ylabel('Poblacion')
legend('Presas','Lobos')

%representacion diagrama de fases
figure
plot(y(:,1),y(:,2))
title('Diagrama de fases')
xlabel('Presas')
ylabel('Lobos')

%funcion

function xdot = f1(t,y)
a=1;
b=1;
c=1;
d=1;

xdot = zeros(2,1);
xdot(1) = (a - b*y(2))*y(1);
xdot(2) = (-c + d*y(1))*y(2);
end
