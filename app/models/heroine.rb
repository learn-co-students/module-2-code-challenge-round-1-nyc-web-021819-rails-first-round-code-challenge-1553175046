class Heroine < ApplicationRecord
  belongs_to :power
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :super_name, presence: true
  validates :super_name, uniqueness: true

  # def super_power=(name)
  #     self.powers = Power.find_or_create_by(name: name)
  # end
  #
  # def super_power
  #   self.powers ? self.powers.name : nil
  # end




end
