class Faq < ActiveRecord::Base
	belongs_to :conference
	has_many :questions
end