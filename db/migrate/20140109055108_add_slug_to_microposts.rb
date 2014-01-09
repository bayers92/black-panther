class AddSlugToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :slug, :string, uniquness: true
    add_index :microposts, :slug
  end
end
