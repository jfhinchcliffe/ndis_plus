class CreateMasterservices < ActiveRecord::Migration
  def change
    create_table :masterservices do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
