class AddGalleryToProyects < ActiveRecord::Migration
  def change
    add_column :proyects, :galeria1, :string
    add_column :proyects, :galeria2, :string
    add_column :proyects, :galeria3, :string
    add_column :proyects, :galeria4, :string
  end
end
