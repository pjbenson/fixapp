class Blogmailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blogmailer.register.subject
  #
  def register(customer)
    @customer = customer
    mail(:to => customer.email, :subject => "Welcome to Fixapp")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blogmailer.request.subject
  #
  #def request(customer)
  #  @customer = customer
  #  mail(to: => customer.email, :subject => "Your request was successful")
  #end
end
