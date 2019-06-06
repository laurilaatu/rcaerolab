%function plotting the thrust needed and max thrust 4.6.19

function thrustplot(velocity,T_r,Fthrust)
    plot(velocity,T_r,'k', velocity,Fthrust,'b')
    legend('Thrust required for stable flight','Thrust')
end