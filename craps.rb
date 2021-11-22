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
    case last_roll
    when 7, 11 then self.game_state = true
    when 2, 12 then self.game_state = false
    else
      point = last_roll
      loop do
        rolls << dice.roll
        if last_roll == point
          self.game_state = true
          break
        elsif last_roll == 7
          self.game_state = false
          break
        end
      end
    end
  end

  def last_roll
    rolls.last.sum
  end
end
