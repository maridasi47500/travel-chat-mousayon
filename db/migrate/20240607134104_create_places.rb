class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.string :city
      t.string :country
      t.string :name
      t.string :photo
      t.integer :user_id

      t.timestamps
    end
  end
end
