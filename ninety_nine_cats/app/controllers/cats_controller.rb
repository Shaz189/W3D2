class CatsController < ApplicationController
  
  def index
    @cats = Cat.all 
    
    render :index #tells rails to look in views/cats/index.html.erb
  end
  
  def show
    @cat = Cat.find(params[:id])
    
    render :show #tells rails to look in views/cats/show.html.erb
  end
  
  def new
    @colors = Cat.colors
    render :new 
  end 
  
  def create 
    cat = Cat.new(permitted_params)
    if cat.save 
      redirect_to cat_url(cat.id)
    else 
      redirect_to new_cat_url
    end 
  end 
  
  private
  
  def permitted_params
      params.require(:cat).permit(:name, :color, :sex, :birth_date, :description)
  end 
end
