class ApplicationController < ActionController::Base
  before_filter :configure_devise_permitted_parameters, if: :devise_controller?
  before_action :tokosaya
  before_action :troli
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  def store_location
    # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end
  protect_from_forgery with: :exception

  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    "/masuk"
  end
  def after_sign_in_path_for(resource_or_scope)
    "/profil"
  end
  def tokosaya
      if user_signed_in?
      if current_user.toko
      @toko = current_user.toko
      end
      end
  end
  def troli
    if user_signed_in? && current_user.cart
      @troli = current_user.cart.where(:state => 1)
      @troli2 = current_user.cart.where(:state => 2)
      @troli3 = current_user.cart.where(:state => 3)
      @troli4 = current_user.cart.where(:state => 4)
      @troli5 = current_user.cart.where(:state => 5)
      @troli6 = current_user.cart.where(:state => 6)
      @troli7 = current_user.cart.where(:state => 7)
      @troli8 = current_user.cart.where(:state => 8)
      @troli9 = current_user.cart.where(:state => 9)
      @troli10 = current_user.cart.where(:state => 10)
    end
    if user_signed_in? && Cart.where(:seller_id => current_user.id).present?
      @stroli3 = Cart.where(:seller_id => current_user.id, :state => 3)
      @stroli7 = Cart.where(:seller_id => current_user.id, :state => 7)
      @stroli6 = Cart.where(:seller_id => current_user.id, :state => 6)
      @stroli4 = Cart.where(:seller_id => current_user.id, :state => 4)
      @stroli5 = Cart.where(:seller_id => current_user.id, :state => 5)
      @stroli9 = Cart.where(:seller_id => current_user.id, :state => 9)
      @stroli10 = Cart.where(:seller_id => current_user.id, :state => 10)
    end
  end


  protected

  def configure_devise_permitted_parameters
    permitted_params = [:email, :password, :password_confirmation, :namalengkap, :nomor_handphone, :is_female, :date_of_birth, :profil_image]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) {
        |u| u.permit(permitted_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) {
        |u| u.permit(permitted_params)
      }
    end
  end
end
