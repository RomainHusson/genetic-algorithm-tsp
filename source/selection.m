function[IND]=selection(villes,Ind)
% prend en entree une liste d individus et en revoie une autre de taille
% divisee par deux apres selection par tournoi
% Realisation de N/2 tirages aléatoires/tournois
% On considère que lliste d'individus = colonne d'individus en vecteurs
% lignes
[lignes,colonnes]=size(Ind);
IND=zeros(floor(lignes/2),colonnes);
% 1 ligne de Ind = un individu
for i=1:(floor(lignes/2))
    % Tirage au sort de deux individus différents
    a=1;
    b=lignes;
    indice1=floor(a+(b-a)*rand(1));
    indice2=floor(a+(b-a)*rand(1));
    
    individu1=Ind(indice1,:);
    individu2=Ind(indice2,:);
    
    d1=distance(villes,individu1);
    d2=distance(villes,individu2);
    
    if d1>d2
        IND(i,:)=individu2;
    else
        IND(i,:)=individu1;
    end
    
    if(mod(lignes,2)~=0)
        IND(floor(lignes/2)+1,:)=Ind(floor(lignes/2)+1,:);
    end
end

    
    
    