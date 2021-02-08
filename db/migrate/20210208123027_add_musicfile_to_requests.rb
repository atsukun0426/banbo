class AddMusicfileToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :musicfile, :string
  end
end
