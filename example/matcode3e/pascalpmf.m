function pmf=pascalpmf(k,p,x) 
%For Pascal (k,p) rv X, and
%input vector x, output is a
%vector pmf: pmf(i)=Prob[X=x(i)]
x=x(:);
n=max(x);
i=(k:n-1)';
ip= [1 ;(1-p)*(i./(i+1-k))];
%pb=all n-k+1 pascal probs
pb=(p^k)*cumprod(ip); 
okx=(x==floor(x)).*(x>=k); 
%set bad x(i)=k to stop bad indexing
x=(okx.*x) + k*(1-okx); 
% pmf(i)=0 unless x(i)  >= k
pmf=okx.*pb(x-k+1);
