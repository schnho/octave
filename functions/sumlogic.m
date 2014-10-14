function out = sumlogic(data)

out = 0;
outidx = 1;

for i = 2:length(data)
  if data(i) == 0
  else
    if data(i) != data(i - 1)
      outidx = outidx + 1;
      out(outidx) = 0;
    endif
    out(outidx) = out(outidx) + 1;
  end
end