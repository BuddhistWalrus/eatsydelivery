class Order < ActiveRecord::Base
	after_create :send_order_create_email

	serialize :notification_params, Hash
	#build the paypal url receipt
	def paypal_url(return_path)
    values = {
        business: "bradner.hill@gmail.com",
        cmd: "_xclick",
        upload: 1,
        return: "#{Rails.application.secrets.app_host}/order/complete",
        invoice: id,
        amount: self.total,
        item_name: self.contents,
        item_number: 1,
        quantity: '1',
        notify_url: "#{Rails.application.secrets.app_host}/hook"
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end


  protected 
	def send_order_create_email
		OrderMailer.order_submitted_email(self).deliver
	end

  #total the price
  #def total_price()
		#self.total = 0


	
		#check for order contents

		#burritos
		#if self.contents.include? "chicken"
		#	self.total += 12
		#end
		#if self.contents.include? "veg"
		#	self.total += 6.5
		#end
		#if self.contents.include? "steak"
		#	self.total += 4.5
		#end
		#if self.contents.include? "carnitas"
		#	self.total += 4.5
		#end
		#if self.contents.include? "barb"
		#	self.otal += 2.5
		#end
		#if self.contents.include? "chip/mole"
		#	self.total += 3
		#end
		
		#check alacarte items
		#check for discount
		


	#end
end
