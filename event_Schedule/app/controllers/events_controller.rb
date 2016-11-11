class EventsController < ApplicationController
	def new
		@event=Event.new
	end
	def create
		@event=Event.new(event_params)
		@event.save

	end

	private
	def event_params
	  params.require(:event).permit(:event_title, :venue,:date,:time,:invitees,:description,:status)
	end
end
