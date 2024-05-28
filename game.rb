    # game.rb
require_relative "player"
require_relative "question"

class Game
    def initialize
        @player1 = Player.new("Player 1")
        @player2 = Player.new("Player 2")
        @current_player = @player1
    end

    # the start_game method will contain the main game loop
    def start_game

    end
end
