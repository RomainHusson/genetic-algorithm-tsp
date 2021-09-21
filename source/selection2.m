function[POP]=selection2(villes,pop)


[n,m]=size(pop);
if(mod(n,2)~=0)
    POP=zeros(floor(n/2)+1,m);
    POP(floor(n/2)+1,:)=pop(floor(n/2)+1,:);
else
    POP=zeros(floor(n/2),m);
end

permu = randperm(n);
% 1 ligne de Ind = un individu
for i=1:(floor(n/2))
    
    a=1;
    b=n;
    
    
    individu1=pop(permu(2*i),:);
    individu2=pop(permu(2*i-1),:);
    
    d1=distance(villes,individu1);
    d2=distance(villes,individu2);
    
    if d1>d2
        POP(i,:)=individu2;
    else
        POP(i,:)=individu1;
    end
    
    
end