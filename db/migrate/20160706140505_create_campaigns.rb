class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :description
      t.integer :amount_needed
      t.string :medical_partner

      t.timestamps
    end
  end
end
