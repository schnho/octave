###function out = smooth(data)
#

function output = smooth(input)
	datafile = input("csv filename");
	data = csvread(data);
	datalength = length(data);
	
	datasize = size(data);
		if datasize(2) != 1
			printf("Data needs to be only 1 column");
			end
	
	sections = idivide(datalength, 1000, "floor");
	remainder = mod(datalength, 1000);
	
	% if sections < 2
		% x(:,1) = (1:length(data));
		% y(:,1) = data;
		
	if sections < 2 or sections == 2 and remainder == 0
		x(:,1) = (1:length(data));
		y(:,1) = data;
		smoo(:,1) = regdatasmooth(x(:,1),y(:,1));
		z(:,1) = smoo(:,1);
		
	elseif sections == 2 and remainder > 0
		x(:,1) = (1:2000);
		x(:,2) = (1001:length(data));
		smoo(:,1) = regdatasmooth(x(:,1),y(:,1));
		smoo(:,2) = regdatasmooth(x(:,2),y(:,2));
		z(:,1) = 
	else
		x(:,1) = (1:2000);
		y(:,1) = data(1:2000);
		smoo(:,1) = regdatasmooth(x(:,1),y(:,1));

		
		for i = 2 : sections - 1
			x(:,i) = ((i - 1) * 1000 + 1 :(i+1)*1000);
			y(:,i) = data((i - 1) * 1000 + 1 :(i+1)*1000);
			smoo(:,i) = regdatasmooth(x(:,i),y(:,i));
			
		endfor
		
		x(:,sections) = ((sections - 1) * 1000 + 1 : length(data);
		y(:,sections) = data((sections - 1) * 1000 + 1 : length(data);
		smoo(:,sections) = regdatasmooth(x(:,sections),y(:,sections));
	
	endif
	
	