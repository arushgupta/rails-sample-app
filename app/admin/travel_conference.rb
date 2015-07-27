ActiveAdmin.register TravelConference do

  menu :priority => 13
  before_filter :skip_sidebar!, :only => :index
  config.batch_actions = false
  permit_params :name, :short_name, :session, :year, :location, :host, :category_id, :is_active
  
  controller do
    def show
      @page_title = " Travel Conference"
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :short_name
    column :season
    column :year
    column :location
    column :category_id
    column :is_active
    actions
  end

  form do |f|
    f.inputs "Upcoming Conferences" do
      f.input :category, :collection => Category.all.map {|c| [c.name, c.id]},:include_blank => "select"
      f.input :name
      f.input :short_name 
      f.input :season
      f.input :year, :as => :select , :collection => (2010..2030),:include_blank => "none"
      f.input :start_date,:as => :string, :input_html => {:class => 'datepicker'}
      f.input :end_date,:as => :string, :input_html => {:class => 'datepicker'}
      f.input :location
      f.input :host
      f.input :is_active
    end
    f.actions
  end
end
