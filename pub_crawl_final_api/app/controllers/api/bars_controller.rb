class Api::BarsController < ApplicationController

  # validates :name,
  #   presence: true,
  #   uniqueness: true,
  #   length: { in: 3..40 }

  # validates :address, :city,
  #   presence: true

  # validates :province,
  #   presence: true,
  #   length: { is: 2 }

  # Do we need index?
  # def index
  #   @bars = Bar.all
  # end

  def show
    @bar = Bar.find_by(id: params[:id])
  end

  def new
    @bar = Bar.new
  end

  def edit
    @bar = Bar.find_by(id: params[:id])
  end

  def create
    @bar = Bar.new

    if @bar.save
      # code here
    else
      # code here
    end
  end

  def update
    @bar = Bar.find_by(id: params[:id])

    @bar.update_attributes(bar_params)
  end

  def destroy
    @bar = Bar.find_by(id: params[:id])
    if @bar.destroy
      # code here
    else
      # code here
    end
  end

    private

    def bar_params
      params.require(:bar).permit(:name, :address, :city, :province)
    end

end
