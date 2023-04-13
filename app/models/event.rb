class Event < ActiveRecord::Base
  belongs_to :venue
  belongs_to :event_staff
  has_many :staffs, through: :event_staff

  def assigned_staff
    a_staff = []
    Staff
      .all
      .map do |staff|
        if (
             self.event_staff.supervisor_id == staff.id ||
               self.event_staff.it_id == staff.id ||
               self.event_staff.housekeeper_id == staff.id ||
               self.event_staff.catering_id == staff.id
           )
          a_staff << { name: staff.name, role: staff.role }
        end
      end
      .compact
    a_staff
  end
end
