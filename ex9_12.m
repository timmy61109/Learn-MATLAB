function ex9_12()
  i = 1;
  total = 0;
  while i <= 50
    total += ((-1) ^ (i - 1)) * (i ^ 2)
    i += 1;
  end
  disp(total);
