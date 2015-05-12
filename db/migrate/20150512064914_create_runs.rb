class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.float :distance
      t.date :date
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :runs, [:user_id, :created_at]
  end
end
