%function plotting the wing Version 13.05.2019

function wingplot(b, l_inner, l_outer,color)
    
    plot([-b/2 b/2], [0 0],color)
    hold on
    plot([-b/2 -b/2], [0 l_outer],color)
    plot([b/2 b/2], [0 l_outer],color)
    plot([0 0], [0 l_inner],color)
    plot([-b/2 0], [l_outer l_inner],color)
    plot([0 b/2], [l_inner l_outer],color)
    axis([-1 1 -1 1])
    hold off
end
