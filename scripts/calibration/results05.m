function output = results05(data)

avgdata = filter(ones(1,30)/30,1,data);
avgdata(1:30) = [];
[maxdata mindata] = min_max(avgdata,1000);
# plot(avgdata)
maxidx = maxdata > 0.48;
minidx = mindata < 0.3;
output = mean(maxdata(maxidx)) - mean(mindata(minidx));
#filter = avgdata;