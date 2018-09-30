class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    redirect_to root_url if current_user.nil?
    event = current_user.created_events.new(event_params)
    if event.save
      redirect_to event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  def event_params
    params.require(:event).permit(:name, :description, :held_on)
  end


end
