function ex9_11()
  i = 1;
  total = 0;
  while i < 100
    i += 1;
    total = total + i ^ 2;
  end
  disp(total);
