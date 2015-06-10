class CreateReviewTable < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :title
      t.string :description
    end
  end
end
