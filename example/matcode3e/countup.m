function n=countup(x,y)
%Usage n=countup(x,y)
%n(i)= # elements of x <= y(i)
%Returns the same result as count.m 
%but can only be used if x and y
%are nondecreasing: x(i)<=x(i+1)
%and y(i) <= y(i+1)
n=zeros(length(y),1);
k=0;
for i=1:length(y),
    while (k<length(x)) & (x(k+1)<=y(i)),
        k=k+1;
    end
    n(i)=k;
end