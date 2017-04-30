class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fullname, :string
    add_column :users, :description, :string
    add_column :users, :perfer_wh, :string
    add_column :users, :working_time, :string
  end
end
