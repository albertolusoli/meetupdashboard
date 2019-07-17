# frozen_string_literal: true

ActiveAdmin.register Location do
  menu priority: 2
  config.batch_actions = true

  filter :city
  filter :state
  filter :country

  filter :created_at
  filter :location, multiple: true

  permit_params :city,:state,:country,:lat,:lat, :radius, :status



  index do
    selectable_column
    id_column
    column :city
    column :state
    column :country
    column :lat
    column :lon
    column :radius
    column :status


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
      f.input :city, :as => :string
      #  f.input :password, input_html: { autocomplete: "new-password" }
      f.input :state, :as => :string

      f.input :country, :as => :string
      f.input :lat
      f.input :lon
      f.input :radius
      f.input :status
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
