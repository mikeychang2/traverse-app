class CreateEventTags < ActiveRecord::Migration
  def change
    create_table :event_tags do |t|
      t.belongs_to :event, index: true
      t.belongs_to :tag, index: true
      t.integer :trip_id

      t.timestamps
    end
  end
end
