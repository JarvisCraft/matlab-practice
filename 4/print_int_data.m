function print_int_data(name, I0, I, R)
    fprintf('%s:\n', name);
    fprintf('\tЗначение: %f\n', I);
    D = abs(I0 - I);
    fprintf('\tАбс. погрешность: %f\n', D);
    fprintf('\tОтн. погрешность: %f\n', D ./ I);
    fprintf('\tТеор. абс. погрешность: %f\n', R);
    fprintf('\tТеор. отн. погрешность: %f\n', R ./ I);
end