class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :product_id
      t.string :user_id
      t.string :description
      t.string :rating
      t.string :createdat
      t.string :updatedat

      t.timestamps null: false
    end
  end
end
