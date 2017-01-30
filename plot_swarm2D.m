function [output ] = plot_swarm2D( f, xmin, xmax, ymin, ymax, position )
figure(1);
clf;
scatter(position(:,1), position(:,2));
xlim([xmin xmax]);
ylim([ymin ymax]);


end

