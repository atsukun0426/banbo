class AddWebUrlToOrgnaizer < ActiveRecord::Migration[6.0]
  def change
    add_column :organizers, :website, :string
  end
end
