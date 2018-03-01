module Draft1
    module_function
    PARTY_COMMAND = "party"
    LIBRARY_COMMAND = "library"
    PICK_COMMAND = "pick" 
    RANDOM_COMMAND = "random"

    def welcome
        puts "Lets Dance!"
    end

    def prompt
        puts "Pick an option! 
        (options: 1. party -- 2. library)"
        gets.chomp
    end

    def style
        puts "What kind of style? 
            (options: 1. pick -- 2. random)"
            # choose option
        gets.chomp
        
    end


    def start
        command = prompt
        
        if command == PARTY_COMMAND
            puts "Time to PARTY~~!"
            puts ""
         
        
            
        elsif command == LIBRARY_COMMAND
            puts "hit the books, know your moves!"


        else
            puts "unknown input"
        end 
    end

end
end
DanceMoveApp.welcome
DanceMoveApp.start

