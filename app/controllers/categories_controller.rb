class CategoriesController < ApplicationController
  def index
    render json: Category.only(:name)
  end
end
