class Micropost < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :user_id, presence: true
	validates_length_of :content, maximum: 140, too_long: 'Your post must be less than 140 words.',
                      tokenizer: ->(str) { str.scan(/\w+/) }
    validates :title, presence: true
    validates :subtitle, presence: true
	validates :content, presence: true
	validates :author, presence: true
	validates :company, presence: true
	validates :job, presence: true
end