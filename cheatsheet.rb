


#while true
def main_menu
  puts "Main Menu:" 
  puts "0. Quit"
  puts "1. Command Line."
  puts "2. Vim"
  puts "Choose an option"
end

def command_line_menu
  puts "Command Line Cheat Sheet"
  puts "0. Go back to Main Menu"
  puts "1. Copy a file: cp 'source filename' 'destination filename'"
  puts "2. Move a file: mv 'source filename' 'destination directory'"
  puts "3. Make a directory: mkdir 'directory name'"
  puts "4. Change directory: cd 'directory name'"
  puts "5. List items in your directory: 'ls'"
  puts "6. Find out where you are: 'pwd' a.k.a print working directory"
  puts "to go back home: 'cd'"
end


main_menu

while true
  user_input = gets.strip
  case user_input 
    when '1' 
      command_line_menu
      command_line_input = gets.strip
      case command_line_input
        when '0'
          main_menu()
        when '1'
          puts `man cp`
          main_menu
        when '2'
          puts `man mv`
          main_menu
        when '3'
          puts `man mkdir`
          main_menu
        when '4'
          puts `man cd`
          main_menu
        when '5'
          puts `man ls`
          main_menu
        when '6'
          puts `man pwd`
          main_menu           
        else 
          main_menu()
        end  

    when '2'
      puts "Vim Cheat Sheet"
      puts "0. Go back to Main Menu"
      puts "move cursor left: 'h'"
      puts "move cursor right: 'l'"
      puts "move cursor up: 'k'"
      puts "move cursor down: 'j'"
      puts "insert mode: 'i'"
      puts "escape insert mode: 'esc'"
      puts "write and quit vim: ':wq'"
      puts "quit vim without writing: ':q'"

      user_input = gets.strip
      case user_input
        when '0'
          main_menu()
        else 
          main_menu()
        end 
       
    when '0'
        break 
    else 
      puts 'i do not understand what you mean'
  end

end
