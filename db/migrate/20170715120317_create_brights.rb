class CreateBrights < ActiveRecord::Migration[5.1]
  def change
    create_table :brights do |t|
      t.string :name
      t.string :age
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
