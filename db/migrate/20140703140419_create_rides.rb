class CreateRides < ActiveRecord::Migration

  def change
    create_table :rides do |t|
      t.integer :user_id
      t.intger :attraction_id
    end
  end
end
