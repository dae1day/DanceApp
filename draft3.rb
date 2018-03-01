require_relative 'library'
require_relative 'library_option'
require_relative 'adddance'
require 'colorize'
module Draft3
    module_function
    OPTION_DANCE = 1
    OPTION_LIBRARY = 2
    OPTION_EXIT = 3
    OPTION_LIST = 4
    OPTION_ADD = 5
    OPTION_MENU = 6

    def welcome
    puts "It's time to get down!"
    end

    def prompt
        puts "What would you like to do?
        (options: 1. Dance -- 2. Library -- 3. Exit)"
        #choose an option
        #selection by number? or name
        #possible end option
        gets.chomp.to_i
    end

    def start
        option = prompt
        if option == OPTION_DANCE
            #spits out random dance move or dance
            puts "Do the #{Library.library.sample}"
            Draft3.start

            #after spitting out random item, 
            #option to spit out another just by typing enter
            #or returning to main menu by typing exit

        elsif option == OPTION_LIBRARY
            #goes to a new option screen choice of 
            #1. list library 2. add to library 3. return main menu
            option = LibraryOption.library_option
            if option == OPTION_LIST
                puts Library.library
                LibraryOption.library_option
                Draft3.start
        
            elsif option == OPTION_ADD
                AddDance.add_dance

            elsif option == OPTION_MENU
                Draft3.start
            # add to the library a new dance
            #Draft3.start
            else
                puts "invalid option number"
                LibraryOption.library_option
            end

        elsif 
            option == OPTION_EXIT
            puts "Peace out!"
        else
            puts "invalid option number"
            #loop back to main menu 
            Draft3.start
        end
    end
            
end

Draft3.welcome
Draft3.start