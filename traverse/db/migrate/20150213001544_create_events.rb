class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :content
      t.integer :trip_id

      t.timestamps
    end
  end
end
