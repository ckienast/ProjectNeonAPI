class CreateSpeakers < ActiveRecord::Migration[5.1]
  def change
    create_table :speakers do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :twitter_handle

      t.timestamps
    end
  end
end
