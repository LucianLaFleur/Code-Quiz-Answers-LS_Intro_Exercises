#Flow Control Question 1

=begin

1. (32 * 4) >= 129
  False
  (it equals 128)

2. false != !true
  False
  two negatives cancel each other out, so
  false != !true  ...  can be reduced to
  false = true
  and that's easily seen as a false statement once you get all the garnish
  out of the way

3. true == 4
  False
  true is a reserved boolean value. 4 is an integer, and while all values
  aside from nil and false return as true, they are not THE TRUTH.
  So they get considered "truthy" but they are not the value of truth.
  Now, if I get a bit abstract then I can say
  true == (4+4 == 8)
  which returns as true.
  The evaluation is true. The object 4 itself is an integer.

4. false == (847 == '847')
  true
  847 is an integer, '847' is a string. They're two different kinds of objects.
  I have to re-arrange my English grammar to humanize the code a bit, but
  here's the gist of it:
  It's a true statement to say an integer and a string are different.

5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
  It's true, but kinda cryptic at a glance

  Notice that it's just a bunch of "or" statements. If anywhere along the line,
  a "true" somes up, then the set gets evaluated as true.
  So, I only need to find one True evaluation to get "true" as my return value

  Let's put this into English to break it down

(First, false or not-(100 divided by 5) is 20) or (second, 328 divided by 4...
                         20                                  82
reduces to...
(First, false or not-20 is 20) or (second, 82 == 82) or false
So.. (false or false) or (true or false)
We got one true amidst a bunch of or's, so it gets evaluated as true

=end
