require("rspec")
require("rocky6")
require("pry")

describe("winner_calc") do
  it("Compares player input and computer input") do
    word1 = RPS.new()
    expect(word1.winner_calc?("rock", "scissors")).to(eq(true))
  end

  it("Compares player input and computer input and checks if it is equal") do
    word1 = RPS.new()
    expect(word1.winner_calc?("rock", "rock")).to(eq("tie"))
  end

  it("Compares player input and computer input and checks if player lost") do
    word1 = RPS.new()
    expect(word1.winner_calc?("rock", "paper")).to(eq(false))
  end

  it("Compares player input and computer input and checks if player lost") do
    word1 = RPS.new()
    expect(word1.winner_calc?("paper", "paper")).to(eq("tie"))
  end

  it("Takes input from user to determine outcome") do
    word1 = RPS.new()
    player_1 = gets.chomp
    player_2 = gets.chomp
    expect(word1.winner_calc?(player_1, player_2)).to(eq(true))
  end


end
