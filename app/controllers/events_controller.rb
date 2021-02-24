class EventsController < ApplicationController
  # include 'EventsHelper'

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = events.build(event_params)
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :location, :description, :user_id)
  end
end
