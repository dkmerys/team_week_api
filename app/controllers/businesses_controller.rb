class BusinessesController < ApplicationController

  def index
    @businesses = Business.all.alpha.page params[:page]
    json_response(@businesses)
  end

  def show
    @business = Business.find(params[:id])
    json_response(@business)
  end

  def create 
    @businesses = Business.create!(business_params)
    json_response(@business)
  end

  def update
    @business = Business.find(params[:id])
    @business.update!(business_params)
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
  end

  def food
    @businesses = Business.food.alpha
    json_response(@businesses)
  end

  def beauty
    @businesses = Business.beauty.alpha
    json_response(@businesses)
  end

  def health
    @businesses = Business.healthcare.alpha
    json_response(@businesses)
  end

  def clothing
    @businesses = Business.clothing.alpha
    json_response(@businesses)
  end

  def design
    @businesses = Business.design.alpha
    json_response(@businesses)
  end

  def publishing
    @businesses = Business.publishing.alpha
    json_response(@businesses)
  end


  def misc
    @businesses = Business.misc
    json_response(@businesses)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def business_params
    params.permit(:name, :address, :link, :category)
  end
end