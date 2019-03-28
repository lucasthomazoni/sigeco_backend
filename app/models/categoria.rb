class Categoria
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :produtos
  field :nome, type: String
  validates :nome, uniqueness: true
end
