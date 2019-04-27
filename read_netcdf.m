clc
clear all

% 20180113120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc

%ncid = netcdf.open('20180113120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc')
files=['20141214120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
    '20151205120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
    '20160715120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
    '20171115120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
    '20180113120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
       '20180603120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
       '20180110120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
    ]
Y=[0 0 0 0 0 0 0];
%X=[ datetime(2018,1,13), datetime(2018,6,3), datetime(2018,1,10) ];
for index = 1:7
    filename=files(index,:);
%filename='20180113120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
varnumber=0;
%Read the header
% ncdisp(filename)
%surf_temp

%Open the file in read only mode
ncid=netcdf.open(filename,'NOWRITE');


%inspect num of dimensions, variables, attributes, unim
[ndim, nvar, natt, unlim]=netcdf.inq(ncid);



for i=0:nvar-1
[varname, xtype, dimid, natt]=netcdf.inqVar(ncid,i);
%xtype: 2=character, 3=short integer, 4=integer, 5=real, 6=double
%dimid: el uero de elementos, es el umero de columnas en la matriz
%because dimid = [0, 1, 2], an array with three elements. Moreover, the 1st
%dimension corresponds to "dimension number zero" given by Step 3, the 2nd dimension corresponds to
%"dimension number 1", and the third dimension corresponds to "dimension number 2". Therefore, the
%variable "precip" has the dimension of (144, 72, 12), with total of 144x72x12 elements of real numbers.
%The coordinates for the 1st, 2nd, and 3rd dimensions are defined by lon(144), lat(72), and time(12).
if strcmp(varname,'surf_temp')==1
    varnumber=i;
end

end

[varname, xtype, dimid, natt]=netcdf.inqVar(ncid,varnumber);



%extract info for each dimension
for i=1:length(dimid)
    [dimname, dimlength]=netcdf.inqDim(ncid,dimid(1,i));
end


for i=0:nvar-1
[varname, xtype, dimid, natt]=netcdf.inqVar(ncid,i);

if strcmp(varname,'lat')==1
    dimnumber=i;
end

end

latitude=ncread(filename,'lat');
longitude=ncread(filename,'lon');

surface_temp=ncread(filename,'analysed_sst');

%Extract information according to
%http://www.imarpe.pe/imarpe/index.php?id_seccion=I0178030103000000000000
%entre 5°N y 25°S y entre la costa(68) y 90°W. 
[ ~, ix ] = min( abs( latitude-5 ) );
latitute_position_max=ix;
[ ~, ix ] = min( abs( latitude+25 ) );
latitute_position_min=ix;

[ ~, ix ] = min( abs( longitude+68 ) );
longitude_position_max=ix;
[ ~, ix ] = min( abs( longitude+90 ) );
longitude_position_min=ix;

% latitude=latitude(latitute_position_min:latitute_position_max);
% longitude=(longitude_position_min:longitude_position_max);
% latitude=diff(latitude);
% longitude=diff(longitude);

 latitude=double(latitude);
 longitude=double(longitude);

earthellipsoid = referenceSphere('earth','km');
area = areaquad(latitude(length(latitude)/2),longitude(length(longitude)/2),latitude(length(latitude)/2+1),longitude(length(longitude)/2+1),earthellipsoid)


clear latitude longitude
surface_temp=surface_temp(longitude_position_min:longitude_position_max,latitute_position_min:latitute_position_max);
for i = 1:numel(surface_temp)
    if(isnan(surface_temp(i)))
        surface_temp(i)=0;
    end
end
cpwater=4.1379;
fuerza_el_nino = sum(sum(surface_temp.*area.*cpwater.*1e3));
Y(index)=fuerza_el_nino;
% pcolor(longitude,latitude,surface_temp')
% 
% load coast
% hold on
% plot(long,lat,'k','LineWidth',1.5)
% plot(long+360,lat,'k','LineWidth',1.5)
end

