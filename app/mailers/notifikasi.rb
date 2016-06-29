class Notifikasi < ApplicationMailer
  default from: "tokenlr2@gmail.com"

  def sample_email(current_user, mycart, status)
    @user = current_user
    @mycart = mycart
    @status = status
    mail(to: User.find(@mycart.user_id).email, subject: "Status Pemesanan #{@mycart.invoice} - #{@status} ")
  end
end
