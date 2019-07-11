def signup
    puts "Choisissez un mot de passe"
    print ">"
    password=gets.chomp
end

def login
    puts "Entrez votre mot de passe"
    print ">"
    log=gets.chomp
    puts log
    return log
end       
        
def welcome_screen
    puts "Bienvenue sur la page secrète de la NSA"
end

def perform
    password = signup
    log = login

    until log == password
        puts "Le mot de passe saisi ne correspond pas, veuillez le saisir à nouveau"
        print ">"
        log=gets.chomp
        puts log
    end
    welcome_screen
end

perform