class Transaction < ActiveRecord::Base
  attr_accessible :amount, :from_account, :to_account
end
