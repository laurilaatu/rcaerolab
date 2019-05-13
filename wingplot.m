clf
hold on
plot([-b/2 b/2], [0 0], 'k')
plot([-b/2 -b/2], [0 l_outer], 'k')
plot([b/2 b/2], [0 l_outer], 'k')
plot([0 0], [0 l_inner], 'k')
plot([-b/2 0], [l_outer l_inner], 'k')
plot([0 b/2], [l_inner l_outer], 'k')
axis([-1 1 -1 1])