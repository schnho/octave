function sigresults()
results_directory = uigetdir;
cd(results_directory);
savename = "results.csv";

# find all csv files
result_files = dir("*.csv");
num_files = size(result_files)(1);

for i = 1:num_files
  results(i,:) = csvread(result_files(i).name);
  i++;
endfor

%csvwrite("results.csv",results)

title = ['idx,','Avg,','Max,','min,','deviation'];
[rows,cols]=size(results)

fid = fopen(savename,'wt');

  fprintf(fid,'%s\n',title);
  
for i=1:rows

      fprintf(fid,'%f,',results(i,1:end-1))

      fprintf(fid,'%f\n',results(i,end))

end

%  fprintf(fid,'%f,',results(1:5))

fclose(fid);
disp('Finished');