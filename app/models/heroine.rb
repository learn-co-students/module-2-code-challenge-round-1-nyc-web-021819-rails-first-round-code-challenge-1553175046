class Heroine < ApplicationRecord
    belongs_to :power
    validates :super_name, uniqueness: true

    def power_name=(power)
        #write not in requirements but add if read works
    end

    def power_name
        self.power.name
    end
end
