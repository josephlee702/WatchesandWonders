class AddBrandIdToWatches < ActiveRecord::Migration[7.1]
  def change
    add_column :watches, :brand_id, :integer
  end
end
