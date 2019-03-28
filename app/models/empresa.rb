class Empresa
  include Mongoid::Document
  include Mongoid::Timestamps

  field :nome, type: String
  field :nome_fantasia, type: String
  field :cnpj, type: String
  field :email, type: String
  field :telefone, type: String

  validates :nome, :nome_fantasia, presence: true
end
