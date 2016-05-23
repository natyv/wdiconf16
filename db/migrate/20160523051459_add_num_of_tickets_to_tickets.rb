class AddNumOfTicketsToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :num_of_tickets, :integer
  end
end
