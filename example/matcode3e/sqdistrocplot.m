function FM=sqdistrocplot(v,m,T);
FM1=sqdistroc(v,0.1,m,T);
FM2=sqdistroc(v,0.2,m,T);
FM5=sqdistroc(v,0.3,m,T);
FM=[FM1 FM2 FM5];
loglog(FM1(:,1),FM1(:,2),'-k',FM2(:,1),FM2(:,2),'--k',...
   FM5(:,1),FM5(:,2),':k');
legend('\it d=0.1','\it d=0.2','\it d=0.3',3)
ylabel('P_{MISS}');
xlabel('P_{FA}');
