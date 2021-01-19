class AddIndexToRequests < ActiveRecord::Migration[6.0]
  def change
    add_index :reguests, [:user_id, :recruitment_id]
  end
end
