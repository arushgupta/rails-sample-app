class CategoriesController < ApplicationController

# before_action :admin_user,     only: [:destroy, :create]
  
  # def new
  # 	@category = Category.new
  # end
  
  # def create
    
  #   if @category.exists
  #     return redirect_to :action => 'index'
  #   end

  # 	 @category = Category.new(category_params)
  #     if @category.save
  #       redirect_to root_url
  #     else
  #       render 'new'
  #     end
  # end
  
  # def show
  #   @category = Category.find(params[:id])
  # end

  def index
   @categories = Category.all
   #@cat=Category.all.where("categories.category_id IS NOT NULL")
   @homeimages=HomeGallery.all.where(:category_id => params[:id])
   debugger
   @pages=Page.all.where(:category_id => params[:id])

#   def new
#   	@category = Category.new
#   end
  
#   def create
    
#     if @category.exists
#       return redirect_to :action => 'index'
#     end

#   	 @category = Category.new(category_params)
#       if @category.save
#         redirect_to root_url
#       else
#         render 'new'
#       end
#   end
  
#   def show
#     @category = Category.find(params[:id])
#   end

  
  private
  def category_params
    params.require(:category).permit(:name,:is_deleted, :category_id)
  end
end
