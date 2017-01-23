function [ cities ] = generate_cities( n, size )
cities = zeros(n,2);
for i=1:n
    cities(i,1) = rand()*size;
    cities(i,2) = rand()*size;
end
end

