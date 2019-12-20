class CreateNurses < ActiveRecord::Migration[6.0]
  def change
    create_table :nurses do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.integer :phone_1
      t.integer :phone_2
      t.text :experience
      t.integer :availability
      t.string :code
      t.string :pass

      t.timestamps
    end
  end
end
