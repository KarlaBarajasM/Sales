class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :cuty
      t.string :state
      t.string :neighborhood
      t.string :street
      t.string :number
      t.references :client, foreign_key: true
      t.integer :user_is

      t.timestamps
    end
  end
end
