class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new

  end

  def create
    @coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find_by(id: params[:id])
    redirect_to coupons_path if !@coupon
  end

  private

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
end