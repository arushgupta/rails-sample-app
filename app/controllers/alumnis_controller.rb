class AlumnisController < ApplicationController
  def index
	@categories = Category.all.where(is_active: true)
    @cat = Category.all.where("categories.category_id IS NOT NULL")
	@alumnis = Alumni.all.where(category_id: params[:cat_id], is_active: true)
  end
end