class Users::ConfirmationsController < Devise::ConfirmationsController
  # def new
  #   super
  # end
  private

  def after_confirmation_path_for(resource_name, resource)
   "/berhasil"
  end
  # def create
  #   super
  # end
end
