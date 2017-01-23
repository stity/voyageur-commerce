function [ total_dist ] = get_total_dist(order, dist_matrix )
l =size(order,1);
total_dist=0;
for i=2:l
    if order(i)==0
        break;
    end
    total_dist = total_dist + dist_matrix(order(i-1),order(i));
end
if not(order(l)==0)
    total_dist = total_dist + dist_matrix(order(1), order(l));
end
end

