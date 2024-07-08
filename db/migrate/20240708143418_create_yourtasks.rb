class CreateYourtasks < ActiveRecord::Migration[7.1]
  def change
    create_table :yourtasks do |t|
      t.integer :mytask_id
      t.integer :user_id

      t.timestamps
    end
  end
end
