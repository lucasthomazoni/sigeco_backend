class UsuarioSerializer < ActiveModel::Serializer
  attributes %i[id nome sobrenome email]

  def id
    object.id.to_s
  end
end
