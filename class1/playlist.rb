Song = Struct.new(:name, :artist)
@playlist = [
    Song.new('The Valleys','The Mountains'), #0
    Song.new('Denver Ruleteamos','Javier Rosas'), #1
    Song.new('No Dices Más','Moenia'), #2 
    Song.new('Running','Gaho') #3
]

def printPlaylist(playlist)
    playlist.each_with_index do |song,idx|
        puts "#{idx} - #{song.name} by #{song.artist}"
    end
end

def getSong(playlist,user_selection)
    return playlist[user_selection]
end

def menu(name)
    playlist = @playlist
    puts "Hello #{name}, which song should I play?"
    printPlaylist(playlist)
    user_selection = gets.chomp.to_i
    song = getSong(playlist,user_selection)
    puts "Playing #{song.name} by #{song.artist}"
end

puts "Welcome to Spotify, what is your name?"
user_name = gets.chomp.to_s
menu(user_name)

