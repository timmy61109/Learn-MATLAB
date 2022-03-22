function pmf=duniformpmf(k,l,x)
%discrete uniform(k,l) rv X, 
%input = vector x
%output= vector pmf: pmf(i)=Prob[X=x(i)]
pmf= (x>=k).*(x<=l).*(x==floor(x));
pmf=pmf(:)/(l-k+1);