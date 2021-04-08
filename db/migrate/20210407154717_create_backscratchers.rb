class CreateBackscratchers < ActiveRecord::Migration[5.2]
  def change
    create_table :backscratchers do |t|
      t.text :name
      t.text :description
      t.text :price
      t.text :sizes, array:true, default:[]

      t.timestamps
    end
  end
end
