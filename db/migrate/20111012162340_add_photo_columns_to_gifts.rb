class AddPhotoColumnsToGifts < ActiveRecord::Migration
  def change
    add_column :gifts, :photo_file_name,    :string
    add_column :gifts, :photo_content_type, :string
    add_column :gifts, :photo_file_size,    :integer
    add_column :gifts, :photo_updated_at,   :datetime

  end
end
