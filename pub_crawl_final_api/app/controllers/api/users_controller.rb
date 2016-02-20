class Api::UsersController < ApplicationController

  # validates :name,
  #   presence: true,
  #   length: { in: 4..40 }

  # validates :nickname,
  #   presence: true,
  #   uniqueness: true,
  #   length: { in: 3..20 }

  # validates :email,
  #   presence: true,
  #   uniqueness: true,
  #   format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def create
    @user = User.new

    if @user.save
      # code here
    else
      # code here
    end
  end

  def update
    @user = User.find_by(id: params[:id])

    @user.update_attributes(user_params)
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user.destroy
      # code here
    else
      # code here
    end
  end

    private

    def user_params
      params.require(:user).permit(:name, :nickname, :image, :email, :encrypted_password)
    end



end
