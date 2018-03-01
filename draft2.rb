module Draft2
    module_function
    LEVEL_1 = 1
    LEVEL_2 = 2
    LEVEL_3 = 3

    def welcome
    puts "It's time to get down!"
    end

    def prompt
        puts "What level of difficulty? enter a number
        (options: 1. Basic -- 2. Average -- 3. Professional)"
        #choose a level
        #possible change of level option names
        #selection by number? or name
        gets.chomp.to_i
    end

    def start
        selection = prompt
        if selection == LEVEL_1
            
end

Draft2.welcome
Draft2.prompt