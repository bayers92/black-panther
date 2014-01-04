class Comment < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :user_id, presence: true
	validates :author_id, presence: true
	validates :content, presence: true
	validates :vote, presence: true
end
