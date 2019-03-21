class Heroine < ApplicationRecord
  belongs_to :power
  validates :super_name, uniqueness: true

  def self.search(search)
    if search
      power = Power.find_by(name: search)
      heroine = Heroine.find_by(power_id: power.id)
      if heroine
        self.where(heroine_id: heroine.id)
      else
        Heroine.all
      end
    else
      Heroine.all
    end
  end

end
