class Player < ActiveRecord::Base
  has_many :bets
  def fullname
    "#{self.name} #{self.surename}"
  end

  def bet_between
    money = self.money
    minimum = Integer(money * 0.08)
    maximum = Integer(money * 0.15)

    "#{minimum} y #{maximum}"
  end
end
