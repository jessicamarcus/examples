# provide a one-liner that will create a password of a
# random sequence of characters, selected from a, of a given length n.

puts "Enter password length: "
n = gets.chomp.to_i
a = (('a'..'z').collect.to_a + ('A'..'Z').collect.to_a + ('0'..'9').collect.to_a).join
passwd = String.new

n.times do
  # take the length of a, select a random number from it, and take the character at that position
  x = rand(a.length)
  # and add char to passwd string
  passwd << a[x]
end

puts passwd


