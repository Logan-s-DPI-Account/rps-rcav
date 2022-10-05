class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  #rules 
def homepage
  render({ :template => "game_templates/rules.html.erb"})
end

#Rock Logic
  def play_rock
     index = rand(3)

moves = ["rock", "paper", "scissors"]

 @comp_move = moves.at(index)

 if @comp_move == "rock" 
       @outcome = "tied" 

 elsif @comp_move == "scissors"
  @outcome = "won"

 elsif @comp_move == "paper"
  @outcome = "lost"
end
    render({ :template => "game_templates/rock.html.erb"})
    
  end

  #Paper Logic
  def play_paper
    index = rand(3)

  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.at(index)

  if
    @comp_move == "paper"
    @outcome = "tied"

  elsif @comp_move == "rock"
    @outcome = "won"

  elsif @comp_move == "scissors"
    @outcome = "lost"
  
  end


    render({ :template => "game_templates/paper.html.erb"})

  end 

  #Scissors Logic
  def play_scissors
     index = rand(3) 

 moves = ["rock", "paper", "scissors"]

 @comp_move = moves.at(index)

 if @comp_move == "scissors" 
 @outcome = "tied" 

 elsif @comp_move == "rock" 
 @outcome = "lost" 

 elsif @comp_move == "paper" 
 @outcome = "won" 
end
    render({ :template => "game_templates/scissors.html.erb"})
  end

end
