class CreatePowerRackTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :power_rack_types do |t|
      t.integer :type_id
      t.string :name
      t.boolean :dimmed
      t.integer :rack_size
      t.boolean :mixed_voltage
      t.integer :ckt_per_mult

      t.timestamps
    end
  end
end
