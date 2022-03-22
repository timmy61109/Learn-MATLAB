function [mse,af]=mquiz9(c);
v1=ones(20,1);
RW=toeplitz(c.^((0:19)-1));
RY=(v1*(v1')) +RW;
af=(inv(RY))*v1;
mse=1-((v1')*af);