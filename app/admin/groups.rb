# frozen_string_literal: true

ActiveAdmin.register Group do
  menu priority: 5
  config.batch_actions = true

  filter :name

  filter :created_at
  filter :category_name
  filter :city
  filter :members
  filter :group_id
  filter :topic, :as => :select, :collection => Topic.all.collect {|category| [ category.name, category.topic_id] }, multiple: true
  filter :topic_topickeyword, :as => :string

  filter :topic_topickeyword, :as => :select, :collection => Topickeyword.all.collect {|category| [ category.keyword] }, multiple: true
 # filter :topic_id
  filter :location, multiple: true
  permit_params :name, :category_name, :group_id, :urlname, :category_id, :city,:date_of_creation,
  :members, :who, :topic_id, :topic

  index do
    
   # id_column
    selectable_column
    column :group_id
    column :name
    column :urlname
  #  column :category_id
    column :category_name
    column :city
    column :date_of_creation
    column :members
    column :who
    column :topic
    column :location

    column :topickey

    actions
  end

  #  show title: :username do
  #   show title: :name do
  #
  #     panel "Order History" do
  #       table_for(user.stories) do
  #         column("Story", sortable: :id) do |order|
  #          # link_to "##{order.id}", admin_order_path(order)
  #         end
  #       #  column("State") { |order| status_tag(order.state) }
  #      #   column("Date", sortable: :checked_out_at) do |order|
  #      #     pretty_format(order.checked_out_at)
  #     #    end
  #      #   column("Total") { |order| number_to_currency order.total_price }
  #       end
  #     end
  #
  #     panel "Address Book" do
  #       table_for(user.verifications) do
  #         column("name") do |a|
  #           link_to a.fullname.to_s,
  #                   admin_user_user_address_path(user.id, a.id)
  #         end
  #         column("Address") do |a|
  #           span a.address_line1.to_s
  #           br a.address_line2.to_s
  #         end
  #         column :city
  #         column :state
  #         column :country
  #         column :zipcode
  #         tr class: "action_items" do
  #       #    td link_to("New Address", new_admin_user_user_address_path(user),
  #        #              class: :button)
  #         end
  #       end
  #     end
  #     active_admin_comments
  #   end
  form do |f|
    f.inputs do
      f.input :name, :as => :string
      #  f.input :password, input_html: { autocomplete: "new-password" }
      f.input :category_name, :as => :string

      f.input :group_id
      f.input :urlname, :as => :string
      f.input :category_id
      f.input :city, :as => :string
      f.input :date_of_creation
      f.input :members
      f.input :who, :as => :string
      f.input :topic, :foreign_key => 'topic_id', :class_name  => 'Topic', :primary_key => 'topic_id'
      f.input :topic, :as => :select, :collection => Topic.all.collect {|category| [ category.topic_id] }
f.input :topic_id
    end
    f.actions
  end

  #   sidebar "Customer Details", only: :show do
  # #    attributes_table_for user, :username, :email, :created_at
  #     attributes_table_for user, :email, :created_at

  #   end
  #   sidebar "Order History", only: :show do
  #     attributes_table_for user do
  #       row("Total Orders") { user.orders.complete.count }
  #       row("Total Value") do
  #         number_to_currency user.orders.complete.sum(:total_price)
  #       end
  #     end
  #   end
  sidebar 'Active Admin Demo' do
  #  render('/admin/sidebar_links', model: 'groups')
  end
end
