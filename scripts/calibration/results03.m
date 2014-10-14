current = data(:,1);
[Imax Imin] = min_max(current,1000);
piezo = data(:,2);
[Pmax Pmin] = min_max(piezo,1000);
Imaxm = mean(Imax);
Iminm = mean(Imin);
disp("Current "), disp( Imaxm - Iminm)
Pmaxm = mean(Pmax);
Pminm = mean(Pmin);
disp("Piezo Voltage: ") , disp(Pmaxm - Pminm)