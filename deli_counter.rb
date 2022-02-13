require 'pry'

katz_deli = []

# the #line method should show everyone their current place in line
# if line is empty, it should say "The line is currently empty."
def line(array)
    line = []
    line_length = array.length
    cust_num = 1
    if line_length != 0
        while cust_num <= line_length
            line.push("#{cust_num}. #{array[cust_num-1]}")
            cust_num += 1
        end
        line_string = line.join(" ")
        puts "The line is currently: " + line_string
    elsif line_length == 0
        puts "The line is currently empty."
    end
end

line(["a", "b", "c"])

# the #take_a_number method should accept two arguments
# the array for the current line (katz_deli)
# and a string containing the name of the person joining the line
# the method should puts the person's name along with their position in line
def take_a_number(array, name)
    x = array.length + 1
    array.push("#{name}")
    puts "Welcome, #{name}. You are number #{x} in line."
    return array
end

# the #now_serving method should call out (puts) the next person in line 
# and then remove them from the front.
# If there is nobody in line, it should call out that
# "There is nobody waiting to be served!"
def now_serving(array)
    line_length = array.length
    if line_length > 0
        customer = array.first
        customer_name = customer.gsub(/[\d.]/, '')
        clean_name = customer_name.gsub(/^[ \t]/, '')
        puts "Currently serving #{clean_name}."
        array.shift
        return array
    elsif line_length == 0
        puts "There is nobody waiting to be served!"
        return array
    end
end