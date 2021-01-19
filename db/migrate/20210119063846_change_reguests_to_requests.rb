class ChangeReguestsToRequests < ActiveRecord::Migration[6.0]
  def change
    rename_table :reguests, :requests
  end
end
