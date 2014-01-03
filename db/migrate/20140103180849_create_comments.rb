class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.integer :user_id
      t.text :content
      t.integer :vote

      t.timestamps
    end
    add_index :comments, [:vote, :user_id, :author_id]
  end
end
