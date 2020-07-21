class CreateTableHeroinePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :table_heroine_powers do |t|
      t.integer :heroine_id
      t.integer :power_id
    end
  end
end
