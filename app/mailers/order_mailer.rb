class OrderMailer < ActionMailer::Base
	default from: "eatsydelivery@gmail.com"

	def order_submitted_email(order)
		@order = order

		mail(to: "contact@eatsydelivery.com", subject: "Order Submitted")
		#mail(to: "gabecorso@aol.com", subject: "Test Order Submitted")


		# change to greenstogrounds@gmail
	end


end