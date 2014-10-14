### function [output, factor] = convert_xl(data, factor);
# excel can only plot 32,000 point.
# remove data points fot allow for Excel plotting
# if factor is ommited, nearest factor will be used.

function [output, factorin] = convert_xl(data, factorin);

[datarow datacol] = size(data);
data_length = length(data);

if datacol > datarow;
  data = data';
end

if data_length <= 32000
  disp("No need to convert");
  return
elseif data_length < 64000
  disp("factor will be 1, consider removing data from start or end to fit");
  return
end

if exist("factorin","var") == 0
  factorin = ceil(data_length /32000);
end

data_idx = [1:factorin:data_length];
output = data(data_idx,:);
