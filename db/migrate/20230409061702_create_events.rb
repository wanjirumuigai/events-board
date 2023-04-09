class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_type
      t.integer :number_of_participants
      t.string :status
      t.datetime :event_date
      t.integer :venue_id
      t.integer :event_staff_id
    end
  end
end
