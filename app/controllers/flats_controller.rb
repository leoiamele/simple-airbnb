class FlatsController < ApplicationController
  
  before_action :set_flat, only: [:show]

  def index
    @flats = Flat.all
  end

  def show

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_flat
    @flat = Flat.find(params[:id])
  end
end
