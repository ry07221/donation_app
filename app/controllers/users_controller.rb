class UsersController < ApplicationController

  def new
    @donation = UserDonation.new
  end

  def create
    @donation = UserDonation.new(donation_params)
    if @donation.save
      redirect_to users_path
    else
      render "new"
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end
   
    def donation_params
      params.require(:user_donation).permit(:name, :name_reading, :nickname, :postal_code, :prefecture, :city, :house_number, :building_name, :price)
    end

end
