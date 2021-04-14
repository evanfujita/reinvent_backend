class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :representative
      t.string :phone
      t.string :email
      
      t.timestamps
    end
  end
end
