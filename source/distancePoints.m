function[d]=distancePoints(villes,v1,v2)
% v1 et v2 sont les indices des villes dont on doit calculer la distance les
% separant
xa=villes(1,v1);
ya=villes(2,v1);
xb=villes(1,v2);
yb=villes(2,v2);
d=sqrt(((xb-xa)^2)+((yb-ya)^2));