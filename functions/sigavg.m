## signal average
filename = input("filename? ",'s');
idx = str2num(filename(1:3));
data = csvread(filename);
savename = strcat("results/r_",filename);
results(1,1) = idx;

average = mean(data);
results(1,2) = average;

Pmax = max(data);
results(1,3) = Pmax;

Pmin = min(data);
results(1,4) = Pmin;

deviation  = Pmax - Pmin;
results(1,5) = deviation;

csvwrite(savename,results);
%title = ['idx,','Avg,','Max,','min,','deviation'];
%
%fid = fopen(savename,'wt');
%  fprintf(fid,'%s\n',title);
%  fprintf(fid,'%f,',results(1:5))
%
%fclose(fid);
%disp('Finished');