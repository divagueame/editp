class CreateChikis < ActiveRecord::Migration[7.0]
  def change
    create_table :chikis do |t|
      t.string :name

      t.timestamps
    end
  end
end
