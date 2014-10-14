dc = data(:,1);
ac = data(:,2);
disp("Piezo - DC ") , disp(mean(dc))
disp("Piezo - DC offset") , disp( mean(dc) - 0.18604 ) 
[acmax acmin] = min_max(ac,1000);
disp("Piezo - AC ") , disp(mean(acmax) - mean(acmin))