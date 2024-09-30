class AddPriceToWatches < ActiveRecord::Migration[7.1]
  def change
    add_column :watches, :price, :integer
  end
end
