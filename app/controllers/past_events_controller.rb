class PastEventsController < InheritedResources::Base

  private

    def past_event_params
      params.require(:past_event).permit()
    end
end

