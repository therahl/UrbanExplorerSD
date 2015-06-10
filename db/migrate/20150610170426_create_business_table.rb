class CreateBusinessTable < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :address
      t.string :city
      t.string :state
      t.text :description
      t.string :name
    end
  end
end
