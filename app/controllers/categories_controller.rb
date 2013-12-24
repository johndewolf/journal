class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

      if @category.save
        redirect_to @category, notice: 'Category was successfully created'
      else
        render action: 'new'
      end
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to @category, notice: 'Category was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to categories_url, notice: 'Category was deleted'
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
