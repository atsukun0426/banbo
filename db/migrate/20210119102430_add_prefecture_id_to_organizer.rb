class AddPrefectureIdToOrganizer < ActiveRecord::Migration[6.0]
  def change
    add_column :organizers, :prefecture_id, :integer
  end
end
