class Produto
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :categoria

  field :descricao, type: String
  field :siorg, type: Integer
  field :estoque, type: Float

  validates :descricao, :siorg, presence: true
  validates :descricao, uniqueness: true
end
