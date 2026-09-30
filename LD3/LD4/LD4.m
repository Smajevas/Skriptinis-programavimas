%1a

x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);

[X, Y] = meshgrid(x, y);

z = 0;

F = sin((X.^2 + Y.^2 + z.^2) / 20) .*exp(-(X.^2 + Y.^2 + z.^2));

figure(1)
surf(X, Y, F);

colormap(parula);
shading interp;

xlabel('x');
ylabel('y');
zlabel('f(x,y,z)');
title('f(x,y,z)');

grid on;

%2
x = linspace(-1, 1, 20);
y = linspace(-1, 1, 20);

[X, Y] = meshgrid(x, y);

R = sqrt(X.^2 + Y.^2);

Z = exp(R.^2);

figure(2);

surf(X, Z, Y)

colormap(parula);
shading interp;

xlabel('x');
ylabel('y');
zlabel('z');

title('z(r) = e^{r^2}');

view(70, 70);

grid on;

%Papildoma
x = linspace(-1, 1, 30);
y = linspace(-1, 1, 30);

[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);

% 1 grafikas
figure(3);
surf(X, Y, Z);
colormap(parula);
shading interp;
xlabel('x');
ylabel('y');
zlabel('z');
title('Parula colormap');
grid on;

% 2 grafikas
figure(4);
surf(X, Y, Z);
colormap("gray");
shading interp;
xlabel('x');
ylabel('y');
zlabel('z');
title('Grey');
grid on;

% 3 grafikas
figure(5);
surf(X, Y, Z);
colormap(hot);
shading interp;
xlabel('x');
ylabel('y');
zlabel('z');
title('Hot colormap');
grid on;