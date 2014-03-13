class AddSubtitleToProyects < ActiveRecord::Migration
  def change
    add_column :proyects, :subtitle, :string
    add_column :proyects, :back_image, :string
  end
end
