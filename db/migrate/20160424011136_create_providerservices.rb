class CreateProviderservices < ActiveRecord::Migration
  def change
    create_table :providerservices do |t|
      t.string :name
      t.string :description
      t.references :providerprofile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
