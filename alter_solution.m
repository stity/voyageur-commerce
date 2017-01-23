function [ new_solution ] = alter_solution( old_solution )
l = size(old_solution, 1);
new_solution=zeros(l,1);
aleat1 = floor(rand()*l)+1;
aleat2 = floor(rand()*l)+1;
firstIndex = min(aleat1, aleat2);
secondIndex = max(aleat1, aleat2);
pivot = (firstIndex+secondIndex)/2;
for i=1:l
    new_solution(i) = old_solution(i);
end
new_solution(firstIndex) = old_solution(secondIndex);
new_solution(secondIndex) = old_solution(firstIndex);
for i=(firstIndex+1):(secondIndex-1)
    new_solution(i) = old_solution(2*pivot-i);
end

end

