function [ best_global_position, best_global_cost ] = swarm1D( f, swarmSize, iterations, xmin, xmax, omega, alpha, beta, display )
position = zeros(swarmSize, iterations);
position(:,1) = (xmax-xmin)*rand(swarmSize, 1)+xmin;
speed = zeros(swarmSize, iterations);
best_position = position(:,1);
best_global_position = position(1,1);
best_global_cost = f(best_global_position);
for i = 2:swarmSize
    cost  = f(position(i,1));
    if  cost < best_global_cost
        best_global_cost = cost;
        best_global_position = position(i,1);
    end
end

for t = 2:iterations
    for i=1:swarmSize
        r1 = rand();
        r2 = rand();
        speed(i,t) = omega*speed(i,t-1)+alpha*r1*(best_position(i)-position(i,t-1))+beta*r2*(best_global_position-position(i,t-1));
        position(i,t) = position(i,t-1)+speed(i,t);
        position(i,t) = max(min(position(i,t),xmax),xmin);
        cost = f(position(i,t));
        if f(best_position(i)) > cost
            best_position(i) = position(i,t);
        end
        if best_global_cost > cost
            best_global_cost = cost;
            best_global_position = position(i,t);
        end
    end
    if display
        plot_swarm1D(f, xmin, xmax, position(:,t));
    end
end
end

