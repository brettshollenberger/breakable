class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, :null => false
      t.string :primary_contact, :null => false
      t.string :email, :null => false
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
