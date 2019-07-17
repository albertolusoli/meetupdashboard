class RsvpsController < InheritedResources::Base

  private

    def rsvp_params
      params.require(:rsvp).permit()
    end
end

