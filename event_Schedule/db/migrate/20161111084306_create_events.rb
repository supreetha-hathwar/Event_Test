class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_title
      t.string :venue
      t.datetime :date
      t.string :time
      t.string :invitees 
      t.string :description
      t.string :status
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
