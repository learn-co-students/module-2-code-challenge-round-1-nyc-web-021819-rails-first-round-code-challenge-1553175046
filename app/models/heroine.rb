class Heroine < ApplicationRecord
  belongs_to :power
  validate :has_only_one_power
  validates :super_name, uniqueness: true


    def has_only_one_power
      if (self.powers.length != 0)
        errors[:base] << "Heroine can only have one power"
      end
    end

end
