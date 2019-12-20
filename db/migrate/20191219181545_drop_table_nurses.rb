class DropTableNurses < ActiveRecord::Migration[6.0]
  def change
      drop_table :nurses
  end
end
