require 'pry'
# attr_accessor :radar, :ocean
#Generates the board, called ocean
x_axis = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']
y_axis = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
@ocean = x_axis.product(y_axis).each do |combo|
end
# p @ocean

#generates radar field, or answer key
@radar =Array.new(100, false)
# p @radar

#adds ships to answer key, so that ocean can be printed without spoilers
# @ships = 0
#
# def add_ship
#   v_or_h=rand(2)
#   @random = rand(100)
#   p @random
#   if v_or_h == 1
#     if @random + 5 <= 100
#       pos = @random
#       loop do
#         @radar[pos] = true
#         pos += 1
#         break if pos == @random + 5
#       end
#       @ships += 1
#     end
#   else
#     if @random + 50 <= 100
#       loop do
#         @radar[pos] = true
#         pos += 10
#         break if pos == @random +50
#       end
#       @ships += 1
#     end
#   end
# end
#
# until @ships == 2
#   add_ship
# end
# p @radar

#allow player to call torpedos
def torpedo
  puts "Where do you want to attack?"
  target = gets.chomp
  p target
  coord = target.split('')
  p coord
  sonar = @ocean.index(coord)
  if @radar[sonar] == true
    puts "Hit!"
  else
    puts "Miss!"

  end
end
torpedo


#pop array, replace with 'hit!'
binding.pry
