class CreatePowerRacks < ActiveRecord::Migration[6.1]
  def change
    create_table :power_racks do |t|
      t.primary_key :rack_id
      t.string :rack_call
      t.string :rack_name
      t.string :rack_location
      t.bigint :service_id
      t.bigint :rack_type_id
      t.integer :rack_addr_start
      t.integer :rack_univ
      t.integer :phase_rotation

      t.timestamps
    end
  end
end
