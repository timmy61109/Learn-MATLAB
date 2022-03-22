%unifbinom100.m
sx=0:100;sy=0:100;
px=binomialpmf(100,0.5,sx);
py=duniformpmf(0,100,sy);
[SX,SY]=ndgrid(sx,sy);
[PX,PY]=ndgrid(px,py);
SW=SX+SY; PW=PX.*PY;
sw=unique(SW); 
pw=finitepmf(SW,PW,sw);
pmfplot(sw,pw);