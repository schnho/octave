### function [max_out min_out] = min_max(data,samples)
#
#

function [max_out min_out] = min_max(data, cycle_samples)

data_length = length(data);
samples = fix(data_length / cycle_samples);

for i = 1 : samples-1

%debugstart = i * cycle_samples - (cycle_samples - 1)
%debugend = i * cycle_samples

max_out(i) = max(data((i * cycle_samples - (cycle_samples - 1)) : i*cycle_samples));
min_out(i) = min(data((i * cycle_samples - (cycle_samples - 1)) : i*cycle_samples));


end

i = i+1;

#max_out(i) = max(data((i * samples - (samples-1)) : end));
#min_out(i) = min(data((i * samples - (samples-1)) : end));
