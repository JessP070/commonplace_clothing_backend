class Api::V1::ProductsController < ApplicationController
    def index
        products = Product.all
       
        render json: ProductSerializer.new(products)
    end

    def create
        product = Product.new(products_params)
        if product.save
            render json: ProductSerializer.new(products), status: :accepted
        else 
            render json: {errors: product.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def products_params
        params.require(:products).permit(:name, :price, :description, :image_url, :cart_id)

    end
end
