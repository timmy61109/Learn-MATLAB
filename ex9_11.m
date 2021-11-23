function ex9_11()
  i = 1;
  total = 0;
  while i <= 100
    total += i ^ 2;
    i += 1;
  end
  disp(total);
