function y=smoothfilter(L,M);
rx=[4 2 zeros(1,L-2)];
cx=rx-ones(size(rx));
x=gaussvector(1,cx,1);
h= ones(1,M)/M;
y=conv(h,x);
plot(1:L,x,1:L,y(1:L),':');
xlabel('\it  n');
legend('\it X_n','\it Y_n');