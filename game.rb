    # game.rb
require_relative 'player'
require_relative 'question'

class Game
    def initialize
      @player1 = Player.new("Player 1")
      @player2 = Player.new("Player 2")
      @current_player = @player1
      puts "Initialized game with two players."
      start_game
    end

    # the start_game method will contain the main game loop
    def start_game
        while @player1.alive? && @player2.alive?
            ask_question
            display_scores
            switch_player
            puts "----- NEW TURN -----"
        end
        announce_winner
    end

    # the ask_question method prompts the current player with a math question and checks their answer.
    def ask_question
        question = Question.new
        puts "#{@current_player.name}, what is #{question.number1} plus #{question.number2}?"
        answer = gets.chomp.to_i
        if question.correct?(answer)
            puts "Amazing! You are correct."
        else
            puts "Seriously? No!"
            @current_player.lose_life
        end
    end

    # the switch_player method changes the players
    def switch_player
        @current_player = @current_player == @player1 ? @player2 : @player1
    end

    # the display_scores method shows the current score of both players
    def display_scores
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end

    def announce_winner
        winner = @player1.alive? ? @player1 : @player2
        puts "#{winner.name} wins with a score of #{winner.lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
    end
end
