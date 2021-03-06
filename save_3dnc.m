function save_3dnc(filename,lon,lat,time,data,data_name)


nccreate(filename,'lon',...
    'Dimensions',{'lon' length(lon)},...
    'Format','classic',...
    'Datatype','single');
nccreate(filename,'lat',...
    'Dimensions',{'lat' length(lat)},...
    'Format','classic',...
    'Datatype','single');
nccreate(filename,'time',...
    'Dimensions',{'time' length(time)},...
    'Format','classic',...
    'Datatype','double');
nccreate(filename,data_name,...
    'Dimensions',{'lon' length(lon) 'lat' length(lat) 'time' length(time)},...
    'Format','classic',...
    'Datatype','single');

ncwrite(filename,'lon', lon);
ncwrite(filename,'lat', lat);
ncwrite(filename,'time',time);
ncwrite(filename,data_name, data);

end

