class Expense < ActiveRecord::Base

  belongs_to :user
  belongs_to :outlay_type

end
