class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :brand_id
      t.string :name
      t.string :network
      t.text :features
      t.string :weight
      t.string :size
      t.string :akkum
      t.boolean :limited
      t.boolean :prototype
      t.text :notes
      t.string :photo_url
      t.string :release

      t.timestamps null: false
    end
  end
end
