class OutlayType < ActiveRecord::Base

  has_many :outlays
  has_many :expenses
  has_many :users, :through => :outlays

end
