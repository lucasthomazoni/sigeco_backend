class Pedido
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :usuario
  belongs_to :unepe

  field :numero, type: Integer
  field :produtos, type: Hash
  field :status, type: String

  validates :numero, presence: true
end
