function [ output_args ] = plot_solution( cities, solution )
figure(1);
clf;
l = size(cities,1);
scatter(cities(:,1), cities(:,2))
hold on;
for i=1:l-1
    line([cities(solution(i),1),cities(solution(i+1),1)],[cities(solution(i),2),cities(solution(i+1),2)])
end
line([cities(solution(1),1),cities(solution(l),1)],[cities(solution(1),2),cities(solution(l),2)])

end

