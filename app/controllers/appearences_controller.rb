class AppearencesController < ApplicationController
  def new
    @appearence = Appearence.new
  end

  def create
    a = Appearence.new(appearence_params)
    if a.valid?
      a.save
      redirect_to event_path(params[:appearence][:event_id])
    else
      render 'new'
    end
  end


  def appearence_params
    params.require(:appearence).permit(:attendee_id, :event_id)
  end

end
