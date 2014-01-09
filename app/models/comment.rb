class Comment < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('vote DESC') }
	validates :user_id, presence: true
	validates :author_id, presence: true
	validates :content, presence: true
	validates :vote, presence: true
	validates_length_of :content, maximum: 15, too_long: ' - Please limit your suggested topic to 15 words.',
                      tokenizer: ->(str) { str.scan(/\w+/) }
end
