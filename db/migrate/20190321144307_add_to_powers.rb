class AddToPowers < ActiveRecord::Migration[5.1]
  def change
    add_column :powers, :heroine_id, :integer
    #add foreign key to powers
  end
end


# I think I have to add foreign key to powers table - I was not able to test my code and run rake db:seed - I think this needs to be done in order for my code to be working
