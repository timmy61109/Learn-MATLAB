%imagestem.m
imagepmf;
xy=imagerv(10000);
fxy=freqxy(xy,SX,SY);
stem3(fxy(:,1),...
    fxy(:,2),fxy(:,3));
xlabel('\it x');
ylabel('\it y');