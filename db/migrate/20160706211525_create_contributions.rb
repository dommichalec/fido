class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :note
      t.references :campaign, foreign_key: true

      t.timestamps
    end
  end
end