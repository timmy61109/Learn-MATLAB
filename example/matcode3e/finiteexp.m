function ex=finiteexp(sx,px);
%Usage: ex=finiteexp(sx,px)
%returns the expected value E[X] 
%of finite random variable X described 
%by samples sx and probabilities px
ex=sum((sx(:)).*(px(:)));
