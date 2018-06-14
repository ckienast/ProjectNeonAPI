class CreateTalks < ActiveRecord::Migration[5.1]
  def change
    create_table :talks do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :description, null: false
      t.string :topic, null: false

      t.belongs_to :speaker

      t.timestamps
    end
  end
end
