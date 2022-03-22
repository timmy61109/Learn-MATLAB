function h=pmfplot(sx,px,xls,yls)
%Usage: pmfplot(sx,px,xls,yls)
%sx and px are vectors, px is the PMF
%xls and yls are x and y label strings
nonzero=find(px);
sx=sx(nonzero); px=px(nonzero);
sx=(sx(:))'; px=(px(:))';
XM = [sx; sx];
PM=[zeros(size(px)); px];
h=plot(XM,PM,'-k');
set(h,'LineWidth',3);
if (nargin==4)
  xlabel(xls);
  ylabel(yls,'VerticalAlignment','Bottom');
end
xmin=min(sx); xmax=max(sx);
xborder=0.05*(xmax-xmin);
xmax=xmax+xborder;
xmin=xmin-xborder;
ymax=1.1*max(px);
axis([xmin xmax 0 ymax]);
