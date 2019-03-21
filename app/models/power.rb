class Power < ApplicationRecord
  has_many :heroines, dependent: :destroy
  
  # def heroines_with_power
  #   self.heroines.each do |heroine|
  #     heorine.super_name
  #   end
  # end


end
