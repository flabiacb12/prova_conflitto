class CreateMarios < ActiveRecord::Migration[5.0]
  def change
    create_table :marios do |t|
      t.string :marioUno
      t.string :marioDue

      t.timestamps
    end
  end
end
