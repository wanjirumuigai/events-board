class EventStaff < ActiveRecord::Base
  has_many :events
  has_many :staffs
end
