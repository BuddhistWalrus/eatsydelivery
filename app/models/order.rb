class Order < ActiveRecord::Base
	serialize :notification_params, Hash
	#build the paypal url receipt
	def paypal_url(return_path)
    values = {
        business: "bradner.hill-facilitator@gmail.com",
        cmd: "_xclick",
        upload: 1,
        return: "#{Rails.application.secrets.app_host}/order/complete",
        invoice: id,
        amount: 1,
        item_name: "test receipt",
        item_number: 1,
        quantity: '1',
        notify_url: "#{Rails.application.secrets.app_host}/hook"
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end

end
