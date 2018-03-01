require_relative 'library'
require_relative 'adddance'
require 'colorize'
require 'columnize'

module Draft4
    module_function
    OPTION_DANCE = 1
    OPTION_LIST = 2
    OPTION_ADD = 3
    OPTION_EXIT = 4
    
    def clear
        system "clear"
    end

    def welcome
    puts "It's time to get down!"
    end

    def prompt
        puts "What would you like to do?
        (options: 1. Dance -- 2. List Dances -- 3. Add a dance -- 4. Exit)"
        
        gets.chomp.to_i
    end
clear
    def start
        
        option = prompt
        if option == OPTION_DANCE
           
            puts "Do the #{Library.library.sample}"
            Draft4.start

        elsif option == OPTION_LIST
            puts Library.library.columnize :displaywidth => 50, :colsep => ' | '   
            Draft4.start
        
        elsif option == OPTION_ADD
                AddDance.add_dance

        elsif 
            option == OPTION_EXIT
            puts "Peace out!"
        else
            puts "invalid option number".colorize(:red)
            Draft4.start
        end
    end
            
end

Draft4.welcome
Draft4.start