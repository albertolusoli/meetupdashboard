ActiveAdmin.register Topic do
	 config.sort_order = 'topic_id'

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :lang, :topickeyword
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
 #  form do |f|
 #    f.inputs do
 #      f.input :name, :as => :string
 #      #  f.input :password, input_html: { autocomplete: "new-password" }
 #      # f.input :topickeyword, :as => :select, :collection => Topickeyword.all.collect {|c| [c.keyword]}
 #    #  f.input :topic, :as => :select, :collection => Topic.all.collect {|category| [ category.topic_id] }
 #      f.input :topickeyword
 #      f.input :urlkey, :as => :string

	#   end
	#  f.actions

	# end
end
