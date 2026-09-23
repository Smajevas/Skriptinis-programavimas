% Is antro lab

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



%1.
%a
clear

x = linspace(0, 200, 300);
f = 2 .* exp(-0.02 .* x) .* cos(0.2 .* x);

legend('f(x)')
figure(1);
plot(x, f, 'g', 'LineWidth', 10);

grid on;
xlabel('x');
ylabel('f(x)');
title('f(x) = 2e^{-0.02x}cos(0.2x)');

%b

z1 = linspace(-pi, 0, 300);
z2 = linspace(0, pi, 300);

z1 = z1(2:end-1)
z2 = z2(2:end-1)


f1 = cot(z1);
f2 = cot(z2);

legend('f(z)')
figure(2);
plot(z1, f1, 'b', 'LineWidth', 2);
hold on;
plot(z2, f2, 'b', 'LineWidth', 2);

grid on;
xlabel('z');
ylabel('cot(z)');
title('f(z) = cot(z)');
hold off;

%c
figure(3);
subplot(2,1,1)
plot(x, f, 'g', 'LineWidth',2)
xlabel(x)
ylabel(f(x))
title('Pirmas grafikas')
grid on





