class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_action :configure_sign_up_params, only: [:create], if: :devise_controller?
    before_action :configure_account_update_params, only: [:update], if: :devise_controller?

    protected

    def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up, keys: [:Nama,:password_confirmation, :email, :password , :NoId , :Alamat, :Jk, :tgl_lahir, :avatar])
    end

    def configure_account_update_params
     devise_parameter_sanitizer.permit(:account_update, keys: [:Nama,:password_confirmation,:current_password, :email, :password , :NoId , :Alamat, :Jk, :tgl_lahir, :avatar])
     end

end
