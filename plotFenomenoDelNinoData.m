clc
clear all
close all
Y = 1.0e+12 *   [ 6.2654    6.2755    6.2485    6.2267    6.2848    6.2680    6.2798]
%plot(Y)
files=['20141214120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
    '20151205120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
    '20160715120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
    '20171115120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
    '20180113120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
       '20180603120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
       '20180110120000-UKMO-L4_GHRSST-SSTfnd-OSTIA-GLOB-v02.0-fv02.0.nc'
    ]
%plot(log(-Y+max(Y)))
xdatestr=['12:00:34.626 AM 12/14/2014'
          '12:00:34.626 PM 12/05/2015'
          '12:00:34.626 PM 07/15/2016'
          '12:00:34.626 PM 11/15/2017'
          '12:00:34.626 PM 01/13/2018'
          '12:00:34.626 PM 06/03/2018'
           '12:00:34.626 PM 01/10/2018'
 
]
xdatenum=datenum(xdatestr,'HH:MM:SS.FFF AM mm/dd/yyyy')
plot(xdatenum,log(-Y+max(Y)))
title ("Escala energética del Femonemo del niño");
xlabel ("Años");
ylabel ("Escala");
datetick(gca)