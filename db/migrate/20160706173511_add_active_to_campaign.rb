class AddActiveToCampaign < ActiveRecord::Migration[5.0]
  def change
    add_column :campaigns, :active, :boolean, default: false
  end
end
