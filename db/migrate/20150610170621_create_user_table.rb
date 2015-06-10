class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :given_name
      t.string :family_name
      t.string :city
      t.string :state
      t.string :status
      t.string :email
    end
  end
end
