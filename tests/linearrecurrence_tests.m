// Test 1: Compute a factorial
Pol<x> := PolynomialRing(Rationals());
FFPolMat := MatrixRing(FFPol,1);
M := FFPolMat![ x ];
L_ := [ 1 ];
R_ := [ 23 ];
s := Ilog(4,R_[#R_]);
DD := UpperCaseDD(1,2^s,2^s);
DDi := DD^(-1);
if not LinearRecurrence(M, L_, R_, DDi, s)[1][1,1] eq Factorial(23) then
    print "Test 1: failed.";
end if;
