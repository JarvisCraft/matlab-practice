function print_int_data(name, I0, I, R)
    fprintf('%s:\n', name);
    fprintf('\tЗначение: %d\n', I);
    D = abs(I0 - I);
    fprintf('\tАбс. погрешность: %d\n', D);
    fprintf('\tОтн. погрешность: %d\n', D ./ I);
    fprintf('\tТеор. абс. погрешность: %d\n', R);
    fprintf('\tТеор. отн. погрешность: %d\n', R ./ I);
end