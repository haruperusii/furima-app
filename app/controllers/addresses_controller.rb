class AddressesController < ApplicationController

  before_action :check_user

  def index
    @address = User.find(current_user.id).address
    
    @item_array = []
    Item.where(switch: 2, sold: 1, user_id: current_user.id).each do |num|
      @item_array << num
    end
    @num = @item_array.length
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to user_path(current_user.id)
    else
      redirect_to new_user_address_path(current_user.id), flash: { alert: "必須項目を入力して下さい"}
    end
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    address = Address.find(current_user.address.id)
    if address.update(address_params)
      redirect_to user_path(current_user.id)
    else
      redirect_to edit_user_address_path(current_user.id), flash: { alert: "編集に失敗しました"}
    end
  end

  def destroy
    Address.find(current_user.address.id).destroy
    redirect_to user_path(current_user.id)
  end

  def check_user
    if user_signed_in?
      redirect_to user_path(current_user.id) unless User.find(params[:user_id]) == current_user
    else
      redirect_to root_path
    end
  end

  private
  def address_params
    params.require(:address).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :address_number, :prefecture_id, :city, :street_number, :building_name, :phone_number).merge(user_id: current_user.id)
  end

end
