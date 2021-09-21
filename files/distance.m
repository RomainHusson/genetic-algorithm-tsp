function[d]=distance(villes,ind)

t=length(ind);
d0=sqrt((villes(1,ind(1))^2)+(villes(2,ind(1))^2)); % Distance entre le pt de depart et la première ville
dn=sqrt((villes(1,ind(t))^2)+(villes(2,ind(t))^2)); % Distance entre la derniere ville et le pt d arrivee
d=d0+dn;
for i=1:t-1
    dist=distancePoints(villes,ind(i),ind(i+1));
    d=d+dist;
end