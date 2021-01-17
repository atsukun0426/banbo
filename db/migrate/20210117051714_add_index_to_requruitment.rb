class AddIndexToRequruitment < ActiveRecord::Migration[6.0]
  def change
    add_index :recruitments, [:organizer_id, :created_at]
  end
end
