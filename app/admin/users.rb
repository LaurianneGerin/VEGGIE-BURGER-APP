ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :email

index do
  column :id
  column :email
  column :encrypted_password
  column :sign_in_count
  column :current_sign_in_at
  column :last_sign_in_at
  column :current_sign_in_ip
  column :last_sign_in_ip
  column :created_at
  column :updated_at
  column :admin
  actions
end

end
