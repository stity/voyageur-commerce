function [ dist ] = get_distance_matrix( cities )
l = size(cities,1);
dist = zeros(l);
for i=1:l
   for j=1:l
       dist(i,j)=norm(cities(i,:)-cities(j,:));
   end
end
end

