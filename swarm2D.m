function [ best_global_position, best_global_cost ] = swarm2D( f, swarmSize, iterations, xmin, xmax, ymin, ymax, omega, alpha, beta, display )
position = zeros(swarmSize, iterations, 2);
position(:,1,1) = (xmax-xmin)*rand(swarmSize, 1)+xmin;
position(:,1,2) = (ymax-ymin)*rand(swarmSize, 1)+ymin;
speed = zeros(swarmSize, iterations, 2);
speed(:,1,1) = 0.1*(xmax-xmin)*rand(swarmSize, 1);
speed(:,1,2) = 0.1*(ymax-ymin)*rand(swarmSize, 1);
best_position = position(:,1,:);
best_global_position = position(1,1,:);
best_global_cost = f(best_global_position);
for i = 2:swarmSize
    cost  = f(position(i,1,:));
    if  cost < best_global_cost
        best_global_cost = cost;
        best_global_position = position(i,1,:);
    end
end

for t = 2:iterations
    for i=1:swarmSize
        r1 = rand();
        r2 = rand();
        speed(i,t,1) = omega*speed(i,t-1,1)+alpha*r1*(best_position(i,1)-position(i,t-1,1))+beta*r2*(best_global_position(1)-position(i,t-1,1));
        speed(i,t,2) = omega*speed(i,t-1,2)+alpha*r1*(best_position(i,2)-position(i,t-1,2))+beta*r2*(best_global_position(2)-position(i,t-1,2));
        position(i,t,:) = position(i,t-1,:)+speed(i,t,:);
        position(i,t,1) = max(min(xmax, position(i,t,1)),xmin);
        position(i,t,2) = max(min(ymax, position(i,t,2)),ymin);
        cost = f(position(i,t,:));
        if f(best_position(i,:)) > cost
            best_position(i,:) = position(i,t,:);
        end
        if best_global_cost > cost
            best_global_cost = cost;
            best_global_position = position(i,t,:);
        end
    end
    if display
        plot_swarm2D(f, xmin, xmax, ymin, ymax, position(:,t,:));
    end
end
end

