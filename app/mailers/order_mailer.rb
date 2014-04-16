class OrderMailer < ActionMailer::Base
  default bcc: 'mr.andrey.repin@yandex.ru',
  		  from: "megashop@example.com"
	def order_mail(order)
		@order = order
		mail(to: @order.email, subject: 'Заказ на Megashop')
	end

end
