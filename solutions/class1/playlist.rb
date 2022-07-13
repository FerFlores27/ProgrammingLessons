song = Struct.new(:name, :artist)
puts "Hello! What is your name?"
#puts escribe en la pantalla
username = gets.chomp.to_s
puts "Welcome #{username}"