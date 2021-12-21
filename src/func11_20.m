function i2 = func11_2(i, n)
%  Description
%  i2 = func11_2(i, n)
%
% Long description

i = double(i);
d1 = n * ones(1, size(i, 1) / n);
d2 = n * ones(1, size(i, 2) / n);
c = mat2cell(i, d1, d2);
c2 = c;
for i=1:numel(c)
  m = round(mean(c{i}(:)));
  c2{i}(:)=m;
end

i2=uint8(cell2mat(c2));
