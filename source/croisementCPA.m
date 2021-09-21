function[ind3,ind4]= croisementCPA(ind1,ind2)

    ind3=ind1;
    ind4=ind2;
    N = length(ind1);
    
    %2 points de croisement
    
    c1 = randi(N,1);
    c2 = randi(N,1);
    while(abs(c2-c1)<2)
        c2= randi(N,1);
    end
    
    if(c2<c1)
        c3=c2;
        c2=c1;
        c1=c3;
    end
    
    seg1 = ind3(c1:c2);
    seg2 = ind4(c1:c2);
    
    
    for i=1:(c2-c1+1)
        ind3(c1-1+i)=seg2(i);
        ind4(c1-1+i)=seg1(i);
        i1=find(ind3==seg2(i),1);
        i2=find(ind4==seg1(i),1);
        
        ind3(i1)=seg1(i);
        
        
        
        ind4(i2)=seg2(i);
       
        
        
    end
    
    
    
        
    
    
    


end