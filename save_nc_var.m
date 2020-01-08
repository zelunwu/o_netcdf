function save_nc_var(filename,lon,lat,time,data,data_name)



nccreate(filename,data_name,...
    'Dimensions',{'lon' length(lon) 'lat' length(lat) 'time' length(time)},...
    'Format','classic',...
    'Datatype','single');


ncwrite(filename,data_name, data);

end

