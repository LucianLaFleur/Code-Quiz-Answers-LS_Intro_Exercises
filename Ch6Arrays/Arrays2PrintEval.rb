=begin
Arrays Question 2
objective:
What will the following programs return? What is value of arr after each?
1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)
=end

# I'm having a problem where I don't know how to view the return value
# in either Git Bash or in IRB, as neither display return values that are
# not indicated to be printed to the screen.
# ??? How do I find return values that are not printed to the screen?

# I'm just using print to view what I otherwise couldn't see in the
# provided code

arr = ["b", "a"]
 arr = arr.product(Array(1..3))
 print arr.first.delete(arr.first.last)
puts "\n ---"
  print arr

puts "\n --- pt. 2 ---"

arr = ["b", "a"]
  arr = arr.product([Array(1..3)])
  print arr.first.delete(arr.first.last)
puts "\n ---"
  print arr

=begin
.product does this "cross pollenation" to get all the possible
combos of an array and a range in this case. Then, some methods are used for
targeting items in the output. The difference between 1 and 2 is the
[square brackets] used in the second example around the array of the range
1..3.
In part 2, the brackets select [1,2,3] as an intact object to be attached to
"b" and "a" with .product
In the first part, each element within [1,2,3] gets individually added to
"b" and "a".

--- breakdown of outputs ---

part 1:
return: 1
 ---
value of arr: [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

pt 1. commentary: the value 1 gets returned by the .first method.
Then, the .delete method (targets) the first item in the main array, which is
a sub-array, ["b",1]. Next, the .last method targets the last item in that
sub-array for deletion, shaving off the 1 in the return for arr.

part 2:
return: [1, 2, 3]
 ---
value of arr: [["b"], ["a", [1, 2, 3]]]

pt.2 commentary:
Now the whole [1,2,3] sub-array gets selected by those square brackets around
[Array(1..3)], attaching it as a sub-array to both "b" and "a".
for .delete(arr.first.last), the first item of the whole array is a the
sub-array consisting of [[b], [1,2,3]]. The last item is now [1,2,3], so that
whole chunk gets taken out by the .delete method.

Now, what confuses me is that both 1's get deleted if I run the following code
into the program
arr.first.last.delete(arr.first.last.first)

Returning 1, and making arr == [["b", [2, 3]], ["a", [2, 3]]]

???   ???   ???
I'm not sure why BOTH get deleted because i thought this was just targeting
the first nesting, but it somehow cut out the one from the second half...
???   ???   ???

see pt. 3 below

=end
puts "\n---pt. 3 first of the last of the first---"

arr = ["b", "a"]
  arr = arr.product([Array(1..3)])
  print arr.first.last.delete(arr.first.last.first)
puts "\n ---"
  print arr
