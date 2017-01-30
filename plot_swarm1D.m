function [output ] = plot_swarm1D( f, xmin, xmax, position )
nbPoints = 300;
x = linspace(xmin, xmax, nbPoints);
y = zeros(nbPoints,1);
for i=1:nbPoints
    y(i) = f(x(i));
end
swarmSize = size(position,1);
cost = zeros(swarmSize,1);
for i=1:swarmSize
    cost(i) = f(position(i));
end
figure(1);
clf;
plot(x,y);
hold on;
scatter(position, cost);


end

