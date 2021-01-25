class AddGenreToRecruitment < ActiveRecord::Migration[6.0]
  def change
    add_column :recruitments, :music_genre_id, :integer
  end
end
