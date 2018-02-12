class RPS
  def winner_calc?(player_input, computer_input)

    outcomes = {"rock_rock" => "tie", "paper_paper" => "tie", "scissors_scissors" => "tie", "rock_scissors" => true, "rock_paper" => false, "scissors_rock" => false, "scissors_paper" => true, "paper_rock" => true, "paper_scissors" => false}

    game_result = ""

    input = player_input + "_" + computer_input
    game_result = outcomes.fetch(input)

    if game_result == true
      return "Player one wins!"
      # puts "Player one wins!"
      # true
    elsif game_result == false
      return "Player two wins!"
      # puts "Player two wins!"
      # false
    elsif game_result == "tie"
      return "It's a tie!"
      # puts "It's a tie!"
      # "tie"
    end
  end
  #
  # def user_winner_calc?(player_input, computer_input)
  #
  #   outcomes = {"rock_rock" => "tie", "paper_paper" => "tie", "scissors_scissors" => "tie", "rock_scissors" => true, "rock_paper" => false, "scissors_rock" => false, "scissors_paper" => true, "paper_rock" => true, "paper_scissors" => false}
  #
  #   game_result = ""
  #
  #   puts "Enter either 'rock', 'paper', or scissors for player one"
  #   player_input = gets.chomp
  #
  #   puts "Enter either 'rock', 'paper', or scissors for player two"
  #   computer_input = gets.chomp
  #
  #   input = player_input + "_" + computer_input
  #   game_result = outcomes.fetch(input)
  #
  #   if game_result == true
  #     puts "Player one wins!"
  #     true
  #   elsif game_result == false
  #     puts "Player two wins!"
  #     false
  #   elsif game_result == "tie"
  #     puts "It's a tie!"
  #     "tie"
  #   end
  # end
end
