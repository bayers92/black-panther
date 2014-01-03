class AddPublishToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :publish, :boolean
  end
end
