function voltpower(n)
v=duniformrv(-3,3,n);
y=(v.^2)/2;
yrange=unique(y);
yfreq=(hist(y,yrange)/n)';
h=pmfplot(yrange,yfreq, ... 
    '\it y','Rel. Freq.');
xt=0:5;
axis([-1 5 0 0.35]);
set(gca,'XTick',xt);
set(gca,'XTickLabel',xt');