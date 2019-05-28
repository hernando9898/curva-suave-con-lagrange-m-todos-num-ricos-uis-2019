clc
clear
Xo=3.5;
n=4;
X=[0.5 2 3.2 5 4 6 7];
Y=[2 3 2.7 4 5 6 7];
%{
n=input('numero de puntos medidos  ');
for i=1:n
    disp('')
    disp('ingrese el punto')
    disp(i)
    X(i)=input('ingrese el valor de X  ');
    Y(i)=input('ingrese el valor de Y  '); 
end
%}

for i=1:n
    Ya(i)=Y(i);
    for j=1:n
        if j~=i
            Ya(i)=Ya(i)*(Xo-X(j))/(X(i)-X(j));
        end
    end
end
Yo=sum(Ya);
Xg=[min(X):(max(X)-min(X))/100:max(X)];
for k=1:length(Xg)
    for i=1:n
    Ya(i)=Y(i);
    for j=1:n
        if j~=i
            Ya(i)=Ya(i)*(Xg(k)-X(j))/(X(i)-X(j));
        end
    end
    end
Yg(k)=sum(Ya);
end
plot(Xg,Yg,'b-',Xo,Yo,'r*')
xlabel('Abscisas X')
ylabel('Ordenadas Y')
title('Interpolacion De Lagrange')
legend('Medidos','Interpolado')
disp('El Punto Interpolado Es')
disp([Xo,Yo])
disp('X')
disp(Xo)
disp('Y')
disp(Yo)

