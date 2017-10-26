ActiveAdmin.register User do
  menu priority: 2

  permit_params :email, :admin, :confirmed_at, :group_id
  %i[email admin confirmed_at provider].each { |filter_name| filter filter_name }
  filter :group_id, as: :select2, collection: Group.all

  index do
    selectable_column
    %i[email admin provider current_sign_in_at].each { |column_name| column column_name }
    column(:confirmed_at) { |user| user.confirmed_at.present? }
    column(:group) { |user| user.group&.name}
    column(:avatar) do |user|
      file = user.avatar
      file.blank? ? content_tag(:span, 'No avatar') : link_to(file.url) { image_tag(file.url, class: 'max-width-150') }
    end
    actions
  end

  batch_action :confirm do |ids|
    batch_action_collection.find(ids).each(&:confirm)
    redirect_to collection_path, notice: 'User has been accepted!'
  end

  batch_action :promote_to_admin do |ids|
    batch_action_collection.find(ids).each { |user| user.update(admin: true) }
    redirect_to collection_path, notice: 'Users have been promoted to admins!'
  end

  batch_action :unpromote_admin do |ids|
    batch_action_collection.find(ids).each { |user| user.update(admin: false) }
    redirect_to collection_path, notice: 'Users have been unpromoted from admins!'
  end
end
