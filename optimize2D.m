function [ position, cost ] = optimize2D( type, swarmSize, iterations, omega, alpha, beta, display)
[y, xmin, xmax, ymin, ymax] = test_function_2D(type);
[position, cost] = swarm2D(y, swarmSize, iterations, xmin, xmax, ymin, ymax, omega, alpha, beta, display);
end

