class AddRefIdToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :ref_id, :string
  end
end
