# frozen_string_literal: true

ActiveAdmin.register Event do


  menu priority: 5
  config.batch_actions = true

  filter :name

  filter :created_at
  filter :category_name
  filter :city
  filter :number_of_participants
  filter :group_id
  filter :event_id
  filter :event_date
  filter :event_time
  filter :urlname
  filter :venue_name
  filter :venue_address
  filter :topic, :as => :select, :collection => Topic.all.collect {|category| [ category.name, category.topic_id] }
  filter :topic_topickeyword, :as => :string

  filter :group_topic_topickeyword, :as => :select, :collection => Topickeyword.all.collect {|category| [ category.keyword] }, multiple: true

  filter :location, multiple: true


  permit_params :name, :event_id, :group_id, :urlname, :description,
  :number_of_participants, :link, :event_date, :event_time, :venue_lat,
  :venue_lon, :venue_name, :venue_address, :venue_lat, :venue_lon



  index do
    selectable_column
    id_column
    column :event_id
    column :group
    column :topic
    column :urlname
    column :name
    column :number_of_participants
    column :event_date
    column :event_time
    column :location


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
      f.input :event_id, :as => :string
      f.input :group_id
      f.input :urlname, :as => :string
      f.input :description

      f.input :number_of_participants
      f.input :link, :as => :string
      f.input :event_date
      f.input :event_time
      f.input :venue_lat
      f.input :venue_lon
      f.input :venue_name, :as => :string

      f.input :venue_address, :as => :string
      f.input :venue_lat
      f.input :venue_lon
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
