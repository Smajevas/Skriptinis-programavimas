%1a
studentas = struct('vardas', 'Matas', 'pavarde', 'Danilevičius', 'grupe', 'EEf-25/2', 'pazymiai', [2 4 7 3 8 6 5])
studentas(2).vardas = 'Matas'
studentas(2).pavarde = 'Danilevičius'
studentas(2).grupe = 'EEf-25/2'
studentas(2).pazymiai = [2 4 7 3 8 6 5]

disp(studentas)

%1b

studentas(2).vardas = 'Pedro'
studentas(2).pavarde = 'Martinez'
studentas(2).grupe = 'EEf-25/2'
studentas(2).pazymiai = [5 6 8 7 9 5 10]

studentas(3).vardas = 'Robert'
studentas(3).pavarde = 'Lewandowski'
studentas(3).grupe = 'EEf-25/2'
studentas(3).pazymiai = [7 8 6 9 10 8 7]

disp(studentas(1))
disp(studentas(2))
disp(studentas(3))

%2

palukanos = [0.10 0.15 0.20];

rezultatai = [];

for suma = 10000:1000:20000

    imoka1 = (suma + suma*palukanos(1)) / 12;
    imoka2 = (suma + suma*palukanos(2)) / 12;
    imoka3 = (suma + suma*palukanos(3)) / 12;

    rezultatai = [rezultatai;
        suma imoka1 imoka2 imoka3];
end

format bank
disp(rezultatai)

%Papildoma uzduotis

A = [];
B = [];

while true

    a = round(rand*7);
    b = round(rand*9);

    A = [A a];
    B = [B b];

    if a == b
        break
    end

end

figure

plot(A, 'o-', 'LineWidth', 1.5)

hold on

plot(B, 'x-', 'LineWidth', 1.5)

grid on
xlabel('Generavimo numeris')
ylabel('Sugeneruotas skaicius')
title('Atsitiktiniu skaiciu kitimas')
legend('round(rand*7)', 'round(rand*9)')

hold off
