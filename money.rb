# frozen_string_literal: true

class WithdrawError < RangeError
end

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
    if amount > balance
      raise(WithdrawError,
            "You dont have enough money in your bank account. The maximum you can withdraw is #{currency} #{balance}")
    end

    self.balance = balance - amount
  end
end
