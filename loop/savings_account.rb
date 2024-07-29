module SavingsAccount
  def self.interest_rate(balance)
     rate = 0

    while balance < 0
      rate = 3.213
      break
    end

    while balance >= 0
      if balance < 1000
        rate = 0.5
      elsif balance < 5000
        rate = 1.621
      else
        rate = 2.475
      end
      break
    end

    rate
  end

  def self.annual_balance_update(balance)
    rate = interest_rate(balance)
    balance + (balance * (rate / 100.0))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      years += 1
      current_balance = annual_balance_update(current_balance)
    end
    years
  end
end