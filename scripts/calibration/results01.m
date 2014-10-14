ac = data(:,2) * 4;
[acmax acmin] = min_max(ac,100);
peak2peak = mean(acmax) - mean(acmin);
disp("peak to peak "), disp(peak2peak);
dc = data(:,1);
dcout = mean(dc);
disp("DC output "), disp(dcout);