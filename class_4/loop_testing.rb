for i in 0..5
  puts "FOR loop balue is currently #{i}"
end

###

x=10
while x > 0
  x-=1
  puts "This WHILE loop will run #{x} more times."
end

###

$i = 0
$num = 5

until $i > $num  do
    puts "Inside the UNTIL loop i = #$i"
    $i += 1
end

###

$i = 0
$num = 5

begin
  puts ("Inside the BEGIN/UNTIL loop i = #$i" )
  $i += 1
end until $i > $num

###

10.times do |a|
  puts "The TIMES loop is on iteration #{a}"
end

###

1.upto(5) do |i| 
    puts "UPTO is at #{i * 2}"
end
