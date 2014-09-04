airport_value = xlsread('airports.xlsx');
latitudes = airport_value(:,7);
longitudes = airport_value(:,8);
[~,~,airport_names]=xlsread('airports.xlsx', 1,'B1:B7733');
temp = 'Bangalore';
idx = find(strcmp([airport_names], temp));