class OrdersController < ApplicationController
	def new
		@order = Order.new
	end

	def create
		@order = Order.create(order_params)
		current_cart.line_items.each {|item| item.update(order_id: @order.id) & item.save}
		redirect_to order_url(@order)
	end

	def show
		@order = Order.find(params[:id])
		@total_price = 0
    @order.line_items.each { |line_item| @total_price += line_item.quantity*line_item.price }
	end

	private

	def order_params
		params.require(:order).permit(:email, :address, :telephone)
	end

end
