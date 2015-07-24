ActiveAdmin.register Secretariat do

permit_params :position,:name,:major,:description,:image,:college, :is_active
decorate_with SecretariatDecorator
before_filter :skip_sidebar!, :only => :index
menu priority: 5
config.batch_actions = false

controller do
    def show
      @page_title = "Secretariat Details"
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :position
    column :college
    column :major
    column :description
    column :image
    column :is_active
    actions
  end

  form do |f|
    f.inputs "Secretariat Details", multipart: true do
      f.input :position
      f.input :name
      f.input :college, :collection => ["Earl Warren College", "Eleanor Roosevelt College", "John Muir College", "Revelle College", "Sixth College", "Thurgood Marshall College"]
      f.input :major
      f.input :description, :as => :ckeditor
      f.input :image, :as => :file, :image_preview => true, label: "image (size 500x500)" #, :hint => f.object.id? ? image_tag(f.object.image.url) : ""
      f.input :is_active
    end
    f.actions
  end
end