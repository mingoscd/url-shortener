class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :url
      t.string :url_short
      t.timestamps null: false
    end
  end
end
