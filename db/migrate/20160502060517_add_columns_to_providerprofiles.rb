class AddColumnsToProviderprofiles < ActiveRecord::Migration
  def change
    add_column :providerprofiles, :hours, :string
    add_column :providerprofiles, :capacity, :integer
    add_column :providerprofiles, :clients, :integer
  end
end
