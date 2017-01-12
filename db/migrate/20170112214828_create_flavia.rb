class CreateFlavia < ActiveRecord::Migration[5.0]
  def change
    create_table :flavia do |t|
      t.string :flaviaUno
      t.string :flaviaDue

      t.timestamps
    end
  end
end
