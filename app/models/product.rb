class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :category

  field :description, type: String
  field :siorg, type: Integer
end
