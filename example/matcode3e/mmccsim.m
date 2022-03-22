function pb=droprouter(c,lam,mu,b);
blocks=0; %total # blocks
admits=0;
n=0; % # in system
time=[ exponentialrv(lam,1) ];
event(1)=1; %first event is an arrival
while (blocks<b)
   timenow=time(1);
   eventnow=event(1);
   event(1)=[ ]; % clear current event
   time(1)= [ ]; 
   if (eventnow==1) % arrival
       %schedule next arrival
       arrival=timenow+exponentialrv(lam,1);
       b4arrival=time<arrival;
       event=[event(b4arrival) 1 event(~b4arrival)];
       time=[time(b4arrival) arrival time(~b4arrival)];
       if n<c
           admits=admits+1;
           n=n+1;
           depart=timenow+exponentialrv(mu,1);
           b4depart=time<depart;
           event=[event(b4depart) -1 event(~b4depart)];
           time=[time(b4depart) depart time(~b4depart)];
       else
           blocks=blocks+1; %one more block, immed departure
           disp(sprintf('%10d %10d %10.2f',admits,blocks,timenow));
       end
   elseif (eventnow==-1) %departure
       n=n-1;
   end
end
pb=blocks/(admits+blocks);
       
       
       
        
       
           
     n=n+1;
     
     
     
     
       
    