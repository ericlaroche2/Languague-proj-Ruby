class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :REF_DATE
      t.string :GEO
      t.string :DGUID
      t.string :Foodcategories
      t.string :Commodity
      t.string :UOM
      t.string :UOM_ID
      t.string :SCALAR_FACTOR
      t.string :SCALAR_ID
      t.string :VECTOR
      t.string :COORDINATE
      t.string :VALUE

      t.timestamps
    end
  end
end
