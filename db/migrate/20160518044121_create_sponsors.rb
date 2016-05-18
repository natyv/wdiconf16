class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :company_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :image_url
      t.integer :amount

      t.timestamps null: false
    end
  end
end
