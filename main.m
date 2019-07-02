%Script for Aerolab Version 13.05.2019
clear
clf

%TO DO: Legend
%Variable Name  -   Name of physical Variable 

%Assumptions
AspRatio=6;                %Aspect Ratio = span/average chordline
Ca_infinite=0.5;            %Liftcoefficient of our infinite wing
m=0.7;                      %mass of the plane
TaperRatio=0.8;             %Taper Ratio = inner chord/outer chord
vs=17;                      %Stall speed/min Speed/lift off speed
%Velocity in air (range)
velocity=linspace(5,40,500);

RPMprop=19404;
diaprop=5;
pitchprop=4.5;
%Main

aerolab
% wingplot(b, l_inner, l_outer,'k')
% Re_min_inner
% Re_min_outer
% Fthrust

thrustplot(velocity,T_r,Fthrust)


%comparison

%TaperRatio=1; %change a variable here
%aerolab
%hold on
%wingplot(b, l_inner, l_outer,'b') %uncomment for comparison


%TO DO: Plotting
%Plot Assumption to Output