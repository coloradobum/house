class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.boolean :private

      t.timestamps
    end
  end
end
