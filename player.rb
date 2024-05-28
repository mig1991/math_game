# player.rb

class Player
    attr_reader :name, :lives
  
    # when a new player obj is created,
    # it sets up the player's name and initializes their lives to 3.
    def initialize(name)
      @name = name
      @lives = 3
    end
  
    # lose_life method reduces a players lives by 1
    def lose_life
      @lives -= 1
    end
  
    # the alive? method checks if the player still has lives remaining.
    # returns true if the player has more than 0 lives, and false otherwise.
    def alive?
      @lives > 0
    end
  end