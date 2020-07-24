class CreateHeroinePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroine_powers do |t|
      t.references :heroine
      t.references :power

      t.timestamps
    end
  end
end
