ActiveAdmin.register Speaker do
permit_params :panel,:name,:description
before_filter :skip_sidebar!, :only => :index
config.batch_actions = false
controller do
    def show
      @page_title = "Speaker Details"
    end
  end
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
index do
selectable_column
    id_column
    column :name
    column :panel
    column :description
    actions
end
form do |f|
    f.inputs "Speaker Details",multipart: true do
      f.input :name
      f.input :panel
      f.input :description
    end
    f.actions
  end
end
