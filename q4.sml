type pair = int*int;

infix ++;
fun (a, b)++(c,d) = (a + c, b + d);

infix **;
fun (a, b)**(c,d) = (a*c - b*d, b*c + a*d);

infix /;
fun 1/(a,b) = (a div (a*a + b*b), ~b div (a*a + b*b));

infix !;
fun 1!(a,b) = (a , ~b);

fun multiply(x:pair, q:pair) = let val t1 = #1 x; val t2 = #2 x; val t4 = #1 q; val t5 = #2 q; val t6 = t1 * t4; val t7 = t1*t5; val t8 = t2 * t4; val t9 = t2 * t5; val t10 = ~t9; val t11 = t6 + t10; val t12 = t7 + t8 in (t11,t12) end; 



infix $;

fun a$b = let val x:pair = 1!b; val t1 = #1 b * #1 b; val t2 = #2 b * #2 b; val t3= t1 + t2; val t4 = multiply(a,x); val t5 = #1 t4 div t3; val t6 = #2 t4 div t3 in (t5,t6) end;

(* (3,4)$(3,4) *)
