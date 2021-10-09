# frozen_string_literal: true

class WithdrawError < RangeError
end

# this class is about money.
class Money
  attr_accessor :currency
  attr_reader :balance_in_cents

  def initialize(balance, currency = 'USD')
    @balance_in_cents = balance * 100
    @currency = currency
  end

  def balance
    balance_in_cents / 100
  end

  def deposit(amount)
    self.balance_in_cents = balance_in_cents + amount * 100
    balance
  end

  def withdraw(amount)
    if amount * 100 > balance_in_cents
      raise(WithdrawError,
            "You dont have enough money in your account. The max you can withdraw is #{currency} #{balance_in_cents}")
    end

    self.balance_in_cents = balance_in_cents - amount * 100
    balance
  end
end
