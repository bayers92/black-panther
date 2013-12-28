class AddJobAndCompanyToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :job, :string
    add_column :microposts, :company, :string
  end
end
