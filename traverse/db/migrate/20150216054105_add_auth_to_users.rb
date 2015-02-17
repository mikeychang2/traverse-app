class AddAuthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fb_uid, :string
    add_column :users, :fb_token, :string
    add_column :users, :ig_uid, :string
    add_column :users, :ig_token, :string
  end
end
