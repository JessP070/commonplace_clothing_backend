class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :description, :image_url, :cart_id, :cart
  # belongs_to :cart
