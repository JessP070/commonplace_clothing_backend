class CartSerializer
  include FastJsonapi::ObjectSerializer
  attributes :total, :quantity
end
