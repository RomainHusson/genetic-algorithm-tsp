function [ind,minD] = meilleurInd(villes,pop)
% Etant donne une liste d'individus, renvoie le meilleur, celui ayant la
% distance la plus faible dans son circuit

n = length(pop);
minD = distance(villes,pop(1,:));
ind=pop(1,:);

for i=2:n
    testMin = distance(villes,pop(i,:));
    if (minD > testMin)
        minD = testMin;
        ind = pop(i,:);
    end
end

end

