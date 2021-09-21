function[ bestInd,minList ] = main( villes,k,lim )

    %villes liste des coordonnées des villes, k coeff multiplicateur pour
    %la population, lim nombre de générations
    nVilles = length(villes);
    nPop = floor(nVilles*k);
    
    pop = genPop(nPop,nVilles);
    
    bestListe=[realmax];
    it=0;
    compteur= 0;
    compteur2 = 0 ;
    
    while(it<lim)
        
        
        if(compteur2>100)
            
            listAlea = randperm(nPop);
            for n=1:floor(nPop/2)
                bestPop(n) = pop(listAlea(n));
            end
            
            
        else
        
            bestPop = selection(villes,pop);
        
        end
        
        listVisite = randperm(floor(nPop/2));
        
        
        enfants = [];
        for i = 1:(floor(nPop/4))
            
            
            
            if(distance(villes,bestPop(listVisite(2*i-1),:))-distance(villes,bestPop(listVisite(2*i),:))==0)
                bestPop(listVisite(2*i),:)=mutation2(bestPop(listVisite(2*i),:));
            end
            [ind1,ind2]=croisementCPA(bestPop(listVisite(2*i-1),:),bestPop(listVisite(2*i),:));
%             ind1 = CrossoverOX(bestPop(listVisite(2*i-1),:),bestPop(listVisite(2*i),:));
%             ind2 = CrossoverOX(bestPop(listVisite(2*i),:),bestPop(listVisite(2*i-1),:));
            if randi([0 1],1,1)<0.1
                ind1=mutation(ind1);
                ind1=mutation(ind1);
     
            end
            if randi([0 1],1,1)<0.1
                ind2=mutation2(ind2);
                ind2=mutation2(ind2);
           
            end
            enfants(2*i-1,:)=ind1;
            enfants(2*i,:)=ind2;
            
        end
        
        if mod(nPop,4)~=0
            enfants(floor(nPop/2),:) = bestPop(listVisite(floor(nPop/2)),:);
        end
        
        
%         if(compteur==50)
%             compteur = 0;
%             for i = 1:floor(nPop/2)
%                 enfants(i,:)=mutation2(enfants(i,:));
%                 enfants(i,:)=mutation2(enfants(i,:));
%             end
%         end
%         
            
        
        
        pop = [bestPop ; enfants];
            
            
        
        it=it+1;
        [bestInd, distMin] = meilleurInd(villes,pop);
        minList =min(bestListe);
        
        if distMin< minList
            bestListe(it)= distMin;
            bestIndGraph = bestInd; 
        else
            bestListe(it)= minList;
            compteur=compteur+1;
        end
        bestListe2(it)=distMin;
        
        
    end
    

    afficherTraj(villes,bestIndGraph);
    graphConvergence(bestListe);
    graphConvergence(bestListe2);
    minList =min(bestListe);
    bestInd=bestIndGraph;

end