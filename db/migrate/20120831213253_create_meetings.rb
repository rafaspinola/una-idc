class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.datetime :start
      t.datetime :end
      t.references :room

      t.timestamps
    end
    add_index :meetings, :room_id
  end
end
