ActiveAdmin.register User do
  menu priority: 2

  index do
    column :email
    column :admin
    column :provider
    column :uid
    column :last_sign_in_at
    column :confirmed_at
  end

  permit_params :email, :admin, :confirmed_at

  remove_filter :encrypted_password, :reset_password_token, :remember_created_at, :uid,
                :confirmation_token, :created_at, :updated_at, :confirmation_token,
                :unconfirmed_email, :confirmation_sent_at, :confirmed_at, :current_sign_in_at,
                :reset_password_sent_at

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
