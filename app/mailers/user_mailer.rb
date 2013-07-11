class UserMailer < ActionMailer::Base
  default from: "from@example.com"


  def order_confirmation(product, user)
    @user = user
    @product = product
    mail(to: @user.email, subject: 'Order has been received')
  end
end
