class AddMovieIDtoRoles < ActiveRecord::Migration
  def up
    add_column :roles, :actor_id, :integer
  end

  def down
  end
end
