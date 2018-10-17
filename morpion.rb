class Morpion

  tab = ["","","","","","","","",""]
  tabex = ["1","2","3","4","5","6","7","8","9"]
  win=0
  puts "Choisissez votre signe"
  mark = gets.chomp
  puts tabex[0..2].to_s
  puts tabex[3..5].to_s
  puts tabex[6..8].to_s

  while (mark!="X" && mark!="O")
    puts "Choisissez X ou O"
    mark = gets.chomp
  end

  while ((tab[0]=="" || tab[1]=="" || tab[2]=="" || tab[3]=="" || tab[4]=="" || tab[5]=="" || tab[6]=="" || tab[7]=="" || tab[8]=="") && win==0)
    
    puts "Quelle case voulez vous remplir ?"
    x = gets.chomp.to_i - 1

    while tab[x]!=""
      puts "Choisissez une autre case"
      x = gets.chomp.to_i - 1
    end

    tab[x]=mark
    tabex[x]=mark
      puts tabex[0..2].to_s
      puts tabex[3..5].to_s
      puts tabex[6..8].to_s

    if (mark=="X")
      mark="O"
    else
      mark="X"
    end

    if (tab[0]==tab[1] && tab[0]==tab[2] && tab[0]!="" || tab[3]==tab[4] && tab[3]==tab[5] && tab[3]!="" || tab[6]==tab[7] && tab[6]==tab[8] && tab[6]!="" || tab[0]==tab[3] && tab[0]==tab[6] && tab[0]!="" || tab[1]==tab[4] && tab[1]==tab[7] && tab[1]!="" || tab[2]==tab[5] && tab[2]==tab[8] && tab[2]!="" || tab[0]==tab[4] && tab[0]==tab[8] && tab[0]!="" || tab[2]==tab[4] && tab[2]==tab[6] && tab[2]!="")
      win=1
    end
  end

    if win==1

      if (mark=="X")
        puts "fin de partie, O a gagné"
      else
        puts "fin de partie, X a gagné"
      end
    else
      puts "fin de partie, match nul"
    end

    puts "Voulez vous rejouer ? (Entrez \"0\" si NON, Entrez \" 1 \" si OUI )"
      continue = gets.chomp.to_i

      if continue == 1
        puts "========================="
        puts "-Wait for one minutes...-"
        puts "========================="
        else
          puts "========================="
          puts "----------Bye------------"
          puts "========================="

      end
   
end


 

