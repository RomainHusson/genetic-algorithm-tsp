
V4 = [-10+20*rand(1,4); -10+20*rand(1,4)];


main(V4,4,4^2);




%%

V8 = [-10+20*rand(1,8); -10+20*rand(1,8)];


main(V8,4,8^2);

%%

V16 = [-10+20*rand(1,16); -10+20*rand(1,16)];


main(V16,2,16);
main(V16,2,16^2);
main(V16,2,16^3);
main(V16,2,16*10);


%%

V32 = [-10+20*rand(1,32); -10+20*rand(1,32)];


main(V32,4,32^2);

%%
n=100;
rand('state', 1975);
V= round(rand(2,n )*20-10);

rand('state',sum(100*clock));

[ bestInd,minList ] = main(V,2,10000)

