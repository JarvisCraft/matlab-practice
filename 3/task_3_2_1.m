function [a, b] = task_3_2_1(A, B)
    a = zeros(4, 4);
    b = zeros(4, 1);

    % Выставляю по диагонали наибольшие элементы
    for col = 1 : 4
        for row = col : 4
            if A(row, col) > A(col, col)
                % Обмен строками
                A([row col], :) = A([col row], :);
                B([row col], :) = B([col row], :);
            end
        end
    end
    
    % "Причёсываю матрицу"
    for i = 1 : 4
        b(i) = B(i) / A(i, i);
        a(i, i) = 0;
        for j = 1 : 4
            if i ~= j
                a(i, j) = -A(i, j) / A(i, i);
            end
        end
    end
end