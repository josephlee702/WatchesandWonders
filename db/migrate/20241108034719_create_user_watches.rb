class CreateUserWatches < ActiveRecord::Migration[7.1]
  def change
    create_table :user_watches do |t|
      t.references :user, null: false, foreign_key: true
      t.references :watch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
