class AddPicToDirector < ActiveRecord::Migration
  def change
    add_column :directors, :photo_url, :string
  end
end
