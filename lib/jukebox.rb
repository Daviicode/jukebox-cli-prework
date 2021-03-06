songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]








def help 
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end





def list (songs)
  songs.each_with_index do |song, num|
    puts "#{num+1}. #{song}"
  end
end




def play(songs)
  puts"Please enter a song name or number:"
  input=gets.chomp
  if input.to_i>0 and input.to_i<=songs.size
    puts "PLaying #{songs[input.to_i-1]}"
  elsif songs.include?(input)
    puts "PLaying #{input}"
  else
    puts "Invalid input, please try again"
  end
end




def exit_jukebox 
  puts "Goodbye"
end





def run (songs)
  help
  loop do 
    puts "Please enter a command:"
    input = gets.chomp
    case input 
        when "play"
        play(songs)
        when "help"
          help
        when "list"
          list(songs)
        when "exit"
          break
        end
      end
      exit_jukebox
    
end












