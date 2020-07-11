function [a, b] = task_3_2_2(A, B, e)
    d = e * ones(4, 4);
    a = d * A;
    b = (A^-1 - d) * B;
end