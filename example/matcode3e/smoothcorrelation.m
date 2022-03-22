%smoothcorrelation.m
rx=[2 4 2];
h=[0.5 0.5];
rxy=conv(h,rx)
ry=conv(fliplr(h),rxy)
