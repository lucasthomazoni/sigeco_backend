class EmpresasController < ApplicationController
  def index
    render json: Empresa.all
  end

  def show
    render json: Empresa.find(params[:id])
  end

  def create
    empresa = Empresa.new

    if empresa.save
      render json: empresa, status: :created
    else
      render json: empresa.errors.messages, status: :unprocessable_entity
    end
  end

  def update
    empresa = Empresa.find(params[:id])
    empresa.update_attributes(params)

    render json: empresa
  end
end
