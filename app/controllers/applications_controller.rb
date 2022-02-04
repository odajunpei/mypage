class ApplicationsController < ApplicationController

  def index
    @applications = Application.all
    @events = Event.all
  end

  def show
    @application = Application.find(params[:id])
  end

private

  def application_params
    params.require(:application).permit(:url, :giturl, :introduction, :image, :name)
  end

end
