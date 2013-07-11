class OrderMailer < ActionMailer::Base
  default from: 'xxxxx@xxxxxxxxx.com'

  def receipt(order)
    @order = order
    mail(to: order.user.email, subject: 'Your Order with Onlinegrocerymart.com')
  end
end