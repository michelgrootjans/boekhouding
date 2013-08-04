class CreateFacturen < ActiveRecord::Migration
  def change
    create_table :facturen do |t|
      t.string :ontvanger
      t.decimal :bedrag

      t.timestamps
    end
  end
end
