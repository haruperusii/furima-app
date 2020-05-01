class ItemsController < ApplicationController

  require 'payjp'
  # before_action :move_to_index

  def index
  end

  def new
    @item = Item.new
    @item.images.build
    @item.build_brand
    @item.build_shipment
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      flash.now[:alert] = "必須項目を入力して下さい"
      render action: :new
    end
  end

  def show
  end


  def purchase
    Payjp.api_key = "sk_test_5b7e13cb76bbe5226e8504b2"
    Payjp::Charge.create(
      amount: 809, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end
  
  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

  private
  def item_params
    params.require(:item)
          .permit(:name,
                  :info,
                  :status,
                  :category_id,
                  :switch,
                  :value,
                  :sold,
                  images_attributes:[
                    :image
                  ],
                  brand_attributes:[
                    :name
                  ],
                  shipment_attributes:[
                    :delivery_burden,
                    :prefecture_id,
                    :days
                  ])
          .merge(user_id: current_user.id)

  end
end
