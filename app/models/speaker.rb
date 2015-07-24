class Speaker < ActiveRecord::Base
	validates :name,:presence => true,:format => { :with => /\A[a-zA-Z\s\-]+\z/},length: { maximum: 100}
	validates :panel,:presence => true,:format => { :with => /\A[a-zA-Z0-9\s\-]+\z/},length: { maximum: 100}
	validates :description,:presence => true,:format => {  :with => /\A[a-zA-Z0-9\s\.',:(){}_\-]+\z/},length: { maximum: 500}
end
