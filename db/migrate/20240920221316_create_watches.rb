class CreateWatches < ActiveRecord::Migration[7.1]
  def change
    create_table :watches do |t|
      t.string :brand
      t.string :reference_number
      t.string :model
      t.string :movement
      t.string :year_of_production
      t.string :case_material
      t.string :case_diameter
      t.string :description

      t.timestamps
    end
  end
end
