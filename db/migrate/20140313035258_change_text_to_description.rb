class ChangeTextToDescription < ActiveRecord::Migration
  def up
	change_column :proyects, :description, :text
  end

  def down
  	change_column :proyects, :description, :string
  end
end
