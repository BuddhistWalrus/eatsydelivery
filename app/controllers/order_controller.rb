class OrderController < ApplicationController

	skip_before_action :verify_authenticity_token

	def index
		@order = Order.new
	end

	def create
		@order = Order.new

		@order.name = params[:name]
		@order.email = params[:email]
		@order.number = params[:phone]

		if @order.save
			redirect_to welcome_complete_path
		end
	end

	def new
	end

	def complete
	end

end