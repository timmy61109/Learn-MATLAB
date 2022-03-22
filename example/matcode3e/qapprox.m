function p=qapprox(z);
%approximation  to the Gaussian
% (0,1) complementary CDF Q(z)
t=1./(1.0+(0.231641888.*z(:)));
a=[0.127414796; -0.142248368; 0.7107068705; ...
        -0.7265760135; 0.5307027145];
p=([t t.^2 t.^3 t.^4 t.^5]*a).*exp(-(z(:).^2)/2);