class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :authenticate_admin!, only: [:new, :edit, :create, :update]
  expose(:categories)
  expose(:category)
  expose(:product) { Product.new }

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    self.category = Category.new(category_params)

    if category.save
      redirect_to category, notice: 'Category was successfully created.'
    else
      render 'new'
    end
  end

  def update
    if category.update(category_params)
      redirect_to category, notice: 'Category was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    category.destroy
    redirect_to categories_url, notice: 'Category was successfully destroyed.'
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

    def authenticate_admin!
      if current_user && !current_user.admin?
        redirect_to new_user_session_path, notice: "You are not allowed to do this"
      end
    end
end
