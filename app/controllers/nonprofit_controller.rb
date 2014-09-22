class NonprofitController < ApplicationController

  def index
    @nonprofits = Nonprofit.all
  end

  def new
    @nonprofit = Nonprofit.new
  end

  def create
    @nonprofit = Nonprofit.new(nonprofit_params)

    if @nonprofit.save
      flash[:notice] = "You have successfully saved the nonprofit."
      redirect_to nonprofit_index_path
    else
      flash[:notice] = "Work harder. Failed to save."
      render 'new'
    end
  end

  def delete
    @nonprofit = Nonprofit.find(params[:id])
    if @nonprofit.delete
      flash[:notice] = "Nonprofit deleted"
      redirect_to nonprofit_index_path
    else
      flash[:alert] = "Failed to delete"
      render "show"
    end
  end

  private

  def nonprofit_params
    params.require(:nonprofit).permit(:name)
  end

end
