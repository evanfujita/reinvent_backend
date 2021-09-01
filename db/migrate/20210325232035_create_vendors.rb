class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name, null: false
      t.string :representative, null: false
      t.string :phone
      t.string :email
      
      t.timestamps
    end
  end
end
