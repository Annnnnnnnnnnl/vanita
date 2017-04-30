class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.references :package, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
