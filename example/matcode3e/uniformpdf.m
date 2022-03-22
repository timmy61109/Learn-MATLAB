function f=uniformpdf(a,b,x)
%Usage: f=uniformpdf(a,b,x)
%returns the PDF of a continuous
%uniform rv evaluated at x
f=((x>=a) & (x<b))/(b-a);