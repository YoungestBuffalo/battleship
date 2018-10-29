#BATTLESHIP IN RUBY
grid = []
water = 0
ship = 1
g_water = 2
g_ship = 4

#creates grid
grid = Array.new(10){ Array.new(10){0}}

#creates ship placements
grid[0][2] = ship
grid[2][4] = ship
grid[6][8] = ship
grid[1][2] = ship
puts "BATTLESHIP LOADING"
        sleep 1
        system "cls"
puts "L O A D I N G "
        sleep 0.5
        system "cls"
        puts "L O A D I N G . "
        sleep 0.5
        system "cls"
        puts "L O A D I N G . . "
        sleep 0.5
        system "cls"
        puts "L O A D I N G . . . "
        sleep 0.5
        system "cls"
puts "You are playing battleship! Guess where my ships are..."

#total ships left unguessed
secretships = 4
while(secretships > 0)
    puts 
    puts "Here's the ocean...."
    #unguessed      ?
    #water          ~
    #exploded ships #

    #prints out grid
(0...10).each do |i|
    (0...10).each do |j|
        if grid[i][j] == water || grid[i][j] == ship
            print "? "
        elsif grid[i][j] == g_water
            print "~ "
        elsif grid[i][j] == g_ship
            print "# "
        end
    end
    puts   
end

puts "Enter a row number (0-9)"
user_row = gets.to_i
puts "Enter a column number (0-9)"
user_col = gets.to_i
puts "You entered column #{user_col} and row #{user_row}"

guess = grid[user_row][user_col]
    if guess == ship
        grid[user_row][user_col] = g_ship
        secretships = secretships - 1;
        puts "You sunk my ship!"
        sleep 2
        system "cls"
    elsif guess == g_ship || guess == g_water
        puts "You already know that spot!!!"
        sleep 1
        system "cls"
    else
        grid[user_row][user_col] = g_water
        puts "You missed!"
        sleep 3
        system "cls"
    end
    puts "SINK THOSE SHIPS!"
end

puts
puts "Here's the ocean...." #this is the game over version of the ocean

(0...10).each do |i|
(0...10).each do |j|
    if grid[i][j] == water || grid[i][j] == ship
        print "? "
    elsif grid[i][j] == g_water
        print "~ "
    elsif grid[i][j] == g_ship
        print "# "
    end
end
puts
end
puts "G A M E  O V E R" 