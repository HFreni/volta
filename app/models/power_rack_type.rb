class PowerRackType < ApplicationRecord
    belongs_to :power_rack, class_name: "power_rack", foreign_key: "rack_id"
end
