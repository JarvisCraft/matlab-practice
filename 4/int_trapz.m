function I = int_trapz(f, a, b, n)
    h = (b - a) / n;

    I = (f(a) + f(b)) / 2;
    for i = 1 : (n - 1)
        I = I + f(a + i * h);
    end
    I = I * h;
end