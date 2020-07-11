function result = f2(R, W, t, L)
    result = 1.257 * R .* (log(8 * pi * R ./ (W + t)) - 2) - L;
end