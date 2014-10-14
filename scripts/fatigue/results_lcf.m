###results_lcf.m

disp = data(:,1);
load = data(:,2)/4;
norm = filter(ones(1,1000)/1000,1,disp);
dispN = disp - norm;
dispN(1:1000) = [];
dispF = filter(ones(1,50)/50,1,dispN);
dispF(1:50) = [];
