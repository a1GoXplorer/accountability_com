class SenatorsController < ApplicationController
  def index
    @senators = Senator.all
    render :index
  end

  def show
    @senator = Senator.find(params[:id])
    render :show
  end

  def new
  end

  def edit
  end
end
