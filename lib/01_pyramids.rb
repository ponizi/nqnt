def half_pyramid    
    hash = "#"
    blank = " "

    puts "Entrez un nombre entre 1 et 25 "
    print ">"
    nb = gets.chomp.to_i
    empty_case = nb

    if ((nb > 0) && (nb <= 25))
        nb.times do |i|
            puts "#{blank * (nb - 1) + hash * (i + 1)}"
            nb -= 1
        end
    else
        puts "Le nombre n'est pas compris entre 1 et 25"
    end
end

def full_pyramid
    hash = "#"
    blank = " "

    puts "Entrez un nombre entre 1 et 25 "
    print ">"
    nb = gets.chomp.to_i
    empty_case = nb

    if ((nb > 0) && (nb <= 25))
        nb.times do |i|
            puts "#{blank * (nb - 1) + hash * (i*2 + 1) + blank*(nb-1)}"
            nb -= 1
        end
    else
        puts "Le nombre n'est pas compris entre 1 et 25"
    end
end

def wtf_pyramid
    puts "Entrez un nombre impair"
    print "> "
    nb = gets.chomp.to_i
    empty_case = nb
    hash = "#"
    blank = " "
    a=((nb-1)/2)+1
    b=((nb+a)/2)
    if nb%2!=0
        a.times do |i|
            puts"#{blank*(a-1)+hash*(i*2+1)}"
            a-=1
        end
        a=((nb-1)/2)+1
        b=((nb+a)/2)
        i=0
        
        b.times do |i|
            puts"#{blank*(i+1)+hash*((a*2)-3)}"
            a-=1
        end
        puts "BUG"
    else
        puts "Le nombre n'est pas impair"
    end
end

wtf_pyramid