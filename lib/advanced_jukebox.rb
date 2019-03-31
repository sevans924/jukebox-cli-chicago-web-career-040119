#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => '/home/exuberant-scraper-7780/jukebox-cli/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/home/exuberant-scraper-7780/jukebox-cli/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/home/exuberant-scraper-7780/jukebox-cli/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/home/exuberant-scraper-7780/jukebox-cli/audio/Emerald-Park/04.mp3',
 "Wolf" => '/home/exuberant-scraper-7780/jukebox-cli/audio/Emerald-Park/05.mp3',
 "Blue" => '/home/exuberant-scraper-7780/jukebox-cli/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/home/exuberant-scraper-7780/jukebox-cli/audio/Emerald-Park/07.mp3'
 }

def help
  help = "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"

  puts help#this method should be the same as in jukebox.rb

end



def list(my_songs)
  my_songs.keys.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end#this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end


def play(my_songs)
  puts "Please enter a song name:"
 song = gets.chomp
 if my_songs.keys.include?(song)
   puts "Now playing #{song_to_play}"
    system 'open ' << my_songs[song_to_play]
  else
puts "Invalid input, please try again"
   end
 end

  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
    puts "Goodbye"#this method is the same as in jukebox.rb
end

def run(my_songs)
  help
      input = " "
      while input
        puts "Please enter a command:"
        response = gets.chomp
        case input
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
      else
        help
        end
      end
  #this method is the same as in jukebox.rb
end
