class Users::RegistrationsController < Devise::RegistrationsController

before_action :configure_devise_permitted_parameters, if: :devise_controller?

def initialize(*args, &block)
   super
   @key = Array["4f65609601e41ad33707297fe2af00f02da30e21", "c8d2b061dccfed8d2185bb3b499b6539f922a05f", "e3875de6c3929c1092b8ac8120acf7f52074f926", "d69379a568034b32b3541acc9f99c85fece25566", "e3875de6c3929c1092b8ac8120acf7f52074f926", "182e840176bc2f167e0142026fd21572c6cb7b3e", "db02bf12e08e50ad13b834e36cda34640ec24703"].sample
end
  protected

  def configure_devise_permitted_parameters
    registration_params = [:age, :dob, :key, :nationality, :gender, :occupation, :email, :password, :password_confirmation]

    if params[:action] == 'update'
      devise_parameter_sanitizer.permit(:account_update) {
        |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.permit(:sign_up) {
        |u| u.permit(registration_params)
      }
      flash[:alert] = @key
    end
  end

end
