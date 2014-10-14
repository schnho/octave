###function makeresults
#
#

# goto results directory
function makeresults()
results_directory = uigetdir;
cd(results_directory);

# find all csv files
result_files = dir("*.csv");
num_files = size(result_files)(1);

for i = 1:num_files
  results(i,:) = csvread(result_files(i).name);
  i++
endfor

csvwrite("results.csv",results)
