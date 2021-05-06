

def janken

  puts "じゃんけん..."
  puts "0（グー）　1（チョキ）　2（パー）　3（戦わない）"

  number = gets.to_i
  hand = rand(3)
  hands = ["グー", "チョキ", "パー"]

  case number
    when 0
      puts "poi!"
      puts "--------------------"
      puts "あなた；#{hands[number]}"
      puts "相手　；#{hands[hand]}"
      puts "--------------------"
      
    when 1
      puts "poi!"
      puts "--------------------"
      puts "あなた；#{hands[number]}"
      puts "相手　；#{hands[hand]}"
      puts "--------------------"
      
    when 2
      puts "poi!"
      puts "--------------------"
      puts "あなた；#{hands[number]}"
      puts "相手　；#{hands[hand]}"
      puts "--------------------"
      
    when 3
      puts "戦わない"
      puts "--------------------"
      exit
    
  end

  if number == hand
    puts "あいこでしょ!"
    return true
      
  end      
 
  if (number == 0 && hand == 1) || (number == 1 && hand == 2) || (number == 2 && hand == 0) 
      direction = rand(4) 
      directions = [ "↑",  "↓",  "⇦",  "→" ]
      puts "あっちむいて"
      puts "0(↑), 1(↓), 2(←), 3(→)"
      choose = gets.to_i
      puts "--------------------"
      puts "あなた；#{directions[choose]}"
      puts "相手　；#{directions[direction]}"
      puts "--------------------"
      
      
        if (choose == direction )
          puts "あなたの勝利です!"
        
        else (choose != direction)
          return true
        end
        
        next_game = true
      
  elsif  (number == 0 && hand == 2) || (number == 1 && hand == 0) || (number == 2 && hand == 1) 
      direction = rand(4) 
      directions = [ "↑",  "↓",  "⇦",  "→" ]
      puts "あっちむいて"
      puts "0(↑), 1(↓), 2(←), 3(→)"
      choose = gets.to_i
      puts "--------------------"
      puts "あなた；#{directions[choose]}"
      puts "相手　；#{directions[direction]}"
      puts "--------------------"
      
      
        if (choose == direction )
          puts "NPCの勝利です"
        
        else (choose != direction)
          return true
      
        end
        
         next_game = true 


        
  end
 
 
end

  next_game = true 

  while next_game do 
    next_game = janken 
  end

