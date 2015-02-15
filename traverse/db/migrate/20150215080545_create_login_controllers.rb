class CreateLoginControllers < ActiveRecord::Migration
  def change
    create_table :login_controllers do |t|

      t.timestamps null: false
    end
  end
end
