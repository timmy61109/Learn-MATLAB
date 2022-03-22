function F=erlangcdf(n,lambda,x)
%This version extends the version in 
%the textbook to  handle a vector x
F=zeros(size(x));
for k=1:length(x),
    F(k)=1.0-poissoncdf(lambda*x(k),n-1);
end 
