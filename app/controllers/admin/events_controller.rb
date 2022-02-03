class Admin::EventsController < ApplicationController

  before_action :authenticate_admin!

  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def create
    @event = Event.new(eventparams)
    if @event.save
      redirect_to admin_applications_path
    else
      render :index
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(param[:id])
    if @event.update(event_params)
      redirect_to admin_application_path(@event)
    else
      render :edit
    end
  end

    private

    def event_params
      params.require(:event).permit(:name, :introduction, :date, :url, :giturl)
    end
end
