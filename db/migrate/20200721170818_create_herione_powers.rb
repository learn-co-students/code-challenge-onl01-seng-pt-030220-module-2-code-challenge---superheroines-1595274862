class CreateHerionePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroine_powers do |t|
      t.references :power, foreign_key: true
      t.references :heroine, foreign_key: true
      t.timestamps
    end
  end
end
