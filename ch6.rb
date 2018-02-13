a = :all
b = a
c = :all


puts "a == c" if a == c
puts "a === c" if a === c
puts "a.eql? c" if a.eql? c
puts "a.equal? c" if a.equal? c

x = "all"
y = "all"
z = :all

puts "x == y" if x == y
puts "x === y" if x === y

puts "x == z" if x == z
puts "x === z" if x === z

puts z.upcase