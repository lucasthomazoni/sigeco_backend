class ProdutosController < ApplicationController
  def index
    render json: Produto.all, each_serializer: ProdutoSerializer
  end

  def create
    produto = Produto.new(create_params)
    produto.categoria = Categoria.find(create_params[:categoria_id])

    if produto.save
      render json: produto, status: :created
    else
      render json: produto.errors.messages, status: :unprocessable_entity
    end
  end

  def show
    render json: Produto.find(params[:id])
  end

  def update
    produto = Produto.find(params[:id])
    produto.update_attributes(params)

    render json: produto
  end

  def destroy
    produto = Produto.find(params[:id])

    if produto.delete
      render json: []
    else
      render json: produto.errors.messages, status: :unprocessable_entity
    end
  end

  private

  def create_params
    params.permit(:descricao, :siorg, :categoria_id)
  end
end
