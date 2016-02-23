class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :name
      t.string :price
      t.string :img_url

      t.timestamps null: false
    end
  end
end
