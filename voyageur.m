clear all;
close all;
spaceSize = 20;
cities = generate_cities(30, spaceSize);
dist = get_distance_matrix(cities);
%solution = glouton(cities, dist);
solution = recuit_simule(cities, dist);
plot_solution(cities, solution);