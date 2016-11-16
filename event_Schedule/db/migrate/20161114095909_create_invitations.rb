class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :invitee_id
      t.integer :inviter_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
