class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :url

      t.timestamps
    end
  end
end
