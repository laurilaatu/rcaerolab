%Script for Aerolab Version 13.05.2019

%TO DO: Legend
%Variable Name  -   Name of physical Variable 

%Assumptions
AspRatio=10;                %Aspect Ratio = span/average chordline
Ca_infinite=0.9;            %Liftcoefficient of our infinite wing
m=0.7;                      %mass of the plane
TaperRatio=0.5;             %Taper Ratio = inner chord/outer chord
vs=10;                      %Stall speed/min Speed/lift off speed

%Constants
g=9.81;                     %Acceleration of gravity (earth)
rho=1.2;                    %Air density at 20 degrees Celcius
kV=17.1*10e-6;              %kinamtic Viscosity of air

%Calculating Liftcoefficient
Ca_finite=AspRatio*Ca_infinite/(AspRatio+2);
Ca_max=Ca_finite;

%Calculation wing area
A=(2*m*g)/((vs.^2)*rho*Ca_max);

%Calculating wing span
b=sqrt(A*AspRatio);

%Calculating chord line for inner and outer part of the wing
%(Innen- und Aussenprofiltiefe)
l_inner=(2*A)/b;  %*(1+TaperRatio) ???
l_outer=(2*A*(TaperRatio))/b;

%Calculating wing loading
B=m/A;

%Calculating the minimal Reynoldsnumber for inner and outer part of the wing
Re_min_inner=(vs*l_inner)/kV;
Re_min_outer=(vs*l_outer)/kV;

%TO DO: Plotting
%Plot Assumption to Output
%Maybe plot the wing 