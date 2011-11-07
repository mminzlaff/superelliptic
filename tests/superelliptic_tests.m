// Test 1: Check against Magma for hyperelliptic curves of small genus
// over small extension fields of small characteristic
for i := 1 to 10 do
  print i;
  g := Random(1,4);
  n := Random(1,2);
  p := 2;
  N := Floor(n*g/2 + 2*g*Log(p,2)+1);
  while p le (2*N-1)*(2*g+1) do
    p := RandomPrime(10);
    N := Floor(n*g/2 + 2*g*Log(p,2)+1);
  end while;

  FF := FiniteField(p^n);
  h := RandomIrreduciblePolynomial(FF, 2*g+1);
  print p, n;
  print h;
  if not ZetaFunction(2, h) eq ZetaFunction(HyperellipticCurve(h)) then
    print "Test 1: failed";
    print "p = ", p;
    print "h = ", h;
  end if;
end for;
