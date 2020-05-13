class RemoveReviewFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :review
  end
end
