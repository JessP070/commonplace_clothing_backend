class Api::V1::CartsController < ApplicationController
        def index
            carts = Cart.all
           
            render json: CartSerializer.new(carts)
        end
    
        def create
            cart = Cart.new(carts_params)
            if cart.save
                render json: cart, status: :accepted
            else 
                render json: {errors: cart.errors.full_messages}, status: :unprocessible_entity
            end
        end
    
        private
    
        def carts_params
            params.require(:carts).permit(:total, :quantity)
    
        end
    end
    
end
