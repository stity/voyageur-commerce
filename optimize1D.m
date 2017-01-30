function [ p, c ] = optimize1D( type, swarmSize, iterations, omega, alpha, beta, display )
[y, xmin, xmax] = test_function_1D(type);
[p, c] = swarm1D(y, swarmSize, iterations, xmin, xmax, omega, alpha, beta, display);

end

