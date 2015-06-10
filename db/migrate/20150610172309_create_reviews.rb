class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
