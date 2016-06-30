class Notifikasi < ApplicationMailer
  default from: "support@netvcc.co.id"

  def invoice_email(current_user, mycart, subtotal)
    @user = current_user
    @mycart = mycart
    @status = status
    @sub = subtotal
    mail(to: User.find(@mycart.first.user_id).email, subject: "Petunjuk Pembayaran")
  end
end
