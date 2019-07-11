def accueil
b = rand (1..6)
puts "Dé: #{b} !!"
return b
end

def game
    i=0
    a=0
    while i < 10
        b = accueil
        if b < 2 && i > 0
            i = i - 1 
            puts "Tu descends d'une marche te voilà sur la case #{i}"
        elsif b > 4
            i = i + 1 
            puts "Tu montes d'une marche te voilà sur la case #{i}"
        else  
            puts "Tu n'avances pas te voilà sur la case #{i}"
        end
        a = a + 1
    end
    puts "Félicitations mon gars tu as gagné !"
    return a
end

def average_finish_time
    y = []
    100.times do
        y << game
    end
    m = y.inject{|sum,el| sum + el}.to_f / y.size
    puts "Moyenne: #{m}"
end

average_finish_time



