class CreateRecruitments < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitments do |t|
      t.string   :title,           null: false, default: ""
      t.text     :content
      t.datetime :date
      t.integer  :price
      t.integer  :organizer_id
      t.integer  :prefecture_id

      t.timestamps
    end
  end
end
