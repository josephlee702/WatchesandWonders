class RemoveBrandFromWatches < ActiveRecord::Migration[7.1]
  def change
    remove_column :watches, :brand, :string
  end
end
