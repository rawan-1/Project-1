class CreateAppliances < ActiveRecord::Migration[5.2]
  def change
    create_table :appliances do |t|
      t.string :name
      t.string :image
      t.string :description
      t.boolean :availability
      t.integer :user_id

      t.timestamps
    end
  end
end
