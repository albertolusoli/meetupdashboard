class TopickeywordsController < InheritedResources::Base

  private

    def topickeyword_params
      params.require(:topickeyword).permit()
    end
end

