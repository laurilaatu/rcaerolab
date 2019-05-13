%Script for Aerolab Version 13.05.2019
clear
clf

%TO DO: Legend
%Variable Name  -   Name of physical Variable 

%Assumptions
AspRatio=10;                %Aspect Ratio = span/average chordline
Ca_infinite=0.9;            %Liftcoefficient of our infinite wing
m=0.7;                      %mass of the plane
TaperRatio=0.5;             %Taper Ratio = inner chord/outer chord
vs=10;                      %Stall speed/min Speed/lift off speed

%Main
aerolab
wingplot(b, l_inner, l_outer,'k')

%comparison
AspRatio=4;
aerolab
hold on
wingplot(b, l_inner, l_outer,'b')


%TO DO: Plotting
%Plot Assumption to Output