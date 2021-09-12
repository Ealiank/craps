# frozen_string_literal: true

# This class is for die
class Dice
  attr_reader :sides
  attr_accessor :number_of_dice, :color, :history

  def initialize(sides = 6, number_of_dice = 1, color = 'white')
    @sides = sides
    @number_of_dice = number_of_dice
    @color = color
    @history = []
  end

  def roll
    rolls = []
    number_of_dice.times do
      rolls << rand(1..sides)
    end
    history << rolls
    rolls
  end
end
