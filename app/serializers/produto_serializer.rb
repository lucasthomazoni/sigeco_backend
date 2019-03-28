class ProdutoSerializer < ActiveModel::Serializer
  attributes %i[id categoria_id categoria descricao siorg]

  def id
    object.id.to_s
  end

  def categoria_id
    object.categoria_id.to_s
  end

  def categoria
    object.categoria.nome
  end
end
