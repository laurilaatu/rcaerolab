%Script for calculatiing wing dimensions based on assumptions
%Version 13.05.2019


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
    l_inner=(2*A)/(b*(1+TaperRatio));
    l_outer=l_inner*TaperRatio;

    %Calculating wing loading
    B=m/A;

    %Calculating the minimal Reynoldsnumber for inner and outer part of the wing
    Re_min_inner=(vs*l_inner)/kV;
    Re_min_outer=(vs*l_outer)/kV;

    
    %Calculating thrust 23.05.2019
    
    %Given
    airdensity=1.2041;
    
    %Formula Force of thrust
    
    %Fthrust = airdensity*((pi*(0.0254*diaprop).^2)/4)*(RPMprop*0.0254*pitchprop*(1/60))^2;
    
    RPSprop = RPMprop / 60;
    Fthrust = 2*airdensity*((pi*(0.0254*diaprop).^2)/4)...
        *((0.0254*pitchprop*RPSprop)^2-(0.0254*pitchprop*RPSprop)*velocity)*(0.0254*diaprop/(3.29546*0.0254*pitchprop))^1.5;

    %Formula Resistance
    
    %TODO Formel (22) verstehen und ausformulieren
    %https://tu-dresden.de/ing/maschinenwesen/ilr/ressourcen/dateien/tfd/studium/dateien/Flugmechanik_V.pdf?lang=de
    %Given
    
    %Thrust required
    %1.25 =: Safety factor
    
    %Oswald-Efficiencefactor
    e=0.9;
    %Beiwert fuer parasitaeren Widerstand bei alpha=0°
    c_DO = 0.02;
    
    %q_inf =: dynamic pressure
    q_inf = (airdensity./2).*(velocity.^2);
    
    T_r=(q_inf*A*c_DO)+(1.25.*(m.*g).^2)./(q_inf*A*pi*e*AspRatio);
    