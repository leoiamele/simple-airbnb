class AddPictureUrlToFlats < ActiveRecord::Migration
  def change
    add_column :flats, :picture_url, :string
  end
end
