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
#   permitted << :other if resource.something?
#   permitted
# end
permit_params :name, :email, :password

form do |f|
    f.inputs 'User Details' do
      f.input :name
      f.input :email
      f.input :password
    end
    f.actions
  end


end
