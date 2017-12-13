ActiveAdmin.register Group do
  permit_params :name, :course_id, user_ids: []

  filter :name
  filter :course_id, as: :select2, collection: Course.all

  index do
    selectable_column
    column :name
    column(:course) { |group| group.course&.title || Course.by_order.first.title}
    actions
  end

  show do
    attributes_table do
      row :name
      row(:course) { |group| group.course&.title || Course.by_order.first.title}
      row(:users) { |group| group.users.pluck(:name).map { |name| "- #{name}<br>" }.join.html_safe }
    end
  end

  form do |f|
    f.inputs 'General' do
      f.input :name
      f.input :course, as: :select2, input_html: { class: 'selectable' }
      f.input :users,
                  as: :select2_multiple,
                  multiple: true,
                  collection: User.pluck(:name, :id),
                  input_html: { class: 'selectable' }
    end
    f.actions
  end

end
