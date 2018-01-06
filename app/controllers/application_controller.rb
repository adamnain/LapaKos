
class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

   before_action :configure_sign_up_params, only: [:create]
   before_action :configure_account_update_params, only: [:update]

    protected

    def configure_sign_up_params
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:nama,:password_confirmation, :email, :password , :NoId , :Alamat, :Jk, :tgl_lahir, :Foto])
    end

    def configure_account_update_params
    	devise_parameter_sanitizer.permit(:account_update, keys: [:nama,:password_confirmation,:current_password, :email, :password , :NoId , :Alamat, :Jk, :tgl_lahir, :Foto])
   	end
end