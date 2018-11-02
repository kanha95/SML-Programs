exception EXP;

fun sumup(m,n) = if(m <> n+1) then (m + sumup(m+1,n)) else 0;
fun sump(m,n) = if m>n then raise EXP else sumup(m,n); 
fun sum(m,n) = sump(m,n) handle EXP => sump(n,m);

fun bin2(n,r) = if r=0 then 1 else ((n-r+1)*bin2(n,r-1)) div r;
fun bin1(n,r) =  if r>n then raise EXP else bin2(n,r);
fun bin_coeff(n,r) = bin1(n,r) handle EXP => 0;
