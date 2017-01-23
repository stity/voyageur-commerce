function [ best_s ] = recuit_simule( cities, dist_matrix )
l = size(cities,1);
current_s = get_random_solution(l);
current_d = get_total_dist(current_s, dist_matrix);
best_s = current_s;
best_d = current_d;
T = 3;
iterT = 0;
while T>0.001
    new_s = alter_solution(current_s);
    new_d = get_total_dist(new_s, dist_matrix);
    if new_d < current_d
        current_d = new_d;
        current_s = new_s;
    else
        delta_d = new_d - current_d;
        trigger = exp(-delta_d/T);
        if rand() < trigger
            current_d = new_d;
            current_s = new_s;
        end
    end
    
    if current_d < best_d
        best_d = current_d;
        best_s = current_s;
    end
    
    [T, iterT] = decay_temperature(T,iterT);
end

end

