class AssetsController < ApplicationController 
    def new
      @asset = Asset.new 
    end

  def create
    @asset = Asset.create(asset_params)
    render json: @asset, status: 201
  end

  def show
    @asset = Asset.find(params[:id]) 
    render json: @asset
  end

  def index
    @assets = Asset.all 
    render json: @assets
  end 
  
  private

  def asset_params
    params.permit(:id, :name, :value, :user_id)
  end
end
