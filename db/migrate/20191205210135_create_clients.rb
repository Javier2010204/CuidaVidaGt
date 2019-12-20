class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :phone
      t.string :sex
      t.string :description
      t.string :day
      t.integer :age
      t.string :work_hour

      t.timestamps
    end
  end
end
