class CreateParticipantMeeting < ActiveRecord::Migration
  def up
  	create_table :meetings_participants, :id =>  false do |t|
  	  t.integer :participant_id, :null => false
  	  t.integer :meeting_id, :null => false
  	end

  	add_index :meetings_participants, [:participant_id, :meeting_id], :unique => true
  end

  def down
  	remove_index :meetings_participants, [:participant_id, :meeting_id]
  	drop_table :meetings_participants
  end
end
