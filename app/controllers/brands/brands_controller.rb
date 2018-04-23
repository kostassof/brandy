class Brands::BrandsController < ApplicationController
  before_action :find_brand, only: [:show, :update, :destroy]

  def index
    @brands = Brands::Brand.all
  end

  def show

  end

  private

  def find_brand
    @brand = Brands::Brand.find params[:id]
  end
end
