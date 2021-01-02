xList = betarnd(0.5,0.5,[1,100000]);
tLst = 0:0.0001:1;
FnLst = [];
Flist = [];
for t = 0:0.0001:1
    x = betacdf(t, 0.5, 0.5);
    Flist = [Flist, x];
    p = (1/100000)*sum(xList<=t);
    FnLst = [FnLst,p];
end
plot(FnLst);
hold on
plot(Flist, 'r');
figure
plot(Flist,FnLst-Flist)
