class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :name
      t.string :description
      t.string :status

      t.timestamps null: false
    end
  end
end
