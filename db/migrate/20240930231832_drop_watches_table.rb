class DropWatchesTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :watches
  end

  def down
    create_table :watches do |t|
      t.string "reference_number"
      t.string "model"
      t.integer "price"         # Re-add price
      t.string "movement"
      t.string "year_of_production"
      t.string "case_material"
      t.string "case_diameter"
      t.string "description"
      t.string "bracelet"       # Re-add bracelet
      t.integer "brand_id"      # Re-add brand_id
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
