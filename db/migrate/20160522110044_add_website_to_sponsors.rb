class AddWebsiteToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :website, :string
  end
end
