fun tuple(t1,t2) = if #3 t1 = "AM" andalso #3 t2 = "PM" then t1 else if #3 t1 = "PM" andalso #3 t2 = "AM" then t2 else if #1 t1 < #1 t2 then t1 else if #1 t1 > #1 t2 then t2 else if #2 t1 < #2 t2 then t1 else if #2 t1 > #2 t2 then t2 else (#1 t1, #2 t1, #3 t1);

(*tuple((00,00,"AM"),(23,59,"PM"));*)

fun record(t1,t2) = if #f t1 = "AM" andalso #f t2 = "PM" then t1 else if #f t1 = "PM" andalso #f t2 = "AM" then t2 else if #hour t1 < #hour t2 then t1 else if #hour t1 > #hour t2 then t2 else if #min t1 < #min t2 then t1 else if #min t1 > #min t2 then t2 else {hour = #hour t1, min = #min t1, f = #f t1};

(*record({hour=00,min=00,f="AM"}, {hour=23,min=59,f="PM"});*)
