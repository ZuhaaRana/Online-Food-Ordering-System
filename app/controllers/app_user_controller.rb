class AppUserController < ApplicationController
    def index
    end

    def show
    end

    def new
        @app_user = AppUser.new
        @app_user.build_customer
    end

    def edit

    end

    def create
    end

    def destroy
    end

    def app_user_params
        params.require(:app_user).permit(:first_name, :last_name, :email, :password, :phone_no, :address)
    end
end
