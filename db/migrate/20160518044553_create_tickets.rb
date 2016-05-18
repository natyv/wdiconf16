class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :ref_id

      t.timestamps null: false
    end
  end
end
