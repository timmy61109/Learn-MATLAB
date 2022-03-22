function v=finitevar(sx,px);
%Usage: ex=finitevar(sx,px)
%   returns the variance Var[X] 
%   of finite random variables X described by
%   samples sx and probabilities px
ex2=finiteexp(sx.^2,px);
ex=finiteexp(sx,px);
v=ex2-(ex^2);
