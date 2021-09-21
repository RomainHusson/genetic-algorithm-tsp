function void = graphConvergence(meillIndivs)
% Etant donne une liste des meilleurs individus pour chaque generation,
% affichage de la convergence de la distance de trajet total
n = length(meillIndivs);

vectConv = zeros(2,n);
vectConv(1,:) = 1:n;
vectConv(2,:) = meillIndivs;

figure('Name','Convergence');
plot(vectConv(1,:),vectConv(2,:));


void = -1;
end

