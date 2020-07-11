function I = int_lrect(f, a, b, n)
    h = (b - a) / n;

    I = 0;
    for i = 1 : n
        I = I + f(a + i * h);
    end
    I = h * I;
end