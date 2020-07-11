function I = int_simpson(f, a, b, n)
    % Вычисление интеграла методом Симпсона
    
    h = (b - a) / n;
    
    I = f(a) + f(b) + 4 * f(a + + h/2);
    for i = 1 : (n-1)
        I = I + 4 * f(a + i * h + h/2) + 2 * f(a + i * h);
    end
    I = I * h / 6;
end