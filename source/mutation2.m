function[ind2]= mutation2(ind1)


    n = length(ind1);
    pos1 = randi([1 n],1,1);
    pos2 = randi([1 n],1,1);
    while(pos2==pos1)
        pos2 = randi([1 n],1,1);
    end
    if(pos2<pos1)
        pos3=pos1;
        pos1=pos2;
        pos2=pos3;
    end
    ind2=ind1;
    ind2(pos1:pos2)=fliplr(ind2(pos1:pos2));


end