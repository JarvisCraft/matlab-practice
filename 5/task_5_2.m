% Задаю общие константы
Um = 12;
f = 50;
omega = 2 * pi * f;

% Задаю функцию U_В
UB = @(t) abs(Um * cos(omega * t));

% Устанавливаю исследуемый диапазон
range = 0 : 0.00001 : 0.1;

% Строю график функции U_В
figure(1);
plot(range, UB(range));
grid on;
title('$U_B(t)$', 'Interpreter', 'latex')
xlabel('t', 'Interpreter', 'latex');
ylabel('$U_B$', 'Interpreter', 'latex');
% Сохраняю график в файл
saveas(gcf, 'images/image_5_2.png')

% Наборы значений по вариантам
R0s = [20 75 35 120 90 20];
RHs = [500 1000 750 1000 2000 1000];
Ls = [0.5 0.7 0.1 1 1.2 0.05];
Cs = [100 40 200 50 100 1000];

% Перебор заданий
for variant = 1 : 6    
    % Задаю известные значения
    R0 = R0s(variant);
    RH = RHs(variant);
    L = Ls(variant);
    C = Cs(variant);

    % Задаю функции du/dt и di/dt
    dudt = @(Y) 1 / C * (Y(2) - Y(1) / RH);
    didt = @(t, Y) 1 / L * (UB(t) - Y(2) * R0 - Y(1));

    % Объединяю dudt и didt в единую function handle
    dudidt = @(t, Y) [dudt(Y) didt(t, Y)]';
    [T, UI] = ode45(dudidt, [0, 1], [0, 0]);

    % Строю граифик U(t)
    figure(2);
    plot(T, UI(:, 1));
    title('$U(t)$', 'Interpreter', 'latex')
    grid on;
    xlabel('t', 'Interpreter', 'latex');
    ylabel('$U$', 'Interpreter', 'latex');
    % Сохраняю график в файл
    saveas(gcf, strcat('images/image_5_2_', num2str(variant), '_1.png'))

    % Строю граифик i(t)
    figure(3);
    plot(T, UI(:, 2));
    title('$i(t)$', 'Interpreter', 'latex')
    grid on;
    xlabel('t', 'Interpreter', 'latex');
    ylabel('$i$', 'Interpreter', 'latex');
    % Сохраняю график в файл
    saveas(gcf, strcat('images/image_5_2_', num2str(variant), '_2.png'))
end