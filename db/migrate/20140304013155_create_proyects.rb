class CreateProyects < ActiveRecord::Migration
  def change
    create_table :proyects do |t|
      t.string :title
      t.string :description
      t.string :thumb
      t.string :photo

      t.timestamps
    end
  end
end
