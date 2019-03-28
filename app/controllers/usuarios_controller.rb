class UsuariosController < ApplicationController
  def index
    usuarios = Usuario.only(:id, :nome, :sobrenome, :email).where(ativo: true)

    if usuarios.blank?
      render json: []
    else
      render json: usuarios, each_serializer: UsuarioSerializer, status: :ok
    end
  end

  def create
    usuario = Usuario.new(create_params)
    usuario.uid = 'email'
    usuario.ativo = true

    if usuario.save
      render json: usuario, status: :created
    else
      render json: usuario.errors.messages, status: :unprocessable_entity
    end
  end

  def show
    render json: Usuario.find(params[:id])
  end

  def inativar
    usuario = Usuario.find(params[:id])
    usuario.ativo = false

    if usuario.save
      render json: 'Usuário inativado'
    else
      render json: usuario.errors.messages
    end
  end

  private

  def create_params
    params.permit(:email, :password, :funcao, :nome, :sobrenome)
  end
end
