class PowerRack < ApplicationRecord
    has_many :power_rack_types, class_name: "power_rack_type", foreign_key: "type_id"
end
