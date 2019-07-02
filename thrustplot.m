%function plotting the thrust needed and max thrust 4.6.19

function thrustplot(velocity,T_r,Fthrust)
    plot(velocity,T_r,'g', velocity,Fthrust,'b')
    grid on
    set(gca, 'XColor', 'w')
    set(gca, 'YColor', 'w')
    set(gca,'Color','k')
    xlabel('m/s','color','k')
    ylabel('N','color','k')
    legend('Thrust required for stable flight','Thrust','color','w')
end