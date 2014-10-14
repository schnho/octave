filename = input("filename? ",'s');
frequency = str2num(filename(1:3));
data = csvread(filename);
results = zeros(1,7);

results(1) = frequency;

t = [0: length(data) - 1]; #timebase

#normalise
zero = mean(data(1:2000));
data = data -zero;

#find peaks and troughs
[pks idx] = findpeaks(data,"DoubleSided","MinPeakHeight",0.001,"MinPeakDistance",50);

peakvals = data(idx);
tidx = peakvals < 0;
troughs = peakvals(tidx);

pidx = peakvals > 0;
peaks = peakvals(pidx);

#average peak and trough values
averaget = mean(troughs);
averagep = mean(peaks);
results(2) = averagep;
results(5) = averaget;

#max and min peaks
max_peak = max(peaks);
min_peak = min(peaks);
results(3) = max_peak;
results(4) = min_peak;

#max and min troughs
max_troughs = max(troughs);
min_troughs = min(troughs);
results(6) = max_troughs;
results(7) = min(troughs);

#plot graph
plot(t,data,t(idx),data(idx),'.r')

savename = strcat("results/results_",filename);
csvwrite(savename,results)
