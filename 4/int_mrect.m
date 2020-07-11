function I = int_mrect(f, a, b, n)
    h = (b - a) / n;

    I = 0;
    for i = 1 : n
        I = I + f(a + i * h);
    end
    I = I * h;
end