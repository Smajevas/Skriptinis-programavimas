%
% Paprastas skriptas
%

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   |   F_2 [-x-]')

%help sin - parodo pagalba apie x
%doc sin - funkcijos dokumentacija
%doc search - search funkcijos/komandos dokumentaciją

%help linspace galima 2 arba 3 kintamuosius, isvestis 1, y = linspace(x1,x2,n)
%help size 1 ar daugiau
%help max ivestis 1 arba daugiau, isvestis 1 arba 2

%%
N = 3;

v = N+1:0.5:N+4;
A = [N, N+1, N+2; N+3, N+4, N+5; N+6, N+7, N+8]

%A)
A_1 = A(3,2)

%B)
A_2 = A(2:3, 1:2)

%C)
A_3 = A([1 3], [1 3])

A = [A v(1:3)']

