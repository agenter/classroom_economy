class Account < ActiveRecord::Base
	belongs_to :user
	belongs_to :group

  attr_accessible :balance, :user_id, :group_id
end
