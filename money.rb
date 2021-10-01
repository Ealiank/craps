# frozen_string_literal: true

# this class is about money.
class Money
  attr_accessor :balance, :currency

  def initialize(balance, currency = 'USD')
    @balance = balance
    @currency = currency
  end

  def deposit(amount)
    self.balance = balance + amount
  end

  def withdraw(amount)
    self.balance = balance - amount
  end
end
