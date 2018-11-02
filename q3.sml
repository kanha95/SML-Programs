type pair = int * int;

fun bsort [] = []
|   bsort [x:pair] = [x]
|   bsort (x::y::xs) =  let val t1 = #2 y; val t2 = #2 x in 
                    if(t1 = t2) then
                        y::bsort(x::xs)
                    else
                        x::bsort(y::xs)
                    end;
                    
fun bubblesort [] = []
|   bubblesort (x::xs) = bsort(x::(bubblesort(xs)));

fun addp [] = []
  | addp [x:pair] = [x]
  | addp(x::y::xs) = let val t1 = #2 x; val t2 = #2 y; val t3 = #1 x; val t4 = #1 y; val t5 = t3 + t4 in 
                    if(t1 = t2) then [(t5, t1)] @ addp(xs)
		    else [x] @ [y] @ addp(xs)

		    end;


fun add(p,q) = let val temp = p @ q; val temp2 = bubblesort(temp) in addp(temp2) end;



(* add([(1,2),(3,3)], [(2,2),(3,5), (4,3)]); *)


fun mult(x:pair, []) = []
 | mult(x:pair, q:pair list) = let val t1 = #1 x; val t2 = #2 x; val t3 = hd(q); val t4 = #1 t3; val t5 = #2 t3; val t6 = t1 * t4; val t7 = t2 + t5 in [(t6,t7)] @ mult(x,tl(q)) end; 


fun multiply([],q) = []

  | multiply(p:pair list, q:pair list) = let val temp = (mult(hd(p), q) @ multiply(tl(p), q)) in add(temp,[]) end; 

(* multiply([(1,2),(3,3)], [(2,2),(3,5), (4,3)]); *)
