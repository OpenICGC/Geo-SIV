clear all
addpath('C:\Users\aleix\Desktop\Màster\Q2\Equips tèrmics de generació de calor i fred\main')

tref=20.0;
Tref=tref+273.15;
RHref=0.5;
Pref=101325;

fprintf('\nCoolProp Humid Air Properties (T=%.3f K, P=%.0f Pa, RH=%.0f%%)\n\n', Tref, Pref, RHref*100)

%density (kgma/m3), inverse of specific volume (m3/kgma) 'Vha'
ro=1.0/CoolProp.HAPropsSI('Vha','T',Tref,'P',Pref,'R',RHref);
fprintf('density = %8.3f (kg/m3)\n',ro)

%dynamic viscosity (Pa.s)
mu=CoolProp.HAPropsSI('mu','T',Tref,'P',Pref,'R',RHref);
fprintf('viscosity = %8.3e (Pa.s)\n',mu)

%thermal conductivity (W/mK)
k=CoolProp.HAPropsSI('k','T',Tref,'P',Pref,'R',RHref);
fprintf('conductivity = %8.3f (W/mK)\n',k)

%specific heat (J/kgK)
cp_da=CoolProp.HAPropsSI('cp','T',Tref,'P',Pref,'R',RHref);
cp_ha=CoolProp.HAPropsSI('cp_ha','T',Tref,'P',Pref,'R',RHref);
fprintf('specificheat = %8.3f (J/kgdaK) | %8.3f (J/kghaK)\n',cp_da, cp_ha)

%enthalpy (J/kg):dry air and humid air base
H_da=CoolProp.HAPropsSI('Hda','T',Tref,'P',Pref,'R',RHref);
H_ha=CoolProp.HAPropsSI('Hha','T',Tref,'P',Pref,'R',RHref);
fprintf('enthalpy = %8.3f (J/kgda) | %8.3f (J/kgha)\n',H_da,H_ha)

%humidity ratio (kgv/kgda)
W=CoolProp.HAPropsSI('W','T',Tref,'P',Pref,'R',RHref);
fprintf('humidity ratio = %8.5f (kgv/kgda)\n',W)
%relative humidity RH [0 1]
RH=CoolProp.HAPropsSI('RH','T',Tref,'P',Pref,'W',W);
fprintf('relative humidity (from humidity ratio) = %8.3f (%%)\n',RH*100.0)

%vapor pressure (Pa)
pv=CoolProp.HAPropsSI('P_w','T',Tref,'P',Pref,'R',RHref);
%molar fraction of vapor
Y=CoolProp.HAPropsSI('Y','T',Tref,'P',Pref,'R',RHref);
fprintf('vapor pressure = %8.3f (Pa) molar fraction = %8.5f\n',pv,Y)

%Dry temperature (K)
Tdb=CoolProp.HAPropsSI('Tdb','P',Pref,'Hha',H_ha,'R',RHref);
%Dew point temperature (K)
Tdp=CoolProp.HAPropsSI('Tdp','T',Tref,'P',Pref,'R',RHref);
%Wet bulb temperature (K)
Twb=CoolProp.HAPropsSI('Twb','T',Tref,'P',Pref,'R',RHref);
fprintf('Temperatures: Tdry(from Hha) = %8.3f (K) Tdew = %8.3f (K) Twbulb = %8.3f (K)\n',Tdb,Tdp,Twb)

%Z how far from ideal gas?
Z=CoolProp.HAPropsSI('Z','T',Tref,'P',Pref,'R',RHref);
fprintf('Z = %8.3f\n\n', Z)

