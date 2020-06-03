class UsersController < ApplicationController
  # before_action :set_user, only: [:donate]

  # GET /users
  # GET /users.json
  # def index
  #   @users = User.all
  # end

  # POST /users
  # POST /users.json
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     redirect_to address_user_path(@user)
  #   else
  #     redirect_to new_user_path
  #   end
  # end

  # def index
  #   @donation = UserDonation.all.order(created_at: :desc)
  # end
  
  # def create
  #   @address = Address.new(address_params)
  #   # if @address.save
  #   #   redirect_to confirm_address_user_path
  #   # else
  #   #   redirect_to address_user_path(@user)
  #   # end
  # end

  def new
    @donation = UserDonation.new
  end

  def create
    @donation = UserDonation.new(donation_params)
    # if @donation.save
    #   redirect_to root_path
    # else
    #   redirect_to donate_user_path
    # end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    # def user_params
    #   params.require(:user).permit(:name, :name_reading, :nickname)
    # end

    def donation_params
      params.permit(:name, :name_reading, :nickname, :postal_code, :prefecture, :city, :house_number, :building_name, :price)
    end

    # def donation_params
    #   params.permit(:name, :name_reading, :nickname, :price)
    # end
end
