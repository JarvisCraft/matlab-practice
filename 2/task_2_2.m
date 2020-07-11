W = 0.75;
t = 0.025;
L = 42;
R = 5 : 0.001 : 10;

y = f2(R, W, t, L);
plot(R, y);
grid on;
xlabel('R')
ylabel('delta')

fzero(@(R)f2(R, W, t, L), [8, 10])