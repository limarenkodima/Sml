Задание 1
а)
val fttl = map (implode o tl o tl o explode);
b)
val fsml = map (fn x => "s"^x^"m");
Задание 2
а)
val count = reduce (fn (a:int,b)=>b+1) 0;
b)
val duplist = reduce (fn(a:int,b)=> [a,a]@b) nil;
Задание 3
a)
fun maxval(Empty) = 0
| maxval(Node(lft,v,rht)) = if v > Int.max(maxval(lft),maxval(rht)) then v else Int.max(maxval(lft),maxval(rht))
b)
fun quann(n, Empty) = 0
| quann(n, Node(lft,v,rht)) = if n = v then 1 + quann(n, lft) + quann(n, rht) else quann(n, lft) + quann(n, rht);у