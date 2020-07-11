function X = task_3_2(A, B, e)
    assert(norm(A) < 1, 'Итерационный процесс не сходится');

    limit = (1 - norm(A)) / norm(A) * e;

    previousX = B;
    currentX = A * previousX + B;
    while norm(currentX - previousX) > limit
        previousX = currentX;
        currentX = A * previousX + B;
    end

    X = currentX;
end

