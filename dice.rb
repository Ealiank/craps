# frozen_string_literal: true

# This class is for die
class Dice
  attr_reader :sides
  attr_accessor :number_of_dice, :color

  def initialize(sides = 6, number_of_dice = 1, color = 'white')
    @sides = sides
    @number_of_dice = number_of_dice
    @color = color
  end

  def roll
    total = 0
    number_of_dice.times do
      total += rand(1..sides)
    end
    total
  end
end
