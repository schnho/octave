### normalise(data,zero)
# data is vector of results
# zeros samples to average to take offset value from

function [output] = normalise(data, zero)

zero_avg = mean(data(zero));
output = data - zero_avg;
