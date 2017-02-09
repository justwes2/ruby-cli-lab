# require 'pry'
# attr_accessor :radar, :ocean
#Generates the board, called ocean
x_axis = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']
y_axis = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']
@ocean = x_axis.product(y_axis).each do |combo|
end
# p @ocean
@viewscreen = @ocean.each_slice(10) { |x|
  puts  x.join(' ')
}
#generates radar field, or answer key
@radar =Array.new(100, false)
# p @radar

#adds ships to answer key, so that ocean can be printed without spoilers
@ships = 0

def add_ship
  v_or_h=rand(2)
  @random = rand(100)
  p @random
  if v_or_h == 1
    if @random + 5 <= 100
      pos = @random
      loop do
        @radar[pos] = true
        pos += 1
        break if pos == @random + 5
      end
      @ships += 1
    end
  else
    if @random + 50 <= 100
      loop do
        @radar[pos] = true
        pos += 10
        break if pos == @random +50
      end
      @ships += 1
    end
  end
end

until @ships == 1
  add_ship
end
# p @radar
#
# #checks to see if all battleship elements have been hit
# def damage_report
#   counts =@ocean.each_with_object(Hash.new(0)) { |status, counts| counts{status}}
#   if counts[['Hit!']] >= 5
#     puts "You sunk my battleship!"
#   end
#   #move higher
# end
# # allow player to call torpedos
# def torpedo
#   puts "Where do you want to attack?"
#   target = gets.chomp
#   p target
#   coord = target.split('')
#   p coord
#   sonar = @ocean.index(coord)
#   if @radar[sonar] == true
#     puts "Hit!"
#     @ocean[sonar].clear
#     @ocean[sonar] << "Hit!"
#   else
#     puts "Miss!"
#     @ocean[sonar].clear
#     @ocean[sonar] << "Miss"
#   end
#   damage_report
#   p @viewscreen
# end
#
# torpedo
#
#
# # pop array, replace with 'hit!'
# binding.pry
