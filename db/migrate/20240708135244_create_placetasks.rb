class CreatePlacetasks < ActiveRecord::Migration[7.1]
  def change
    create_table :placetasks do |t|
      t.string :name
      t.integer :place_id
      t.integer :user_id

      t.timestamps
    end
  end
end
