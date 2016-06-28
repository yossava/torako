class Notifikasi < ApplicationMailer
  default from: "from@marketplace-188545.nitrousapp.com"

  def sample_email(current_user, mycart, status)
    @user = current_user
    @mycart = mycart
    @status = status
    mail(to: 'vcckaskus@gmail.com', subject: "Status Pemesanan #{@mycart.invoice} - #{@status} ")
  end
end
