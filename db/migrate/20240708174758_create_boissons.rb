class CreateBoissons < ActiveRecord::Migration[7.1]
  def change
    create_table :boissons do |t|
      t.integer :drink_id
      t.integer :user_id

      t.timestamps
    end
  end
end
