module AddDance
    module_function
        def add_dance
            puts "What would you like to add?"
            
            new_list = Library.library << gets.chomp
            puts new_list
        end
    end
