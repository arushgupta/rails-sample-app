class Category < ActiveRecord::Base

  has_many :apply_nows
  has_many :categories
  has_many :committees
  has_many :deadlines
  has_many :faqs
  has_many :home_galleries
  has_many :overviews
  has_many :pages
  has_many :schedules
  has_many :secretariats
  has_many :speakers
  has_many :travel_conferences
  belongs_to :category
  belongs_to :parent_category, class: "Category"
  has_many :subcategories, class: "Category"

 validates :name,  presence: true, length: { maximum: 50 }, uniqueness: true
 
end
