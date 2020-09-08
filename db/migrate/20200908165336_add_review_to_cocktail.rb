class AddReviewToCocktail < ActiveRecord::Migration[6.0]
  def change
    add_reference :cocktails, :review, null: false, foreign_key: true
  end
end
