class PedidosController < ApplicationController
  def index
    render json: Pedido.all
  end

  def create
    pedido = Pedido.new

    if pedido.save
      render json: pedido, status: :created
    else
      render json: pedido.errors.messages, status: :unprocessable_entity
    end
  end

  def show
    pedido = Pedido.find(params[:id])

    render json: pedido
  end

  def update
    pedido = Pedido.find(params[:id])
    pedido.update_attributes(params)

    render json: pedido
  end

  def destroy
    pedido = Pedido.find(params[:id])

    if pedido.delete
      render json: []
    else
      render json: pedido.errors.messages, status: :unprocessable_entity
    end
  end
end
