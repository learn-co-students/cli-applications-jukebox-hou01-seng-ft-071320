# Add your code here


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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_selection = gets.strip
  song_exists = false
  song_number = 1 
  songs.each do |song|
    if user_selection.to_i == song_number
      puts "Playing #{song}"
      song_exists = true
    elsif user_selection == song
      puts "Playing #{song}"
      song_exists = true
    end
    song_number += 1
  end
    if song_exists == false
      puts "Invalid input, please try again"
    end
end

def list(songs)
  counter = 1
  songs.each do |song|
    puts "#{counter}. #{song}"
    counter += 1
  end  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_in = ""
  while user_in != "exit" do
    puts "Please enter a command:"
    user_in = gets.strip
    if user_in == "help"
      help
    elsif user_in == "play"
      play(songs)
    elsif user_in == "list"
      list(songs)
    elsif user_in == "exit"
      exit_jukebox
    end
  end
end

#list(songs)
#play(songs)
#run(songs)