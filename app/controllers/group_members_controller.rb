class GroupMembersController < InheritedResources::Base

  private

    def group_member_params
      params.require(:group_member).permit()
    end
end

