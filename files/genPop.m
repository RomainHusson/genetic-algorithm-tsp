function pop = genPop(nPop,nVille)
% Genere un ensemble d'individus composes d'indices 
% genPop(nPop) : [ind1 ind2 ind3 … indn]
% où indi = [v1 v2 v3 … vnPop] où vi est un entier représentant l’indice de la ville dans villes
pop = zeros(1,nVille);
for i=1:nPop
    ind = randperm(nVille);
    pop(i,:) = ind;
end
end

