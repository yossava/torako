class Notifikasi < ApplicationMailer
  default from: "support@netvcc.co.id"

  def sample_email(current_user, mycart, status)
    @user = current_user
    @mycart = mycart
    @status = status
    mail(to: User.find(@mycart.user_id).email, subject: "Status Pemesanan #{@mycart.invoice} - #{@status} ")
  end

  def invoice_email(current_user)
    @user = current_user
    @mycart = Cart.where(:user_id => current_user.id, :state => 2)
    @subtotal = []
    @mycart.each do |c|
    @subtotal << c.subtotal
    end
    mail(to: current_user.email, subject: "Petunjuk Pembayaran")
  end

end
