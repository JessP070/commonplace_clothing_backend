class AddCartToProduct < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :cart, foreign_key: true
  end
end
