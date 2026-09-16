%1
a = 200:-10:10

b = log10(a)'

c = 10.^b

d = c- a

%2
A = [pi/2 3i exp(pi); log2(2) 2*pi log10(1); log10(exp(1)) pi^pi cos(pi)]

A(:, 2) = rand(3, 1)

sum(A)

%%3

t = 0:2:0.002
A = 7
f = 8
sigma = 2
U1 = 4
U2 = 3
s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t)
n = sigma*randn(size(t))
x = s + n %paveiktas signalas
%a
atrinktos = x(x > U1)

%b
filtruotas = x;
filtruotas(abs(filtruotas) < U2) = 0

%c
nefiltruoto_dydis = size(x,2)

%d
atrinktu_dydis = size(atrinktos,2)

%e
didziausia = max(filtruotas)
maziausia = min(filtruotas)


%papildoma

A = input('Įveskite vektorių A: ');

B = [A(10:end) A(1:9)];

fprintf('vektorius B yra: ');
disp(B);
