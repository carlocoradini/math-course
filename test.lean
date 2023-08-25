-- NOTE:
-- -- -- This is my attempt to save my progress in the Natural Number Game
-- 


-- import mynat.definition -- imports the natural numbers {0,1,2,3,4,...}.
-- import mynat.add -- imports definition of addition on the natural numbers.
-- import mynat.mul -- imports definition of multiplication on the natural numbers.

-- This is the first lemma example:
lemma example1(x y z : mynat) : x * y + z = x * y + z :=

begin
  refl,
end

-- Second example of a lemma:
lemma example2 (x y : mynat) (h : y = x + 7) : 2 * y = 2 * (x + 7) :=

begin
  rw h,
  refl,
end

-- import mynat.definition -- import Peano's definition of the natural numbers {0,1,2,3,4,...}
-- Thrid example of a lemma:
lemma example3 (a b : mynat) (h : succ a = b) : succ(succ(a)) = succ(b) :=

begin
  rw h,
  refl,
end

add_zero (a : mynat) : a + 0 = a
add_succ (a d : mynat) : a + succ(d) = succ (a + d)

lemma add_succ_zero (a : mynat) : a + succ(0) = succ(a) :=
begin
  rw add_succ,
  rw add_zero,
  refl,
end