class CreateReguests < ActiveRecord::Migration[6.0]
  def change
    create_table :reguests do |t|
      t.string   :name
      t.string   :group_name
      t.string   :email
      t.text     :content
      t.integer  :user_id
      t.integer  :recruitment_id
      t.timestamps
    end
  end
end
