function [M,admits,blocks]=simblockswitch(lam,mu,c,t);
blocks=0; admits=0; %total no. blocks and admits
M=zeros(size(t)); n=0; % no. in system
time=[ exponentialrv(lam,1) ]; timenow=0; tmax=max(t);
event=[ 1 ]; %first event is an arrival
while (timenow<tmax)
   M((timenow<=t)&(t<time(1)))=n;
   timenow=time(1); eventnow=event(1);
   event(1)=[ ]; time(1)= [ ]; % clear current event 
   if (eventnow==1) % arrival
       arrival=timenow+exponentialrv(lam,1); % next arrival
       b4arrival=time<arrival;
       event=[event(b4arrival) 1 event(~b4arrival)];
       time=[time(b4arrival) arrival time(~b4arrival)];
       if n<c %call admitted
         admits=admits+1; n=n+1;
         depart=timenow+exponentialrv(mu,1);
         b4depart=time<depart;
         event=[event(b4depart) -1 event(~b4depart)];
         time=[time(b4depart) depart time(~b4depart)];
       else
         blocks=blocks+1; % one more block, immed departure
         disp(sprintf('Time %10.3d Admits %10d Blocks %10d',...
             timenow,admits,blocks));
       end
   elseif (eventnow==-1) %departure
       n=n-1;
   end
end
