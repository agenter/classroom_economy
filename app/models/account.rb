class Account < ActiveRecord::Base
  attr_accessible :amount, :group, :user
end
