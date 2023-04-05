class PassengerMailer < ApplicationMailer
  default from: 'admin@foobarlines.com'

  def confirmation_email
    @passenger = params[:passenger]
    @arrival_airport = params[:arrival_airport]
    mail(to: @passenger.email, subject: "You flight has been confirmed")
  end
end
