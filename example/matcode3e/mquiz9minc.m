function cmin=mquiz9minc(c);
msec=zeros(size(c));
for k=1:length(c),
    [msec(k),af]=mquiz9(c(k));
end
plot(c,msec);
xlabel('c');ylabel('e_L^*');
[msemin,optk]=min(msec);
cmin=c(optk);