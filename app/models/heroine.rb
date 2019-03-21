class Heroine < ApplicationRecord
  belongs_to :power
  validate :heroine_already_exists

  def heroine_already_exists
    unless heroine.super_name.uniq
      errors.add_to_base "Heroine already exists"
    end
  end
end
