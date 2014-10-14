### function [output] = remove_flat(data)
#
#

function [output] = remove_flat(data)

datalength = length(data);

for i = 2 : datalength -1
  if data(i) == data(i+1)
    if data(i) > data(i - 1)
      data(i) = (( data(i+1) - data(i-1)) / 2) + data(i-1);
    else
      data(i) = data(i-1) - (( data(i-1) - data(i+1)) / 2);
    end
  end
end

output = data;