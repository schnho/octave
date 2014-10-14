window = 1000;
winstart = 1;
winend = winstart + window;

for i = 1 : 99
  maxres(i) = max(X005(winstart:winend));
  minres(i) = min(X005(winstart:winend)); 
  winstart = winend + 1;
  winend = winstart + window;
end
