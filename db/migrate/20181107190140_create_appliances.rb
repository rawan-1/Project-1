class CreateAppliances < ActiveRecord::Migration[5.2]
  def change
    create_table :appliances do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :availability
      t.integer :customer_id
      t.integer :provider_id

      t.timestamps
    end
  end
end
