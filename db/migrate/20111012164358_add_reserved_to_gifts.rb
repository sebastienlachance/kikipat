class AddReservedToGifts < ActiveRecord::Migration
  def change
    add_column :gifts, :reserved, :boolean
    add_column :gifts, :reserved_by, :string
  end
end
