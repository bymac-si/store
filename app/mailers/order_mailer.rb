class OrderMailer < ApplicationMailer

    def send_mail
      @greeting = "Hi"
      @product = params[:product]
  
      mail(to: "mcastroabarca@gmail.com", subject: "PRUEBA")
    end
  end