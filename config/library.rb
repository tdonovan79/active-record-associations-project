require_relative 'environment.rb'

class LibraryPos
    
    #run program
    def run
        User.new(name: "Tom")
        login
    end

#=========================LOGIN=======================================

    #get user's name and check to make sure it is in database. if it is,
    #set it to username variable
    def login
        prompt = TTY::Prompt.new
        user = nil
        unless User.all.map(&:name).include?(user)
            username = prompt.ask("What is your name?")
            if username == "kill" 
                exit
            elsif User.all.map(&:name).include?(username)
                puts "This is not in the system. Please try again."
            else
                user = User.find{|user| user.name = username}
            end
            puts "#{user.name}"
        end
        main_menu(user)
    end

#========================MAIN MENU=======================================

#ask user which actions they'd like to take
    def main_menu(user)
        prompt = TTY::Prompt.new
        menu = ["Checkout Book", "List Checkouts", "List Books", 
            "Return Book", "Logout"]
        choice = nil
        unless choice == "Logout"
            choice = prompt.select("Select an action:", menu)
            case choice
            when "Checkout Book"
                checkout_book
            when "List Checkouts"
                list_checkouts
            when "List Books"
                list_books
            when "Return Book"
                return_book
            end
        end
    end
end

