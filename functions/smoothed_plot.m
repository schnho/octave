# data = csvread("001.csv");

function output = smoothed_plot(data,windowsize)

#windowsize = 15;
output = filter(ones(1,windowsize)/windowsize,1,data);
plot(output)
