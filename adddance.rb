module AddDance
    module_function
        def add_dance
            puts "What would you like to add?"
            new_dance = gets.chomp
            if Library.library.include? new_dance
                puts "#{new_dance} already exists in the Dance list!"
                AddDance.add_dance
            elsif 
                new_list = Library.library << new_dance
                puts "this is the new complete list of moves #{new_list.columnize :displaywidth => 50, :colsep => ' | '}"
                Draft4.start
            else
                puts "how'd this happen?".colorize(:red)
                AddDance.add_dance
            end
        end
    end
