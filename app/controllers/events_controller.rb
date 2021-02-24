class EventsController < ApplicationController
  #include 'EventsHelper'

  before_action :authenticate_user!, except: [:index]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :location, :description, :user_id)
  end
end
