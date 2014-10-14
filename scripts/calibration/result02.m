[acmax acmin] = min_max(data,100);
peak2peak = mean(acmax) - mean(acmin);
disp("peak to peak "), disp(peak2peak);