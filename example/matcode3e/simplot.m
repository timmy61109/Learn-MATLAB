function h=simplot(S,xls,yls);
%h=simplot(S,xlabel,ylabel)
%   Plots the output of a simulated state sequence
%   If S is N by 1, a discrete time chain is assumed
%   with visit times of one unit.
%   If S is an N by 2 matrix, a cts time Markov chain 
%   is assumed where
%   S(:,1) = state sequence.
%   S(:,2) = state visit times. 
%   The cumulative sum
%   of visit times are transition instances.
%   h is a handle to a stairs plot of the state sequence
%       vs state transition times

%in case of discrete time simulation
if (size(S,2)==1) 
    S=[S ones(size(S))];
end
Y=[S(:,1) ; S(size(S,1),1)];
X=cumsum([0 ; S(:,2)]);
h=stairs(X,Y);
if (nargin==3)
xlabel(xls);
ylabel(yls,'VerticalAlignment','Bottom');
end
