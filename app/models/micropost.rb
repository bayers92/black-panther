class Micropost < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('updated_at DESC') }
	validates :user_id, presence: true
	validates_length_of :content, maximum: 140, too_long: 'Your post must be less than 140 words.',
                      tokenizer: ->(str) { str.scan(/\w+/) }, if: :publish?
    validates :title, presence: true
    validates :subtitle, presence: true
	validates :content, presence: true
	validates :author, presence: true
	validates :company, presence: true
	validates :job, presence: true
	validates_inclusion_of :publish, :in => [true, false]
end
