clear all
addpath('C:\Users\aleix\Desktop\Màster\Q2\Equips tèrmics de generació de calor i fred\main')

tref=20.0;
Tref=tref+273.15;
Pref=101325;
fprintf('\nCoolProp Incompressible Fluids Properties (T=%.3f K, P=%.0f Pa)\n\n', Tref, Pref)

fprintf('%15s\t%8s\t%8s\t%8s\t%8s\n','Fluid','Density','SpecHeat','Dynvisc','TConduct')
fprintf('%15s\t%8s\t%8s\t%8s\t%8s\n','','(kg/m3)','(J/kgK)','(Pa.s)','(W/mK)')

%DowQ thermal fluid at Tref+Pref
DowQstr='DowQ';
IPro=CoolProp.PropsSI('D','T',Tref,'P',Pref,'INCOMP::DowQ');
IPcp=CoolProp.PropsSI('C','T',Tref,'P',Pref,'INCOMP::DowQ');
IPmu=CoolProp.PropsSI('V','T',Tref,'P',Pref,'INCOMP::DowQ');
IPk=CoolProp.PropsSI('L','T',Tref,'P',Pref,'INCOMP::DowQ');
fprintf('%15s\t%8.3f\t%8.3f\t%8.3e\t%8.3f\n',DowQstr,IPro,IPcp,IPmu,IPk)

%CaCl2-aq mixture at 0.15 mass concentration, Tref+Pref
CaCl2str='CaCl2-m15%';
IMro=CoolProp.PropsSI('D','T',Tref,'P',Pref,'INCOMP::MCA[0.15]');
IMcp=CoolProp.PropsSI('C','T',Tref,'P',Pref,'INCOMP::MCA[0.15]');
IMmu=CoolProp.PropsSI('V','T',Tref,'P',Pref,'INCOMP::MCA[0.15]');
IMk=CoolProp.PropsSI('L','T',Tref,'P',Pref,'INCOMP::MCA[0.15]');
fprintf('%15s\t%8.3f\t%8.3f\t%8.3e\t%8.3f\n',CaCl2str,IMro,IMcp,IMmu,IMk) 

%Propilenglicol-aq mixture at 0.40 volume concentration, Tref+Pref
Prop40str='PropGlicol-v40%';
IVro=CoolProp.PropsSI('D','T',Tref,'P',Pref,'INCOMP::APG[0.40]');
IVcp=CoolProp.PropsSI('C','T',Tref,'P',Pref,'INCOMP::APG[0.40]');
IVmu=CoolProp.PropsSI('V','T',Tref,'P',Pref,'INCOMP::APG[0.40]');
IVk=CoolProp.PropsSI('L','T',Tref,'P',Pref,'INCOMP::APG[0.40]');
fprintf('%15s\t%8.3f\t%8.3f\t%8.3e\t%8.3f\n\n',Prop40str,IVro,IVcp,IVmu,IVk) 

