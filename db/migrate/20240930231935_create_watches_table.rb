class CreateWatchesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :watches do |t|
      t.string "reference_number"
      t.string "model"
      t.integer "brand_id"         
      t.integer "price"           
      t.string "movement"
      t.string "year_of_production"
      t.string "case_material"
      t.string "case_diameter"
      t.string "description"
      t.string "bracelet"          
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
