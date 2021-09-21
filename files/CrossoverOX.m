function[Cities] =CrossoverOX (I1,I2)

  
  I_temp = [];
  n = length(I1);
  iX1 = randi([0 n-1],1,1);
  iX2 = randi([0 n-1],1,1);

  for i = 1:n
  
    Cities(i) = I1(i);
    
  end
  

  if (iX1 > iX2)
  
    iX_temp = iX1;
    iX1 = iX2;
    iX2 = iX_temp;
  end

  for j = iX1:iX2
    
      
    
    iPosCity = find(Cities==I2(j+1),1);
    if (j <= iPosCity-1)
      iDec = iPosCity-1 - j;
    else
      iDec = iPosCity-1 - j + n;
    end
    if (iDec <= iX1)
    
      iS1 = iX1 - iDec;
      iS2 = n;
    
    else
    
      iS1 = 0;
      iS2 = iX1 - iDec + n;
    end
   
    for i = 0:iS1-1
        

       I_temp(i+1) = Cities(mod((i + iDec) , n)+1);
    end
      
    for i = iS1:iX1-1

      I_temp(i+1) = Cities(mod((i + iDec + j - iX1) , n)+1);
    end
    for i = j:iS2-1
   
      I_temp(i+1) = Cities(mod((i + iDec) , n)+1);
    end
    for i = iS2:n-1
     
      I_temp(i+1) = Cities(mod((i + iDec + j - iX1) , n)+1);
    end

    for i = 1:n
     
      Cities(i) = I_temp(i);
    
    end
  end
 
  
  iPosCityZero = find(Cities==1,1);
  for i = iPosCityZero:n
  
    Cities(i - iPosCityZero+1) = I_temp(i);
  end
  
  for i = 1:iPosCityZero-1
  
    Cities(i + n - iPosCityZero+1) = I_temp(i);
  
  end
end