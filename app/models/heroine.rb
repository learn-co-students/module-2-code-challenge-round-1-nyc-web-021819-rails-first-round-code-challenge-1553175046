class Heroine < ApplicationRecord

  belongs_to :power
  validates :super_name, uniqueness: true

  # def self.search(search)
  #   if search
  #     power = Power.find_by(name: search)
  #     if power
  #       self.where(power_id: power)
  #     else
  #       Heroine.all
  #     end
  #     Heroine.all
  #   end
  # end

end


# rails generate migration add_email_to_users email:string
