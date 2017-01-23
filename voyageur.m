clear all;
close all;
spaceSize = 20;
cities = generate_cities(15, spaceSize);
dist = get_distance_matrix(cities);
solution = glouton(cities, dist);
plot_solution(cities, solution);