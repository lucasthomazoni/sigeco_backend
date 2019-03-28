class CategoriasController < ApplicationController
  def index
    render json: Categoria.only(:nome)
  end

  def create
    categoria = Categoria.new(create_params)

    if categoria.save
      render json: categoria, status: :created
    else
      render json: categoria.errors.messages, status: :unprocessable_entity
    end
  end

  private

  def create_params
    params.permit(:nome)
  end
end
