# Simple Hill Pattern Example
def hill_pattern(rows)
    for i in 1..rows
        print "  " * (rows - 1)
        print "* " * (2 * i - 1)
        print("\n")
        rows -= 1
        i += 1
    end
end
puts "Enter the size of hill you need in number: "
val = gets.chomp.to_i
hill_pattern(val)