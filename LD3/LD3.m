%1a

x = linspace(0, 200, 300);

f = 2 .* exp(-0.02 .* x) .* cos(0.2 .* x);

figure(1)

plot(x, f, 'g', 'LineWidth', 2)

grid on
xlabel('x')
ylabel('f(x)')
title('f(x) = 2e^{-0.02x}cos(0.2x)')
legend('f(x)')

%1b

z1 = linspace(-pi, 0, 300);
z2 = linspace(0, pi, 300);

z1 = z1(2:end-1);
z2 = z2(2:end-1);

f1 = cot(z1);
f2 = cot(z2);

figure(2)

plot(z1, f1, 'b', 'LineWidth', 2)

hold on

plot(z2, f2, 'b', 'LineWidth', 2)

grid on
xlabel('z')
ylabel('f(z)')
title('f(z) = cot(z)')
legend('cot(z)')

axis([-pi pi -10 10])

hold off

%1c

figure(3)


% pirmas grafikas
subplot(2,1,1)

plot(x, f, 'g', 'LineWidth', 2)

grid on
xlabel('x')
ylabel('f(x)')
title('f(x) = 2e^{-0.02x}cos(0.2x)')
legend('f(x)')

axis tight


% antras grafikas
subplot(2,1,2)

plot(z1, f1, 'b', 'LineWidth', 2)

hold on

plot(z2, f2, 'b', 'LineWidth', 2)

grid on
xlabel('z')
ylabel('f(z)')
title('f(z) = cot(z)')
legend('cot(z)')

axis([-pi pi -10 10])

hold off

%2a

x2 = linspace(0, 10*pi, 500);

y = sin(x2) .* cos(x2);
z = cos(x2);

figure(4)

plot3(x2, y, z, 'LineWidth', 2)

grid on
xlabel('x')
ylabel('y(x)')
zlabel('z(x)')
title('Trimatis grafikas')
legend('y(x) = sin(x)cos(x), z(x) = cos(x)')

%2b

figure(5)

polarplot(x2, y, 'LineWidth', 2)

title('y(x) = sin(x)cos(x) polineje koordinačių sistemoje')

%2c

t = 0:0.002:2;

A = 7;
fs = 8;
sigma = 2;

U1 = 4;
U2 = 3;


s = A*sin(2*pi*fs*t) + 0.5*A*cos(4*pi*fs*t);

n = sigma*randn(size(t));

signalas = s + n;

atrinktos = signalas(signalas > U1);

filtruotas = signalas;

filtruotas(abs(filtruotas) < U2) = 0;

nefiltruoto_dydis = size(signalas, 2)

atrinktu_dydis = size(atrinktos, 2)


didziausia = max(filtruotas)

maziausia = min(filtruotas)


figure(6)


subplot(2,1,1)

plot(t, signalas)

grid on
xlabel('t')
ylabel('x(t)')
title('Triuksmo paveiktas signalas')
legend('Nefiltruotas signalas')



subplot(2,1,2)

stem(t, filtruotas)

grid on
xlabel('t')
ylabel('x(t)')
title('Filtruotas signalas')
legend('Filtruotas signalas')

%% Papildoma

%2LAB info
t = 0:0.002:2;
A = 7;
f = 8;
sigma = 2;
U1 = 4;
U2 = 3;

s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);

n = sigma*randn(size(t));

x = s + n;

filtruotas = x;
filtruotas(abs(filtruotas) < U2) = 0;

indeksai = x > U1;
t_atrinktos = t(indeksai);
atrinktos = x(indeksai);

figure


% a)
subplot(1,2,1)

plot(t, x, '-', 'LineWidth', 1.25)
hold on

plot(t, filtruotas, ':', 'LineWidth', 1.25)

yline(U1, '--', 'U1')
yline(U2, '--g', 'U2')

grid on

xlabel('Laikas, s')
ylabel('Itampa')
title('Pradinis ir filtruotas signalai')

legend('Pradinis signalas', ...
    'Filtruotas signalas', ...
    'U1', ...
    'U2', ...
    'Location', 'northeast')

axis tight

hold off


% b) 
subplot(1,2,2)

stem(t_atrinktos, atrinktos, 'LineWidth', 1.25)
hold on

[min_reiksme, min_indeksas] = min(atrinktos);
[max_reiksme, max_indeksas] = max(atrinktos);

plot(t_atrinktos(min_indeksas), min_reiksme, ...
    'o', 'MarkerSize', 8)


plot(t_atrinktos(max_indeksas), max_reiksme, ...
    'co', 'MarkerSize', 13)

grid on

xlabel('Laikas, s')
ylabel('Itampa')
title('Pradinio signalo reiksmes, virsijancios U1')

legend('x > U1', ...
    'Minimali reiksme', ...
    'Maksimali reiksme', ...
    'Location', 'northeast')

axis tight

hold off
