class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :first_name_reading
      t.string :last_name_readig
      t.string :nickname

      t.timestamps
    end
  end
end
