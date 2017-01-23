function [ solution ] = glouton( cities, dist_matrix )
l = size(cities, 1);
indexCity = floor(rand()*l)+1;
solution = zeros(l,1);
solution(1)=indexCity;
m = max(max(dist_matrix));
d_m = dist_matrix+eye(l)*(m+1);
for i=2:l
    mindist = m+1;
    argmin = 1;
    for j=1:l
        d = d_m(indexCity, j);
        if (d < mindist && not(any(j==solution)))
            mindist = d;
            argmin = j;
        end
    end
    solution(i)=argmin;
    indexCity = argmin;
end
end

