###function pad(data,postion,qty)
#

function [output] = pad(data,pos,qty)


if pos == 'b';
  output = [NaN * zeros(qty,1) ; data];
elseif pos == 'a'; 
  output = [data ; NaN * zeros(qty,1)];
else
  disp("No Padding added");
  output = data;
end