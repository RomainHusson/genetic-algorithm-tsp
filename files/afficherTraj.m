function void = afficherTraj(villes,ind)
% Affiche le trajet etant donne un individu et les coordonnees des villes
n = length(ind);
villesVect = zeros(2,n+2);

villesVect(1,1) = 0; % Depart de la case depart (0,0)
villesVect(2,1) = 0;

villesVect(1,n+2) = 0; % Retour a la case depart (0,0)
villesVect(2,n+2) = 0;

for i=2:n+1
    villesVect(1,i) = villes(1,ind(i-1)); % creation du vecteur de coordonnees avec l'ordre de passage de l'individu
    villesVect(2,i) = villes(2,ind(i-1));
end

figure('Name','Trajet');
p = plot(villesVect(1,:),villesVect(2,:));
p.Marker = '*';
void = -1;
end

