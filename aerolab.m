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
    l_inner=(2*A)/b;  %*(1+TaperRatio) ???
    l_outer=(2*A*(TaperRatio))/b;

    %Calculating wing loading
    B=m/A;

    %Calculating the minimal Reynoldsnumber for inner and outer part of the wing
    Re_min_inner=(vs*l_inner)/kV;
    Re_min_outer=(vs*l_outer)/kV;


