class AddBraceletToWatches < ActiveRecord::Migration[7.1]
  def change
    add_column :watches, :bracelet, :string
  end
end
