function print_complex_int_data(name, I0, I, n, h)
    fprintf('%s:\n', name);
    fprintf('\tШаг интегрирования: %d\n', h);
    fprintf('\tКол-во узлов интегрирования: %d\n', n);
    fprintf('\tЗначение: %d\n', I);
    D = abs(I0 - I);
    fprintf('\tАбс. погрешность: %d\n', D);
    fprintf('\tОтн. погрешность: %d\n', D ./ I);
end