class Venue < ActiveRecord::Base
  has_many :events
  has_many :event_staffs, through: :events
  has_many :staffs, through: :event_staffs
end
