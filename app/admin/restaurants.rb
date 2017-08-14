ActiveAdmin.register Restaurant do
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


permit_params :name, :stars, :address, :city

index do
  selectable_column
  column :id
  column :created_at
  column :name
  column :address
  column :city
  actions
end

end