ActiveAdmin.register Course do
  menu priority: 3
  config.sort_order = 'order_asc'

  permit_params :title, :description, :text, :is_active, :order, :slug

  index do
    selectable_column
    %i[title description is_active order].each { |column_name| column column_name }
    actions
  end
end
