clear all, close all, clc;
k='ABD896ml' %ou k=input
CP1=[57	49	41	33 25 17 9 1 58	50 42 34 26	18
    10 2 59 51 43 35 27 19 11 3 60 52 44 36
    63 55 47 39 31 23 15 7 62 54 46 38 30 22
    14 6 61	53 45 37 29 21 13 5 28 20 12 4];
CP2=[14	17 11 24 1 5 3 28 15 6 21 10
    23 19 12 4	26 8 16	7 27 20	13 2
    41	52 31 37 47	55 30 40 51	45 33 48
    44 49 39 56 34	53 46 42 50	36 29 32];
LS=[1 1 2 2 2 2 2 2 1 2 2 2 2 2 2 1];

kbin=dec2bin(k,8);
%permutation pc1 
kbin=kbin(CP1);
%on split en deux parties 
G(1,:)=kbin(1:28);
D(1,:)=kbin(29:56);
%on shift a gauche : circshift -LS (pour shift a droite : LS)
for i=1:16
    G(i+1,:)=circshift(G(i,:),-LS);
    D(i+1,:)=circshift(D(i,:),-LS);
    GD=[G(i+1,:),D(i+1,:)];
    keys{i}=GD(CP2);
end