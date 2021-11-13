# frozen_string_literal: true

require_relative 'dice'

# this is a class about craps
class Craps
  attr_accessor :game_state, :rolls

  def initialize
    @game_state = nil
    @rolls = []
  end

  def start_game
    rolls.clear
    dice = Dice.new(6, 2)
    rolls << dice.roll
    self.game_state = true if last_roll == 7 || last_roll == 11
  end

  def last_roll
    rolls.last.sum
  end
end
