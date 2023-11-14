# frozen_string_literal: true

class AppUsers::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  def create

    @app_user = AppUser.new(app_user_params)
    @app_user.build_user(user_params)

    super do |app_user|
      # Customize this block to create or associate records in other models
      # For example, creating a comment associated with the new user
      Customer.create(app_user: app_user)
    end

    if @app_user.save
      sign_in @app_user.user
      redirect_to root_path, notice: 'Account created successfully!'
    else
      app_user.errors.full_messages
    end
   
 end

  # GET /resource/sign_up
  # def new
  #   super
  # end


  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end
  def app_user_params
    params.require(:app_user).permit(:app_user_attribute, user_attributes: [:user_attribute1, :user_attribute2])
  end
  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    new_app_user_session_path
  end
end
