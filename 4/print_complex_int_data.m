function print_complex_int_data(name, I0, I, n, h)
    fprintf('%s:\n', name);
    fprintf('\tШаг интегрирования: %f\n', h);
    fprintf('\tКол-во узлов интегрирования: %i\n', n);
    fprintf('\tЗначение: %f\n', I);
    D = abs(I0 - I);
    fprintf('\tАбс. погрешность: %f\n', D);
    fprintf('\tОтн. погрешность: %f\n', D ./ I);
end