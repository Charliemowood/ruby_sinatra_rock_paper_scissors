class Game

   def initialize(arg1, arg2)
     @arg1 = arg1
     @arg2 = arg2
   end

   def win
     if (@arg1 == 'paper' && @arg2 =='rock') || (@arg1 == 'rock' && @arg2 =='paper')
       return "Paper wins!"
     elsif (@arg1 == 'paper' && @arg2 =='scissors') || (@arg1 == 'scissors' && @arg2 =='paper')
       return "Scissors wins!"
     elsif (@arg1 == 'paper' && @arg2 =='paper') || (@arg1 == 'rock' && @arg2 =='rock') || (@arg1 == 'scissors' && @arg2 =='scissors')
       return "That's a draw play again!"
     else
       return "Rock wins!"
     end
   end
end
