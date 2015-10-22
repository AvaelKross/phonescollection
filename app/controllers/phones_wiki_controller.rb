class PhonesWikiController < ApplicationController
  before_action :set_phone, only: [:show, :edit, :update, :destroy]
  #before_action :check_auth, only: [:edit, :update, :destroy, :create, :new]
  before_action :set_brand, only: [:index, :new, :create]

  def brands
    @brands = Brand.all
  end

  def phones
    @brand = Brand.find(params[:brand_id])
    @phones = @brand.phones.order(:created_at)
  end

  def show
  end

  def new
    @phone = Phone.new
  end

  def edit
  end

  def create
    @phone = Phone.new(phone_params)
    @phone.brand = @brand

    if @phone.save
      redirect_to phone_path(@brand, @phone), notice: 'Phone was successfully created.'
    else
      render :new
    end
  end

  def update
    if @phone.update(phone_params)
      redirect_to phone_path(@brand, @phone), notice: 'Phone was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @phone.destroy
    redirect_to phones_url(@brand), notice: 'Phone was successfully destroyed.'
  end

  private
    def check_auth
      return redirect_to phones_path(@brand), notice: "You have no rights to do it" unless current_user.present?
    end

    def set_phone
      @phone = Phone.find(params[:id])
      @brand = @phone.brand
    end

    # Only allow a trusted parameter "white list" through.
    def phone_params
      params.require(:phone).permit(:name, :network, :features, :weight, :size, :akkum, :limited, :notes, :photo_url)
    end
end
