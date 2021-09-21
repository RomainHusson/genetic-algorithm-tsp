function[ind2]= mutation(ind1)


    n = length(ind1);
    pos1 = randi([1 n],1,1);
    pos2 = randi([1 n],1,1);
    while(pos2==pos1)
        pos2 = randi([1 n],1,1);
    end
    ind2=ind1;
    remp = ind2(pos1);
    ind2(pos1)=ind2(pos2);
    ind2(pos2)=remp;


end