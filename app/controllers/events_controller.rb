class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      redirect_to root_path, notice: 'Your event was created'
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date_time, :location)
  end
end
