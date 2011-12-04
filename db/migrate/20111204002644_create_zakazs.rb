class CreateZakazs < ActiveRecord::Migration
  def change
    create_table :zakazs do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :kol
      t.text :comment

      t.timestamps
    end
  end
end
