class CreateMusicLists < ActiveRecord::Migration[5.2]
  def change
    create_table :music_lists do |t|
      t.text :nombre_cancion
      t.string :url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
