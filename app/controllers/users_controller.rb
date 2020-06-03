class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :donate]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to address_user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def address
    @address = Address.new
  end
  
  def confirm_address
    @address = Address.new(address_params)
    if @address.save
      redirect_to root_path
    else
      redirect_to address_user_path(@user)
    end
  end

  def donate
    
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :name_reading, :nickname)
    end

    def address_params
      params.require(:address).permit(:postal_code, :prefecture, :city, :house_number, :building_name)
    end

end
