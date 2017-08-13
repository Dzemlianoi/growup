ActiveAdmin.register Course do
  menu priority: 3
  config.sort_order = 'order_asc'
  actions :all

  permit_params :title, :description, :text, :is_active, :order

  index do
    selectable_column
    column :id
    column :title
    column :description
    column :is_active
    column :order
  end
end
